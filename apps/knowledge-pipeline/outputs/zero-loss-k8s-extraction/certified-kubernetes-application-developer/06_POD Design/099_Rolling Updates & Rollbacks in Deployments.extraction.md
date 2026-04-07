# Extraction: certified-kubernetes-application-developer / 06_POD Design / 099_Rolling Updates & Rollbacks in Deployments

---

## Entry 1
Type: Implementation Step  

Content:
In this lecture we will talk about updates and rollbacks in a deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 2
Type: Implementation Step  

Content:
Before we look at how we upgrade our application, let's try to understand rollouts and versioning in a deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 3
Type: Implementation Step  

Content:
When you first create a deployment it triggers a rollout.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 4
Type: Implementation Step  

Content:
A new rollout creates a new replica set, which is recorded as a new deployment revision in the future when the application is upgraded, meaning when the container version is updated to a new one, a new rollout is triggered and a new deployment revision is created, named revision two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 5
Type: Implementation Step  

Content:
This helps us keep track of the changes made to our deployment, and enables us to roll back to a previous version of deployment if necessary.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 6
Type: Implementation Step  

Content:
You can see the status of your rollout by running the command kube control rollout status, followed by the name of the deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 7
Type: Implementation Step  

Content:
To see the revisions and history of rollout, run the Kube control rollout history command followed by the deployment name, and this will show you the revisions and history of our deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 8
Type: Implementation Step  

Content:
There are two types of deployment strategies.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 9
Type: Exam Tip  

Content:
Say for example you have five replicas of your web application instance deployed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 10
Type: Implementation Step  

Content:
One way to upgrade these to a newer version is to destroy all of these, and then create newer versions of application instances.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 11
Type: Implementation Step  

Content:
Meaning first destroy the five running instances and then deploy five new instances of the new application version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 12
Type: Concept  

Content:
The problem with this, as you can imagine, is that during the period after the older versions are down and before any newer version is up, the application is down and inaccessible to users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 13
Type: Implementation Step  

Content:
This strategy is known as the recreate strategy, and thankfully this is not the default deployment strategy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 14
Type: Warning/Pitfall  

Content:
The second strategy is where we do not destroy all of them at once.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 15
Type: Concept  

Content:
Instead, we take down the older version and bring up a newer version one by one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 16
Type: Concept  

Content:
This way the application never goes down and the upgrade is seamless.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 17
Type: Warning/Pitfall  

Content:
Remember, if you do not specify a strategy while creating the deployment, it will assume it to be rolling.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 18
Type: Concept  

Content:
Update.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 19
Type: Implementation Step  

Content:
In other words, rolling update is the default deployment strategy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 20
Type: Concept  

Content:
So we talked about upgrades.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 21
Type: Implementation Step  

Content:
How exactly do you update your deployment?

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
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
When I say update it could be different things, such as updating your application version by updating the version of Docker containers used, updating their labels, or updating the number of replicas, etc. since we already have a deployment definition file, it is easy for us to modify this file once we make the necessary changes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 23
Type: Implementation Step  

Content:
We run the kube control apply command to apply the changes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 24
Type: Implementation Step  

Content:
A new rollout is triggered and a new revision of the deployment is created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
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
But there is another way to do the same thing.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 26
Type: Concept  

Content:
You could use the kube control set image command to update the image of your application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 27
Type: Implementation Step  

Content:
But remember, doing it this way will result in the deployment definition file having a different configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 28
Type: Concept  

Content:
So you must be careful when using the same definition file to make changes in the future.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 29
Type: Comparison  

Content:
The difference between the recreate and rolling update strategies can also be seen when you view the deployments in detail.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 30
Type: Concept  

Content:
From the cube control.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
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
Describe deployment command to see the detailed information regarding the deployments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 32
Type: Implementation Step  

Content:
You will notice when the recreate strategy was used.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 33
Type: Implementation Step  

Content:
The events indicate that the old replica set was scaled down to zero first, and then the new replica sets scaled up to five.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 34
Type: Concept  

Content:
However, when the rolling update strategy was used, the old replica set was scaled down one at a time, simultaneously scaling up the new replica set one at a time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 35
Type: Implementation Step  

Content:
Let's look at how a deployment performs an upgrade under the hood when a new deployment is created, say, to deploy five replicas, it first creates a replica set automatically, which in turn creates the number of pods required to meet the number of replicas.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 36
Type: Implementation Step  

Content:
When you upgrade your application, as we saw in the previous slide, the Kubernetes deployment object creates a new replica set under the hood and starts deploying the containers there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 37
Type: Concept  

Content:
At the same time taking down the pods in the old replica set following a rolling update strategy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 38
Type: Concept  

Content:
This can be seen when you try to list the replica sets using the Kube control get replica sets command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 39
Type: Concept  

Content:
Here we see the old replica set with zero pods and the new replica set with five parts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 40
Type: Concept  

Content:
Say for instance, once you upgrade your application, you realize something isn't very right.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 41
Type: Concept  

Content:
Something's wrong with the new version of build you used to upgrade.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 42
Type: Concept  

Content:
So you would like to roll back your update.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 43
Type: Implementation Step  

Content:
Kubernetes deployments allow you to roll back to a previous revision To undo a change.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 44
Type: Implementation Step  

Content:
Run the kube control rollout undo command followed by the name of the deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 45
Type: Implementation Step  

Content:
The deployment will then destroy the pods in the new replica set and bring the older ones up in the old replica set, and your application is back to its older format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 46
Type: Comparison  

Content:
When you compare the output of the cube control, get replica sets command before and after the rollback.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 47
Type: Comparison  

Content:
You will be able to notice this difference before the rollback.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 48
Type: Implementation Step  

Content:
The first replica set had zero pods and new replica set had five pods, and this is reversed after the rollback is finished.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 49
Type: Implementation Step  

Content:
To summarize the commands real quick, use the cube control create command to create the deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 50
Type: Implementation Step  

Content:
Get deployments command to list the deployments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 51
Type: Implementation Step  

Content:
Apply and set image commands to update the deployments and rollout status command to see the status of rollouts and rollout.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 52
Type: Implementation Step  

Content:
Undo command to roll back a deployment operation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 099_Rolling Updates & Rollbacks in Deployments
- File: 099_Rolling Updates & Rollbacks in Deployments.txt
- Topic: Rolling Updates & Rollbacks in Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
