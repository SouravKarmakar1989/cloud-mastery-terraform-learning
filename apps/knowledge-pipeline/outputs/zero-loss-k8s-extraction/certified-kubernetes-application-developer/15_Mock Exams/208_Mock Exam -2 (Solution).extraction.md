# Extraction: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution)

---

## Entry 1
Type: Exam Tip  

Content:
Instructor: In this video, I'm gonna walk you through the solutions for the mock exam two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
For the first question, we have to create a deployment called MyDashWebApp with an image of NGINX, a label of Tier Frontend, and a replicas of two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
So we're gonna do a kubectl, create deployment, and it's gonna be called mywebapp, then the image is going to be nginx, and we wanna set the replicas to two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
I'm gonna do a --dry-run=client and I'm gonna do -o yaml so we can pipe it to a file, and I'll just call this mydashwebapp.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
And then if you wanna take a look at it, we can open this up and just take a look at the configs that generates.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Best Practice  

Content:
We shouldn't have to change anything here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
And I'm gonna do a kubectl apply -f and so that's going to create a deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
You can just verify that by doing a kubectl get deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
Now the next thing that we have to do is we have to expose the deployment as a node port service with the name of frontend-service with a port of 80 and a node port of 30083.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
So let's run the imperative command kubectl expose deployment and then we'll pass in the name of the deployment, which is mydashwebapp.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
And then the name of the service is gonna be called frontend-service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
And the type is going to be of type node port.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
The port is gonna be port 80.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
I'm gonna do a --dry-run=client -o yaml, and then we'll pipe this out to frontend-service, and I'm gonna open up this file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
We're gonna have to make one change, we have to add the node port here, and that's gonna be 30083.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
And then I can do a kubectl apply.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
And let's just quickly verify that it got created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
So I'll do a kubectl get svc, and we can see our new service created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
For the next question, we have to add a taint to the node, node one of the cluster using the following specs, and then after that we have to create a pod called alpha with an image of Redis and with a toleration to node one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
So let's add the label first.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
That's gonna be kubectl taint, and then node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And it's gonna be node one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
And if you want to, we can just quickly do a kubectl get nodes just to take a look at them.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
So we've got node01 here. we'll do kubectl taint node node01, and then it's gonna be app_type=alpha, effect is gonna be NoSchedule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Best Practice  

Content:
And so now if I do a kubectl describe node node1, and we go under taints near the top, we should see the new taint that we just created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
So now that we've completed that, let's move on and create the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Best Practice  

Content:
So I'll do a kubectl run, and then the pod should be called alpha, image is going to be redis.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
And then once again, I'll pipe this out to a file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
And so in the pod spec we have to add a toleration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So I'm gonna go under spec add toleration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
The effect is going to be the same NoSchedule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
The key that's gonna be app_type, and the value is going to be alpha.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
And now we can just do a kubectl apply -f alpha.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
And now we wanna just quickly verify that the pod was in fact deployed to node1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
We can do kubectl get pod -o wide, and if we take a look at the alpha pod, it was successfully deployed on node1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
For the next question, we have to add a label app_type=beta to the node called controlplane.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Best Practice  

Content:
So if I do a kubectl get node, we should see that we have a node called controlplane, and we want to add a new label to that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
So I'll do kubectl label node controlplane and then we'll add the label, which is gonna be app_type=beta.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
And now if you do a kubectl get node, and then we'll call specifically controlplane.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
We do a --show-labels to see all the labels.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
And under the labels column, we can see that the new label that we created is there now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
Now for the next step, we have to create a new deployment with the following specs of a name of beta-apps, with an image of an NGINX and then a replicas of three, and then configure the node affinity.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
So I'll do kubectl create deploy beta-apps -: -image=nginx --replicas is equal to three.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
And let's open up that file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
And so we're gonna have to add the node affinity configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Exam Tip  

Content:
So if you go to the Kubernetes documentation, under this section here, node affinity, this is gonna give you an example of how to configure a node affinity.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Troubleshooting  

Content:
So I'm gonna just copy this, and under spec, let's add that in there, and let me fix the spacings.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
And the only thing that we have to change is the key and the values.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So I'm gonna change the key, and this is going to be app_type.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
We're gonna leave the operator as in.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
And then the values, I'm just gonna, you can pass in a list, and this is just going to be beta.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
We'll save that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
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
And then now I can do a kubectl apply -f beta-apps.yaml, and if I do a kubectl get pods -: o wide, and we can see that all of the beta-apps pods are gonna be deployed on the controlplane node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
In the next question, we have to create a new ingress resource for the MyVideo service, so that it's available at the following URL.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Best Practice  

Content:
And we did the configuration the host should be set to this, and then the specific path is gonna be a /video.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
So first let's do a kubectl get service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
And so if we take a look at the MyVideo service, we could see it's running on port 8080, and that's something to, that we'll need to know when we create our ingress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
And then let's create our ingress imperatively, and then we'll create, we'll save it to our configuration file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
So I'll do a kubectl create ingress ingress, and then we'll have to provide --rule flag.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
And so here this is going to be the host that we specified here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Warning/Pitfall  

Content:
So I'm gonna copy this, and I'm gonna delete the host part here, I don't need that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So I just need the URL, and after it's gonna be for the /video path.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
And what I'm gonna do is I'm gonna say anything that goes to /video, I wanna send it to MyVideo service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
And this is gonna be listening on port 8080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
And if we take a look at the configurations, you can see we've got the host set as requested.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
And then for anything that goes to the /video path, we wanna send it to a service called MyVideo service that's listening on port 8080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
And so that's all we need.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Implementation Step  

Content:
I can just do kubectl apply now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Implementation Step  

Content:
If I do a kubectl get ingress, we can see the new ingress that was created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Implementation Step  

