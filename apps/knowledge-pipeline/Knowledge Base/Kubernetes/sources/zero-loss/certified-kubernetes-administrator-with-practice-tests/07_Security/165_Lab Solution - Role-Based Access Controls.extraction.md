# Extraction: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls

---

## Entry 1
Type: Concept  

Content:
Instructor: Okay, in this lab, we're going to look at role-based access controls.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
So the first question is, inspect the environment and identify authorization modes configured on the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Architecture  

Content:
So let's look at the kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
So etc kubernetes manifests kube api server.yaml.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Architecture  

Content:
And then, here we see the options passed to the kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
And if you look at the authorization mode, you have Node and RBAC.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
So we're gonna do a ps -aux grep for authorization mode.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So we know that, ultimately, all containers are running as processes on the control plane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Architecture  

Content:
So we look at the authorization mode configured on the kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
And if you look at the authorization mode, it's set to Node and RBAC.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
So it's Node and RBAC.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
Now, how many roles exist in the default namespace?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So we're going to do kube cuttle get roles.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
And in the default namespace, there are no roles.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
So we're gonna pass in the -A to get all namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And instead of counting, we're going to do no headers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
And then we'll do a word count to count the length and to count all the lines.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
And we get, and the answer to that is 12.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So let's select 12.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
Okay, now, what are the resources, the kube proxy role in the kube system namespace is given access to?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So here we have the kube proxy role.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So let's check that out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Concept  

Content:
So let's do a kube cuttle describe role kube proxy -: n kube system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
System.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
And we see that the resources that this kube proxy role has access to is then config map.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So config maps.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
And what actions can the kube proxy role perform on the config map?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
So the actions that it can perform for now is just get.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
Oops, I accidentally clicked that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 37
Type: Concept  

Content:
So which of the following statements are true?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Kube proxy role can get details of a config map object by the name kube proxy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So we know that, that's true, because kube proxy role can get the config map by the name kube proxy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
Kube proxy role can delete the config map.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
It cannot delete the config map, because it doesn't have the delete verb here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
And the kube proxy rule can only view and update the config map object by the name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
Obviously, this is incorrect, but still.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 44
Type: Concept  

Content:
So what we need to understand here is that the kube proxy role can only get a config map with the resource name kube proxy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So that's the correct answer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 46
Type: Concept  

Content:
Now, which account is the kube proxy role assigned to?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So for that, we need to look at role binding.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
So let's look at role bindings, role bindings in the kube system namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
And if you look at this, we see that, so the kube proxy role is part of the kube proxy role binding.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So let's look at the kube proxy role binding in a bit more detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
So you have kube cuttle describe role bindings kube proxy in the default, sorry, in the kube system namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
And here you can see the group that it has access to for the account that the kube proxy role is assigned to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
So that's system bootstrappers kube admin default node token, that's the group that it's assigned to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
So a user, dev user is created, the user's details have been added to a kube config file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
So let's look at the kube config file, let's do a kube cuttle config view.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
And we can see that there's a user named dev user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
And inspect the permissions granted to the user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Concept  

Content:
So check if the user can list pods in the default namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 59
Type: Concept  

Content:
So we can do a kube cuttle get pods, and we can use the ask dev user option to view as the dev user. (keyboard keys click) So as you can see, it's forbidden.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
The user, dev user cannot list resource pods in the API group in the default namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
So the dev user has permissions, does not have permissions, that's the correct answer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
Now, create the necessary roles and role bindings required for the dev user to create, list, and delete pods in the default namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Implementation Step  

Content:
So first, we have to create the role, and role bindings for the dev user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
So we're gonna do a kube cuttle create role.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
Let's take a look at the help.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
So we have create role and then the role name, and then the verbs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
So the verbs could be passed in, comma separated, and the resources that, that role has access to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So that's going to be, let us do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Implementation Step  

Content:
So it's kube cuttle create role, and verbs are going to be list, create and delete.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
And resources are going to be pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 71
Type: Concept  

Content:
And let's also give it a name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 72
Type: Concept  

Content:
The name is developer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 73
Type: Concept  

Content:
It's resource, I think.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 74
Type: Concept  

Content:
Yep.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 75
Type: Concept  

Content:
So let's describe the role.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 76
Type: Implementation Step  

Content:
We can see that the developer role is created with list, create and delete access to pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Implementation Step  

