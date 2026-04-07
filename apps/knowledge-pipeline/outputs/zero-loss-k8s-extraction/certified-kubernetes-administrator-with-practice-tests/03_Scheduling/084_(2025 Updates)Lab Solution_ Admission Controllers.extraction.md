# Extraction: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 084_(2025 Updates)Lab Solution_ Admission Controllers

---

## Entry 1
Type: Concept  

Content:
Instructor: In this video, I'm gonna walk you through these solutions for the admission controllers lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
And for the first question, it's asking what is not a function of admission controllers?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
And the correct answer is authenticate users.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
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
The admission controllers doesn't handle any of the authentication side of things.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
That actually takes place after the authentication.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
The next question is asking which admission controller is not enabled by default.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
And so the way we can get this information is by checking the enable-admission-plugins in the Kube-apiserver help options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So I do a kubectl get pods -: n kube-system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
You'll see that we have the kube-apiserver-controlplane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So I'm gonna do a kubectl exec -it, and I'm gonna grep this pod -: n kube-system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
Then I'm gonna run a specific command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Concept  

Content:
I'm gonna run the kube-apiserver, and I'm gonna pass in the -h flag.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And what I want to do is I want to grep for enable-admission-plugins.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
And the output we're looking for is right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Best Practice  

Content:
So it says admission plugins, that should be enabled, in addition to the default enabled ones.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
So this list right here is going to be the list of all of the default enabled plugins.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Concept  

Content:
And so we could see NamespaceLifecycle is enabled by default, so that's not the answer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
We'll take a look at MutatingAdmissionWebhooks.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
If it shows up on this list, that means it's enabled by default.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Warning/Pitfall  

Content:
So here's MutatingAdmissionWebhook, then we have ValidatingAdmissionWebhook, however, we don't see NamespaceAutoProvision in this list, so NamespaceAutoProvision is not enabled by default.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
The next question is asking which admission controller is enabled in this cluster which is normally disabled?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And so we have to go to the kube-apiserver.yaml.config, so this is going to be in /etc/kubernetes/manifests /kube-apiserver.yaml.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
And what we want to do is we can search for something by doing a forward slash, and then searching for enable-admission-plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And so you could see what is enabled that wasn't enabled by default, and that's gonna be NodeRestriction, so this is the plugin that was enabled, which isn't enabled by default.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Warning/Pitfall  

Content:
And if you don't want to go into vi, we can always just grep for this, so I can say grep enable-admission-plugins, and then passing the path to that specific file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
And so this is gonna show us all the plugins that are enabled.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 27
Type: Concept  

Content:
So NodeRestriction is the correct answer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
The next question is telling us to create an nginx pod in the blue namespace, and it points out that the blue namespace has not been created yet, and it explicitly tells us to not create the namespace beforehand.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Troubleshooting  

Content:
So let's copy this command, which is going to create that pod, and we can see that it throws an error, because the namespace blue was not found.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Warning/Pitfall  

Content:
Now the reason this ultimately failed and it threw that error was because Kubernetes has a NamespaceExists admission controller enabled, which rejects requests to namespaces that do not exist.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
So if you wanted it to automatically create a namespace for you, you could enable the NamespaceAutoProvision admission controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
And for this question, that's going to be the task at hand.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Concept  

Content:
We have to enable that specific admission controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Concept  

Content:
And so to do that, we want to go back into that same file, the /etc/kubernetes/manifests/kube-apiserver.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
And we want to go down to the same line we looked at, at one of the previous questions, which is the enable-admission-plugins, and we can see we just have NodeRestriction, so we're just gonna add the new one after this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
So we'll just add a comma, and then put in the name of the new admission controller that you want enabled, so that's gonna be NamespaceAutoProvision.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
Then we'll save that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Architecture  

Content:
And after we save that, the API server is going to restart.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 39
Type: Concept  

Content:
And we'll give this a couple minutes before we run the validation, 'cause it takes a little while for it to restart.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
All right, let's run the validation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
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
Okay, so now it's telling us to run that nginx pod in the blue namespace again and check to see if it succeeds.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Concept  

Content:
So I'm just gonna hit the Up arrow a couple times, we're gonna run the same command, and once again, keep in mind, right now the namespace blue does not exist.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Best Practice  

Content:
So when we run this, what should happen is it should now create a namespace called blue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
So if I do a kubectl get namespace, we can now see that the blue namespace was created seven seconds ago, and so that's because of that admission controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Warning/Pitfall  

Content:
And this next question is just pointing out that the NamespaceExists and the NamespaceAutoProvision admission controllers are deprecated and are now replaced by the NamespaceLifecycle admission controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
The next question is asking us to disable the DefaultStorageClass admission controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So once again, we're gonna go into the kube-apiserver.yaml manifests, so I'm gonna do: vi /etc/kubernetes/manifests/ kube-apiserver.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
And just like we had the enable-admission-plugin, we're going to add a disable-admission-plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
So I'm gonna go right below this line, and I'm gonna say disable-admission-plugins= and then we're gonna add DefaultStorageClass.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Architecture  

Content:
And, once again, after you make these changes, the API server is gonna have to restart, so give it a couple minutes, and then we'll run the validation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
And for the final question, it says that the kube-apiserver is running as a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
So you could check the process to see enabled and disabled plugins.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
So if we just copy this command, this is going to list out all of the enabled and disabled plugins with this command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
And that's going to wrap up the admission controller's lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 084_(2025 Updates)Lab Solution_ Admission Controllers
- File: 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
