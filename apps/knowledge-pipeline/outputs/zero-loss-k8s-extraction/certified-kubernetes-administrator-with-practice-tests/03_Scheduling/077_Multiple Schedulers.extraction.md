# Extraction: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers

---

## Entry 1
Type: Exam Tip  

Content:
In this lecture, we look at deploying multiple schedulers in a Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Architecture  

Content:
Now we have seen how the default scheduler works in Kubernetes in the previous lectures.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
It has an algorithm that distributes pods across nodes evenly, as well as takes into consideration various conditions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
We specify through taints and tolerations and node affinity, etc..

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
But what if none of these satisfies your needs?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Say you have a specific application that requires its components to be placed on nodes after performing some additional checks, so you decide to have your own scheduling algorithm to place pods on nodes so that you can add your own custom conditions and checks in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Kubernetes is highly extensible.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Exam Tip  

Content:
You can write your own Kubernetes Scheduler program, package it, and deploy it as the default scheduler, or as an additional scheduler in Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Architecture  

Content:
That way, all of the other applications can go through the default scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Exam Tip  

Content:
However, some specific applications that you may choose can use your own custom scheduler, so your Kubernetes cluster can have multiple schedulers at a time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Architecture  

Content:
When creating a pod or a deployment, you can instruct Kubernetes to have the pod scheduled by a specific scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So let's see how that's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Exam Tip  

Content:
Now, when there are multiple schedulers, they must have different names so that we can identify them as separate schedulers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Architecture  

Content:
So the default scheduler is named default scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Architecture  

Content:
And this name is configured in a kube scheduler configuration file that looks like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Warning/Pitfall  

Content:
Now the default scheduler doesn't really need one because if you don't specify a name it sets the name to default scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
But this is how it would look if you were to create one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Architecture  

Content:
And for the other schedulers, we could create a separate configuration file and set the scheduler name like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Architecture  

Content:
So let's start with the most simplest way of deploying an additional scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Architecture  

Content:
Now earlier we saw how to deploy the Kubernetes Kube scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Architecture  

Content:
We download the kube scheduler binary and run it as a service with a set of options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Architecture  

Content:
Now, to deploy an additional scheduler, you may use the same kube scheduler binary or use one that you might have built for yourself, which is what you would do if you needed the scheduler to work differently.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Architecture  

Content:
In this case, we're going to use the same binary to deploy the scheduler, and this time we point the configuration to the custom configuration file that we created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Architecture  

Content:
So each scheduler uses a separate configuration file, and with each file having its own scheduler name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
Note that there are other options to be passed in, such as the kubeconfig file to authenticate into the Kubernetes API, but I'm just skipping that for now just to keep it super simple.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Architecture  

Content:
This is not how you would deploy a custom scheduler 99% of the time today, because with kube ADM deployment, all the control plane components run as a pod or a deployment within the Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So let's look at another way.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Architecture  

Content:
So let's look at how it works if you were to deploy the scheduler as a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Architecture  

Content:
So we create a pod definition file and specify the Kubeconfig property, which is the path to the scheduler conf file that has the authentication information to connect to the Kubernetes API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Architecture  

Content:
We then pass in our custom kube scheduler configuration file as a config option to the scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Architecture  

Content:
Note that we have the scheduler name specified in the file, so that's how the name gets picked up by the scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Now another important option to look here is the leader elect option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Architecture  

Content:
And this goes into the scheduler configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Exam Tip  

Content:
The leader elect option is used when you have multiple copies of the scheduler running on different master nodes, as in a high availability setup where you have multiple master nodes with the scheduler process running on both of them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Exam Tip  

Content:
If multiple copies of the same scheduler are running on different nodes, only one can be active at a time, and that's where the leader elect option helps in choosing a leader who will lead the scheduling activities.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So we will discuss more about his setup in another section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Exam Tip  

Content:
In case you do have multiple masters, just remember that you can pass in this additional parameter to set a log object name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Architecture  

Content:
And this is to differentiate that the new custom scheduler from the default selection process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Architecture  

Content:
Now let's take a look at how to deploy the scheduler as a deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
And for this I'm going to go into the Kubernetes documentation pages.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Exam Tip  

Content:
And for the one for configuring multiple schedulers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Exam Tip  

