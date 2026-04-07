# Extraction: certified-kubernetes-administrator-with-practice-tests / 07_Security / 174_Lab Solution - Image Security

---

## Entry 1
Type: Concept  

Content:
Narrator: Okay, we will now walk through the lab on security, image security.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So, the first question is, "What secret type must we choose for Docker registry?" So, if you look at the different types of secrets that we can create. you see that we have Docker registry, generic NGLs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So, Docker registry is the one that we're gonna use for Docker registry.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Now, we have an application running on our cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
Let us explore it first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So, let's do it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
Oh, the deploy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
And we see that we have a web- An application by the name web.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
And what image is the application using?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So, let's take a look at in full set areas.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
Okay, now let's take a look at the deployment web, and we see that it's using the engine X alpine image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So, let's select that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
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
Now, we decided to use a modified version of the application from an internal private registry.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
So, update the image of the deployment to use a new image from my privateregistry.com/5,000.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Warning/Pitfall  

Content:
So, we have a private registry, and we know that if you do not specify a registry before the image name it's going to the default- It's gonna pull it from the default location on Docker hub.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
So, what we want to do is we want to edit the deployment, and we want it to pull the image from the private registry.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So, I'm just going to copy this, and paste it here, and also add a slash.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So, let's save that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Okay, so that's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 20
Type: Concept  

Content:
Let's check it out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 21
Type: Concept  

Content:
We see that the image aim has been updated.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Warning/Pitfall  

Content:
And don't worry about the status for now, because we're gonna fix that in a bit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So, let's see if- Let's see if the pods are running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
So, if you look at it, the pod, this is the new pod that was created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
So, the rolling update kicked in, and the deployment created a new pod with the new image, but it left the existing ones as is because only if the new pod was successful, and was in a ready state, it would kill the old pod, and then would create the new pod, because it's following a rolling update strategy, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So- but in this case, it's not even- the new pod is not running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
It's in an image pulled back off state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So, let's check that out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So, it says 'fail to pull image,' a malformed response.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So, that's basically because it doesn't have the permissions to pull image from that repository.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So, the answer to this question is No.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
Now, create a secret object with the credentials required to access the registry.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
So let's create a secret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Implementation Step  

Content:
You cuddle, create secret, and this has to be Docker registry.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
So, let's take a look at the help, and we see that here's a sample command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So, let's run this command along with the rest of it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
Okay, so, let's go and edit this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
So we have- (pause in speaking) Okay, so we have the name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
I'm going to use the name as- Private Rights Spread, Docker server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Command  

Command:
```bash
Docker server as this, and the Docker username, user.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
And the password is password.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
And the email is this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
Yes, I'm gonna remove the hash.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
So, that's been created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 46
Type: Implementation Step  

Content:
Now configure the deployment to use credentials from the new secret to pull images from the private registry.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
What we have to do is we have to configure the the deployment, or the pod to use this image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
So, let's first look at the credential's documentation page, and let's look at image pool- or image pool secret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Best Practice  

Content:
That's what it's called. 'pull an image from a private registry.' And we should have- Yes, so, this is what we need to do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So, under the spec for the pod, we must add the image pool secrets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
So, let us copy that, and let's edit the deployment called web.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
That's going to the pod template, right here, and we're going to add image pool secrets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
Let's align it, and let's give the secret name, which happens to be Private Rights Spread?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
I'm going to save that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
Let's check the status of the deployment, and we see that there are no changes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So, it looks like that worked.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
It's pretty much check.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Yes, so that's successful.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Now, we're gonna check the status of the pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
So, as you see, it's terminating the old pods, and the new pods are created, and that has the new images.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Okay, so that's the end of that lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 174_Lab Solution - Image Security
- File: 174_Lab Solution - Image Security.txt
- Topic: Lab Solution - Image Security
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
