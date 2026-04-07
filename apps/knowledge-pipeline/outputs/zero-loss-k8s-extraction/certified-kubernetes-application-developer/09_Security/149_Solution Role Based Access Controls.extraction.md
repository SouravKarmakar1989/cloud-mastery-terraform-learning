# Extraction: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls

---

## Entry 1
Type: Concept  

Content:
Instructor: Okay, in this lab, we're going to look at role-based access controls.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Implementation Step  

Content:
So the first question is inspect the environment and identify authorization modes configured on the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Architecture  

Content:
So let's look at the kube API server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Architecture  

Content:
So cat etc Kubernetes manifests kube API server dot yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Architecture  

Content:
And then here we see the options passed to the kube API server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
And if you look at the authorization mode, you have node and RBAC.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Concept  

Content:
So that's one way of checking that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 8
Type: Concept  

Content:
The other way is to, we're gonna look at the processes on the control plane.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Concept  

Content:
So we're gonna do a PS dash aux grep or authorization mode.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So we know that ultimately all containers are running as processes on the control plane.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Architecture  

Content:
So we look at the authorization mode configured on the kube API server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Architecture  

Content:
So this is basically the kube API server service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Concept  

Content:
And if you look at the authorization mode, it's set to node and RBAC.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Architecture  

Content:
These are two ways of finding out the settings passed to the kube API server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Concept  

Content:
So it's node and RBAC.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
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
Now how many roles exist in the default namespace?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So we're going do a kubectl get roles.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
And in the default namespace, there are no roles.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Concept  

Content:
So let's select that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
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
How many roles exist in all namespaces?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Concept  

Content:
So we're gonna pass in the dash A to to get all namespaces.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And instead of counting, we're going to do no headers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 23
Type: Concept  

Content:
So that prints it without this header.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 24
Type: Implementation Step  

Content:
And then we'll do word count to count the length, to count all the lines, and we get, and the answer to that is 12.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So let's select 12.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 26
Type: Architecture  

Content:
Okay, now what are the resources, the kube-proxy role, in the kube-system namespace is given access to?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Architecture  

Content:
So here we have the kube-proxy role.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Let's, so let's check that out.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Architecture  

Content:
So let's do a kubectl describe, role, kube-proxy dash N kube-system.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
And system.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Architecture  

Content:
And we see that the resources that this kube-proxy role has access to is the config map.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So config maps.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Architecture  

Content:
And what actions can the kube-proxy role perform on the config map?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
So the actions that it can perform for now is just get.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 35
Type: Concept  

Content:
Oops, I accidentally clicked that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 36
Type: Concept  

Content:
So, which of the following statements are true?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Architecture  

Content:
Kube-proxy role can get details of the config map object by the name kube-proxy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Architecture  

Content:
So we know that that's true because kube-proxy role can get the config map by the name kube-proxy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Architecture  

Content:
Kube-proxy role can delete the config map.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
It cannot delete the config map because it's, it doesn't have the delete or here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Architecture  

Content:
And the kube-proxy rule can only view and update the config map object by the name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
Obviously, this is incorrect, but still.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 43
Type: Architecture  

Content:
So what we need to understand here is that the kube-proxy role can only get a config map with the resource name kube-proxy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So that's the correct answer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 45
Type: Architecture  

Content:
Now, which account is the kube-proxy role assigned to?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So for that, we need to look at role binding.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 47
Type: Concept  

Content:
So let's look at role bindings.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
Role bindings in the kube system namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Architecture  

Content:
And if you look at this, we see that, so the kube-proxy role is part of the kube-proxy role binding.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Architecture  

Content:
So let's look at the kube-proxy role binding in a bit more details.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Architecture  

Content:
So you have kubectl describe role findings, kube-proxy in the default, sorry, in the kube system namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Architecture  

Content:
And here you can see the group that it has access to for the account that the kube-proxy role is assigned to.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
So that's system bootstrapper's kube admin default node token.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
That's the group that it's assigned to.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
So a user, dev-user, is created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
The user's details have been added to the kube config file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So let's look at the kube config file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Let's do a kubectl config view.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
And we can see that there's a user named dev-user.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
And inspect the permissions granted to the user.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 61
Type: Concept  

Content:
So check if the user can list pods in the default namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 62
Type: Concept  

Content:
So we can do a kubectl get pods, and we can use the as dev user option to view as the dev user.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
So as you can see, it's forbidden.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
The user dev user cannot list resource pods in the API group in the default namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
So the dev user has permissions, does not have permissions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
That's the correct answer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 67
Type: Implementation Step  

Content:
Now create the necessary roles and role bindings required for the dev-user to create list and delete pods in the default namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Implementation Step  

Content:
So first we have to create the role and role bindings for the dev-user.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Implementation Step  

Content:
So we're gonna do a kubectl create role.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
So take a look at the help.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
So we have create role and then the role name and then the verbs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
So the verbs could be passed in comma separated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
And the resources that the role has access to.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
So that's going to be, so let's do that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
So it's kubectl create role, and verbs are going to be list, create, and delete.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
And resources are going to be pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 77
Type: Concept  