Content:
And if you look here first of all it shows you how to if you were to build your own scheduler, how you could clone the Kubernetes repo and then make changes to the scheduler and build it and package it into a Docker image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Architecture  

Content:
And then here you can see the config file to create a scheduler as a deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
You can ignore all of this to begin with.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So this is what it is really.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
So here you have the deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
And this deployment is similar to the pod but it's just that it's a deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
The pot that we just looked at.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
But it's just that it's a deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Architecture  

Content:
So here you have the image which is the custom cube scheduler image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Architecture  

Content:
And this is the config file that we just talked about which has your custom scheduler config file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
Right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 53
Type: Architecture  

Content:
And the binary is the cube scheduler binary.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
Now for this to work there are some additional kind of prerequisites.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
So some of these are like the service account and the cluster role bindings.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
And these are basically for authentication right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
And we discussed about cluster role bindings and cluster roles and service accounts in uh the auth section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
So if you haven't gone through that yet just hold off on this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
You can basically ignore this for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
And the only other thing is how this file is passed into the deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 62
Type: Implementation Step  

Content:
So you can either create this file locally and then pass it in as a volume mount as it's done for the other pods usually.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
Or another thing you could do that's done here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
The approach that's used here is basically creating a config map.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Architecture  

Content:
So this is the kube cube scheduler configuration that we just talked about.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
Um, with the leader option set to false because I think the replicas is just one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Architecture  

Content:
And then you have the, uh, the scheduler name here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So this is the, uh, the config file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Implementation Step  

Content:
And then this config file is passed in as a volume here as a config file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Implementation Step  

Content:
So basically whatever is the contents in the uh, in that particular config map is then mapped to a volume mount to a volume here the specific location.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
And then from this location you have this YAML file which has which basically has this content.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
Right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 73
Type: Concept  

Content:
So this is how that maps.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
But again if you haven't gone through the volume and volume mount sections of this course, then just hold off on this for now and you'll understand that when we talk about these and then again liveness probes, readiness probes, resources and security context, all of these are sections that we talk about later.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
So again you can ignore these for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Architecture  

Content:
But what we need to understand here is just that this section on how this file is passed to this custom scheduler Are just proceeding with our lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Architecture  

Content:
So when you run the the get pods command in the kube system namespace, you can then see the new custom scheduler running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
So this is if you run it as a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
And if you run it as a deployment then you'll probably see a slightly different naming convention.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
But you'll be able to see the pod there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
Just make sure you're checking the right namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Architecture  

Content:
Now, once we have deployed that custom scheduler, the next step is to configure a pod or a deployment to use this scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Architecture  

Content:
So how do you use our custom scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
So here we have a pod definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Architecture  

Content:
And what we need to do is add a new field called scheduler name and specify the name of the scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
And that's basically it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 87
Type: Architecture  

Content:
This way when the pod is created, the right scheduler gets picked up and the scheduling process works.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Implementation Step  

Content:
Now create the pod using the kubectl create command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Architecture  

Content:
If the scheduler was not configured correctly, then the pod will continue to remain in a pending state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Implementation Step  

Content:
And if everything is good, then the pod will be in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Implementation Step  

Content:
So if the pod is in a the pending state, then you can look at the logs under the pod describe command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Architecture  

Content:
If you've got a describe command and you'll mostly notice that the scheduler isn't configured correctly.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Architecture  

Content:
Now how do you know which scheduler picked it up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Exam Tip  

Content:
So we have multiple schedulers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Architecture  

Content:
How do you know which scheduler picked up scheduling a particular pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
Now we can view this in the events using the kubectl get events command with the dash o wire option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
And this will list all the events in the current namespace and look for the scheduled events.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Architecture  

Content:
And as you can see, the source of the event is the custom scheduler that we created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Architecture  

Content:
That's the name that we gave to the custom scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
And the message says that successfully assigned the image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
So that indicates that it's working.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Troubleshooting  

Content:
You could also view the logs of the scheduler in case you run into issues.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Architecture  

Content:
So for that we have logs using the kubectl logs command and provide the scheduler pod name or the deployment name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Implementation Step  

Content:
And then the right namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Implementation Step  

Content:
Well that's it for this lecture and I'll see you in the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 077_Multiple Schedulers
- File: 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