Content:
Now, we have to create a role binding and bind it to the, so let's do a kube cuttle create role binding help.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Implementation Step  

Content:
And we see we can do create a role binding, the name is gonna be dev user binding, then the cluster role or user, our end group.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
So what we wanna do is we wanna bind the dev user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
So this one and the role name, we're gonna use role.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Implementation Step  

Content:
So we're going to use kube cuttle create role binding, and dev user binding.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
And the role is going to be developer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
And the user is going to be dev user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Implementation Step  

Content:
Then let's check the role binding, dev user binding.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
We can see user, dev user is now associated to developer role.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 87
Type: Concept  

Content:
Now, the dev user is trying to get details about the dark blue app pod in the blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Troubleshooting  

Content:
But there is an issue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 89
Type: Troubleshooting  

Content:
So investigate and fix the issue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 90
Type: Concept  

Content:
So let's do that as the dev user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
As dev user, I'm going to get details about the pod dark blue app, but in the blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
Perfect, in the blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
So it says dark blue app is forbidden, user, dev user cannot get resource pods in the API group in the namespace blue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Implementation Step  

Content:
But it says that we have created the required roles in role binding.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
So let's take a look at that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
Let's take a look at the roles in the blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 97
Type: Implementation Step  

Content:
We can see that there's a developer role, and then there's also role bindings in the blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
So there's the dev user binding role.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
So let's take a closer look at those.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
Describe role developer in the blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Implementation Step  

Content:
And we see that it has resource pods and the resource names, blue app then can do a get, watch, create and delete.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
But here, as you can see, it's not blue, it's dark blue app.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 103
Type: Concept  

Content:
So that's basically the reason that you can't access that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 104
Type: Concept  

Content:
So we're going to edit the role developer in the blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 105
Type: Concept  

Content:
And what we're going to do is change this to dark blue app.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 106
Type: Concept  

Content:
Okay, now, let's do that again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
So we're gonna do a get pod dark blue app in the blue namespace as the user, dev user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
Okay, and we can see that it is now in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 109
Type: Troubleshooting  

Content:
So that's fixed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 110
Type: Implementation Step  

Content:
Now, we would like to grant the dev user permissions to create deployments in blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
So let's try that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 112
Type: Implementation Step  

Content:
As the dev user, I want to create a deployment called nginx, save with image nginx.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
This could be anything, this is just a test.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 114
Type: Implementation Step  

Content:
But in the blue namespace, when I try to do that, it says the user, dev user cannot create resource deployments in API group apps in the default, in the blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
So what we have to do is we're gonna edit the role of developer, which is used by the dev user in the blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Implementation Step  

Content:
And what we're gonna do is, so this is one rule that allows a get, watch, and create and delete on the dark blue app pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Implementation Step  

Content:
What we're going to do is we're gonna create a new rule.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 118
Type: Concept  

Content:
So we can just copy this and we're just gonna paste that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Implementation Step  

Content:
And what we'll do is set, the API groups for deployment is apps.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Concept  

Content:
So we're gonna put apps.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
We're not gonna give any resource names, because we want to be able to create any resource, any resource name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Implementation Step  

Content:
Here, we're going to say deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 123
Type: Implementation Step  

Content:
And we're gonna allow get, watch, create, and delete.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 124
Type: Concept  

Content:
Because after creating, we obviously wanna get, or watch it or even delete.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
So let's just give that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
Okay, so that's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 127
Type: Concept  

Content:
Let's verify that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 128
Type: Concept  

Content:
Role developer in the blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 129
Type: Implementation Step  

Content:
And we see that we have deployment.apps, and we're now able to get, watch, create and delete.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Implementation Step  

Content:
So let's try the command again to create a deployment called nginx in the blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 131
Type: Concept  

Content:
Okay, that's still not working.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 132
Type: Concept  

Content:
Let's see where that is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Best Practice  

Content:
So actually it should be deployments, sorry about that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
Let's go and change that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 135
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 136
Type: Concept  

Content:
And let's try that again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Concept  

Content:
Okay, and that works.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 138
Type: Troubleshooting  

Content:
Yep, so that should be the fix to this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
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
All right, so that's the end of this lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 165_Lab Solution - Role-Based Access Controls
- File: 165_Lab Solution - Role-Based Access Controls.txt
- Topic: Lab Solution - Role-Based Access Controls
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
