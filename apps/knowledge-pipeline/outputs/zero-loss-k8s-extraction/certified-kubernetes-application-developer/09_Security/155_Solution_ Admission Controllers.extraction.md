# Extraction: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers

---

## Entry 1
Type: Concept  

Content:
-: In this video, I'm gonna walk you through the solutions for the admission controllers lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
And for the first question it's asking, what is not a function of admission controllers?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
And the correct answer is authenticate users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Implementation Step  

Content:
The admission controllers doesn't handle any of the authentication side of things, that actually takes place after the authentication.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
The next question is asking which admission controller is not enabled by default?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Architecture  

Content:
And so the way we can get this information is by checking the enable admission plugins in the kubeapi server help options.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So I do a kubectl get pods -: ncube-system.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Architecture  

Content:
You'll see that we have the kubeapi server control plane.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
So I'm gonna do a kubectl exec-it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
And I'm gonna grab this pod -: n kube system.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
Then I'm gonna run a specific command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Implementation Step  

Content:
I'm gonna run the kube-apiserver and then we're passing the -h flag.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And what I wanna do is I wanna grep for enable admission plugins and the output we're looking for is right here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Best Practice  

Content:
So it says admission plugins that should be enabled in addition to the default enabled ones.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So this list right here is going to be the list of all of the default enabled plugins.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Concept  

Content:
And so we could see namespace lifecycle is enabled by default.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So that's not the answer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
We'll take a look at mutating admission webhooks.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
If it shows up on this list that means it's enabled by default.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
So here's mutating admission webhook then we have validating admission webhook.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Warning/Pitfall  

Content:
However, we don't see NamespaceAutoProvision in this list.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So NamespaceAutoProvision is not enabled by default.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
The next question is asking which admission controller is enabled in this cluster, which is normally disabled.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And so we have to go to the kube-apiserver.yaml config.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So this is going to be in /etc/kubernetes/manifests/kube-apiserver.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
And what we wanna do is we can search for something by doing a forward slash and then searching for enable-admission-plugin.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
And so you could see what is enabled that wasn't enabled by default, and that's gonna be node restrictions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So this is the plugin that was enabled which isn't enabled by default.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Warning/Pitfall  

Content:
And if you don't wanna go into vi we can always just grep for this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
So I can say grep enable-admission-plugins and then pass the path to that specific file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
And so this is gonna show us all the plugins that are enabled.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 32
Type: Concept  

Content:
So node restriction is the correct answer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
The next question is telling us to create an engine X pod in the blue namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
And it points out that the blue namespace has not been created yet and it explicitly tells us to not create the namespace beforehand.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
So let's copy this command which is going to create that pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Troubleshooting  

Content:
And we can see that it throws an error because the namespace blue was not found.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Warning/Pitfall  

Content:
Now the reason this ultimately failed and it threw that error was because Kubernetes has a NamespaceExist admission controller enabled which rejects requests and namespaces that do not exist.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
So if you wanted it to automatically create a namespace for you, you could enable the namespace auto provision admission controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
And for this question, that's going to be the task at hand.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Concept  

Content:
We have to enable that specific admission controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 41
Type: Concept  

Content:
And so to do that, we wanna go back into that same file the /etc/kubernetes/manifests/kube-apiserver.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
And we wanna go down to the same line we looked at at one of the previous questions which is the enable admission plugins and we could see we just have node restrictions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So we're just gonna add the new one after this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
So we'll just add a comma and then put in the name of the new admission controller that you want enabled.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So that's gonna be NamespaceAutoProvision.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
Then we'll save that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 47
Type: Architecture  

Content:
And after we save that, the API server is going to restart.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Concept  

Content:
And we'll give this a couple minutes before we run the validation because it takes a little while for it to restart.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
All right, let's run the validation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
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
Okay, so now it's telling us to run that nginx pod in the blue namespace again and check to see if it succeeds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 51
Type: Concept  

Content:
So I'm just gonna hit the up arrow a couple times.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
We're gonna run the same command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
And once again, keep in mind, right now the namespace, blue, does not exist.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Best Practice  

Content:
So when we run this, what should happen is, it should now create a namespace called blue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
So if I do a kubectl get namespace, we can now see that the blue namespace was created seven seconds ago.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
And so that's because of that admission controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Warning/Pitfall  

Content:
And this next question is just pointing out that the namespace exists in the namespace auto provision and mission controllers are deprecated and are now replaced by the namespace lifecycle admission controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
The next question is asking us to disable the default storage class admission controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Architecture  

Content:
So once again, we're gonna go into the kubeapi server yaml manifest.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So I'm gonna do vi/etc/kubernetes/manifests/kube-apiserver.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
And just like we had the enable admission plugin we're going to add a disable admission plugin.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
So I'm gonna go right below this line and I'm gonna say disable-admission-plugins equals and then we're gonna add DefaultStorageClass.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Architecture  

Content:
And once again, after you make these changes, the API server is gonna have to restart.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
So give it a couple minutes and then we'll run the validation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Architecture  

Content:
And for the final question, it says that the kubeapi server is running as a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
So you could check the process to see enabled and disabled plug-ins.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
So if we just copy this command this is going to list out all of the enabled and disabled plug-ins with this command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
And that's going to wrap up the admission controllers lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 155_Solution_ Admission Controllers
- File: 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