Content:
And let's also give it a name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 78
Type: Concept  

Content:
The name is developer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 79
Type: Concept  

Content:
It's resource, I think.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 80
Type: Concept  

Content:
Yep.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 81
Type: Concept  

Content:
So let's describe the role.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 82
Type: Implementation Step  

Content:
We can see that the developer role is created with list, create, and delete access to pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
Now we have to create a role binding and bind it to the.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Implementation Step  

Content:
So let's do kubectl create role binding help.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Implementation Step  

Content:
And we see we can do a, create a role binding.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Implementation Step  

Content:
The name is gonna be dev-user binding, then the cluster role or user or end group.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
So what we wanna do is we wanna bind the dev-user.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
So this is what, and the role name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
We're gonna use the role.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Implementation Step  

Content:
So we're going to use kubectl create role binding, and dev-user binding.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
And the role is going to be developer, and the user is going to be dev-user.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
Okay, let's check the role binding.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
Dev-user binding.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
We can see user dev-user is now associated to developer role.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 96
Type: Concept  

Content:
Now the dev-user is trying to get details about the dark blue app pod in the blue namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Troubleshooting  

Content:
But there is an issue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 98
Type: Troubleshooting  

Content:
So investigate and fix the issue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 99
Type: Concept  

Content:
So let's do that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 100
Type: Concept  

Content:
As the dev-user.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
As dev-user, I'm going to get details about the pod dark blue app, but in the blue namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
All right, in the blue namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
So it says dark blue app is forbidden.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
User dev-user cannot get resource pods in the API group in the namespace blue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Implementation Step  

Content:
But it says that we have created the required roles in role bindings.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
So let's take a look at that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 107
Type: Concept  

Content:
Let's take a look at the roles in the blue namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 108
Type: Implementation Step  

Content:
We can see that there's a developer role, and then there's also role bindings in the blue name space.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
So there's the dev-user binding role.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
So let's take a closer look at those.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 111
Type: Concept  

Content:
So describe role developer in the blue namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Implementation Step  

Content:
And we see that it has resource pods, and the resource name is blue-app, they can do a get, watch, create, and delete.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
But here, as you can see, it's not blue, it's dark blue app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 114
Type: Concept  

Content:
So that's basically the reason that you can't access that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 115
Type: Concept  

Content:
So we're going to edit the role developer in the blue namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 116
Type: Concept  

Content:
And what we're going to do is change this to dark blue app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 117
Type: Concept  

Content:
Okay, now let's do that again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
So we're gonna do a get pod dark blue app in the blue name space as the user dev-user.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
Okay, and we can see that it is now in a running state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 120
Type: Troubleshooting  

Content:
So that's fixed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 121
Type: Implementation Step  

Content:
Now we would like to grant the dev-user permissions to create deployments in the blue namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Concept  

Content:
So let's try that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 123
Type: Implementation Step  

Content:
As the dev-user, I want to create a deployment called nginx, save with image nginx.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Concept  

Content:
This could be anything, this is just a test.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 125
Type: Concept  

Content:
But in the blue namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Implementation Step  

Content:
When I try to do that, it says the user dev-user cannot create resource deployments in API group apps in the default, in the blue namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Concept  

Content:
So what we have to do is we are going to edit the role of developer, which is used by the dev-user in the blue namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Implementation Step  

Content:
And what we're going to do is, so this is one rule that allows a get, watch, and create, and delete on the dark blue app pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Implementation Step  

Content:
What we're going to do is we're gonna create a new rule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 130
Type: Concept  

Content:
So we can just copy this, and we're just gonna paste that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Implementation Step  

Content:
And what we'll do is, it said the API groups for deployment is apps.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Concept  

Content:
So we're gonna put apps.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 133
Type: Implementation Step  

Content:
We're not gonna give any resource names because we want to be able to create any resource, any resource name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Implementation Step  

Content:
Here, we're going to say deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 135
Type: Implementation Step  

Content:
And we're gonna allow get, watch, create, and delete.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 136
Type: Concept  

Content:
Because after creating, we obviously wanna get, or watch it or even delete.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 137
Type: Concept  

Content:
So let's just give that, okay, so that's done.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
Let's verify that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 139
Type: Concept  

Content:
Role developer in the blue namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 140
Type: Implementation Step  

Content:
And we see that we have deployment dot apps, and we're now able to get, watch, create, and delete.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Implementation Step  

Content:
So let's try the command again to create a deployment called nginX in the blue namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 142
Type: Concept  

Content:
Okay, that's still not working.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 143
Type: Concept  

Content:
Let's see why that is though.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Best Practice  

Content:
So actually, it should be deployments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
Sorry about that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 146
Type: Concept  

Content:
Let's go and change that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 147
Type: Concept  

Content:
Okay, and let's try that again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Concept  

Content:
Okay, and that works.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 149
Type: Troubleshooting  

Content:
Yep, so that should be the fix to this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 150
Type: Concept  

Content:
All right, so that's the end of this lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 149_Solution Role Based Access Controls
- File: 149_Solution Role Based Access Controls.txt
- Topic: Solution Role Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
