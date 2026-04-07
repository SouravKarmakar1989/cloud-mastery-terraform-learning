# Extraction: certified-kubernetes-application-developer / 06_POD Design / 103_Deployment Strategy - Blue Green

---

## Entry 1
Type: Implementation Step  

Content:
-: We will now discuss about additional deployment strategies.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
Earlier, we had discussed about two deployment strategies.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
The recreate strategy is where a newer version is deployed by first destroying all of the existing versions, and then creating newer versions of application instances.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Now, the problem with this approach is that during the period after the older versions are down and before any newer version is up, the application is down and inaccessible to users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Warning/Pitfall  

Content:
The second is the rolling update strategy where we do not destroy all of them at once.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Instead, we take down the older version and bring up a newer version one by one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 7
Type: Concept  

Content:
This way the application never goes down and the upgrade is seamless.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
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
Now, rolling update is the default deployment strategy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
Now, there are a couple of other strategies as well, which are not really strategies that you can specify as an option in the deployment, but they can be implemented in a different way.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So let's look at those.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So they are blue-green and canary updates.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
Blue-green is a deployment strategy where we have the new version deployed alongside the old version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So the old version is called blue, and the new version is called green, and 100% of the traffic is still routed to the old version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So at this point in time, tests are run on the new version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
And once all tests are passed, we switch traffic to the new version all at once.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
So that's the blue-green deployment strategy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Now these strategies are best implemented with service measures like Istio.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So we discuss this in detail in our course on service mesh with Istio.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So check that out.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
For now, we will look at how to implement these strategies using just native Kubernetes primitives of deployments and services.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So here's how it works.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
First, we have the original version of our application deployed as a service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
We will call it the blue deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
Then we create a service to route traffic to it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
Now, to associate the service to the pods in the deployment, we set a label on the pods, let's call it version set to v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
We use the same label as selector on the service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
We then deploy a second deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Let's call it green with a new version of the application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
Once all tests are passed, we route traffic from the service to the green deployment by switching the label selector on the service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
So for the new deployment, we set a label version to v2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
So now that we have set the label version to v2 to the pods on the new deployment, all we need to do is switch the labels specified under the selector of the service to v2 as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
And then the service switches traffic to the pods in the green deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Exam Tip  

Content:
So let's see this with some code examples.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
So first we have a deployment called myapp with let's say five replicas of version v1 of our application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
And we have a service that exposes the application to the users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So currently all traffic to the service is directed to version v1 of our application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
For this, the service uses the labels set on the pod template which is version set to v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
With a blue-green strategy, our goal is to deploy the newer version first and then route traffic there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
So for that, we deploy the newer version, and then we call that green as a new separate deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So we will name it myapp-green, and notice the image name now has changed to a new version, version 2.0.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Also note that the label version is now said to v2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
So now we have the green version of the application ready.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
However, there is no traffic being routed to it yet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
We can perform all the tests that we want to make sure everything is working as expected.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
And once done, to switch traffic to the green version, we simply change the label on the service selector to v2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
And now all traffic will be routed to pods within the label version set to v2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
So that's how a blue-green deployment strategy is implemented on Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 103_Deployment Strategy - Blue Green
- File: 103_Deployment Strategy - Blue Green.txt
- Topic: Deployment Strategy - Blue Green
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