Content:
The next question, a new pod has been created called pod-with-rprobe, and what we have to do is we have to update it with a readiness probe configuration provided below.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
So what I'm gonna do is kubectl get pod, and I'm gonna do a kubectl get pod pod-with-rprobe -: o yaml, so we can take a look at the configuration and modify it, and I'll just call this pod.yaml, and we'll open up pod.yaml, and we want to go under the container and add the configuration wherever we like.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
So I'm just gonna add it right above ports.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
And so here to add a readiness probe, I'll just do readiness probe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
And this is asking for an http get.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
So we'll do http get, and there's gonna be two configurations here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Implementation Step  

Content:
So the first one is path, and this is gonna be a path to /ready.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
And this is gonna be a port of 8080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
And now what we can do, is we can do a kubectl replace -f pod.yaml --force.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
For the next question, we have to create a new pod called nginx141 in the default name phase with an image of NGINX.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Troubleshooting  

Content:
And we have to add a liveness probe to the container to restart if the command ls/bar/www/atm/probe fails.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Best Practice  

Content:
And this check should start after a delay of 10 seconds and run every 60 seconds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
And so what we're gonna do is we're gonna create a new file, and I'm just gonna call this nginx1401.yaml It's gonna be a standard pod configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
So we'll start off with the API version v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
The kind is gonna be pod and the metadata.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
We're gonna set the name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
We're gonna set the name to be nginx1401, and the name space to be default.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
The spec will add the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
The image will be an nginx image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Implementation Step  

Content:
And then here we have to specify the liveness probe, and we're gonna do an exec, and the command we wanna run.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Implementation Step  

Content:
And then now we'll set the initial delay to 10 seconds, and the period seconds to be 60.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Best Practice  

Content:
So this is gonna run every 60 seconds, and I made a mistake this should be moved back so it lines up with exec.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
We'll try that again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Implementation Step  

Content:
And now the pod's successfully created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Implementation Step  

Content:
For the next question, we have to create a job called Whalesay, which is going to use the following image, with the following command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
And it's gonna have the following requirements, of a completion of 10, and a backoffLimit of six, and a restartPolicy of Never.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Implementation Step  

Content:
So let's create the configurations for our job, so I'm gonna run a kubectl create job -: -image=docker/whalesay, the name of the job's gonna be whalesay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Implementation Step  

Content:
And then we're gonna do --dry-run=client -o yaml, and we'll save this in a file called whalesay.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Implementation Step  

Content:
And then I'm gonna open this up.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
And if you take a look at the configuration there's gonna be a couple things that we have to change.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Implementation Step  

Content:
So under spec, the first thing that we wanna do, is we wanna define the completions and the backoffLimit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Implementation Step  

Content:
So I'll say completions, there's gonna be 10, and then the backoffLimit is gonna be six.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Implementation Step  

Content:
And then for the container, we have to change the command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Best Practice  

Content:
So I'll say command, I'm gonna do sh -c, and then I'll copy in, copy in that, and that should be all that we have to change.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Implementation Step  

Content:
So now I can do a kubectl apply -f whalesay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
If I do a kubectl get jobs, you can see right now we have a zero out of 10 completed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
And we'll let this run for a bit until we get all 10 completed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
All right, and so that's completed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Implementation Step  

Content:
So we'll go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Exam Tip  

Content:
For the next question, we have to create a pod called Multipod that's going to have two containers with the following configurations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Implementation Step  

Content:
The first one is going to be called Jupiter with an image of NGINX.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
And the second one is what you called Europa with an image of Busybox, and a command of sleep 4,800.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
And each one is going to have a different environment variable.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
So this is gonna be pretty straightforward.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Implementation Step  

Content:
Let's just create a new file for our pods spec.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Exam Tip  

Content:
So I'll just call this multipod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Implementation Step  

Content:
And this is gonna have the usual API version V1, kind is gonna be a pod, and then metadata name, which is going to be multi-pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Implementation Step  

Content:
And then let's provide the spec.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
And there's gonna have a two containers now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Implementation Step  

Content:
So let's start with the first one, which is gonna have a name of Jupiter, and an image of NGINX.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Concept  

Content:
The second one is going to have a name of Europa, with an image of Busybox, with the command of /bin/sh.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Concept  

Content:
And now let's define the environment variable.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Implementation Step  

Content:
So for the first one, the type is gonna be a value and planet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Concept  

Content:
And for the second container, the name is once again gonna be type, and the value is going to be Moon.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Exam Tip  

Content:
And then we'll do a kubectl apply multipod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Implementation Step  

Content:
And let's move on to the next question now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Implementation Step  

Content:
And for the final question, we have to create a persistent volume called custom volume, with the size of 50 Mebibytes, a reclaim policy of retain, AccessMode to ReadWriteMany, and a host path of /op/data.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Exam Tip  

Content:
So if you want to, you can pull up the Kubernetes documentations for a volume, and you could just grab one of the examples, and then you use that as a base.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Implementation Step  

Content:
So I'm just gonna create a new file, and we'll call this pv.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
I'm gonna paste this in here, and we'll just change all of the necessary fields.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
So the name is going to be called custom-volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
The storage, this is gonna be 50 Mi, and we wanna change the AccessMode to ReadWriteMany.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Concept  

Content:
We won't need the volume mode, the persistent volume claim is set to retain accordingly.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Implementation Step  

Content:
And then finally, we have to set the post path.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
So this is going to be path/opt/data.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Implementation Step  

Content:
And now we can just do a kubectl apply -f pv.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Concept  

Content:
And that's going to be the final question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Concept  

Content:
So now we can just run the validation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Exam Tip  

Content:
And so that's going to wrap up mock exam two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 208_Mock Exam -2 (Solution)
- File: 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
