# Extraction: certified-kubernetes-administrator-with-practice-tests / 07_Security / 178_Lab Solution - Security Contexts

---

## Entry 1
Type: Implementation Step  

Content:
Narrator: So for the first question is asking is what is the user use to execute the sleep process within the ubuntu-sleeper pod?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So if you ever wanna see, you know, what user you're logged into as on a Linux machine, you can run the command, whoamI?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So all we need to do is run that command inside the container, inside the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
So we'll do Kubectl get pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
We can see the Pod Ubuntu-Sleeper, so I'll do Kubectl exec ubuntu-sleeper and then we'll do the two dashes, and now we enter in the command we wanna run.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So we just do whoamI.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
And I forgot an E right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
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
And we could see that the user that's used to execute the sleep process is the root user, so we'll select root.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Implementation Step  

Content:
The next question is asking us to edit the pod Ubuntu-sleeper to run the sleep process with the user ID of 1010.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Implementation Step  

Content:
So to do this, I'm gonna first get the configuration of the current pod because it's saying only make the necessary changes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So I'll do Kubectl get pod ubuntu-sleeper and I'll do -o yaml and we'll pipe this out to a file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
And I realized I misspelled this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And now we'll open up that file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
And so to change the user, we're gonna look for a property called Security Context.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
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
Okay, so here we'll go under security context and we just have to add one line in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
And we just have to say runAsuser, and then we provide the idea of the user, which would be 1010.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So I will save the configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
Then I'm gonna do a Kubectl delete pod, so I'm gonna delete the current pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
I'll do a --force just so it deletes it a little bit quicker and then now we can apply the configuration that we just created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
And I'm gonna do a Kubectl get pod just to make sure that it's up and running and it's running, so let's go ahead and run the validation, and we can go to the next question.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
The next question is saying a pod definition file named Multi-pod.yaml is given.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 22
Type: Concept  

Content:
With what user are the processes in the web container started.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Exam Tip  

Content:
So this pod is created with multiple containers and security context defined at the pod and container level.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 24
Type: Concept  

Content:
Okay, so let's open up the multi-pod configuration and we wanna find what is the user for the process in the web container?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So if we take a look at the configuration, we can see that the security context was set to run as user 1001 and this is at the pod level.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
But within the container level, we could see, we overrid it for the web container and we've set it to be 1002.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So this is going to be more specific and it's gonna override the pod context.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Concept  

Content:
So the answer's gonna be 1002.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 29
Type: Implementation Step  

Content:
Next question is asking us with what user are the processes in the sidecar container started.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So in this case, we could see that there's no container level security context configuration, so it's going to default to the pod level security context, so that's gonna be 1001.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
The next question is asking us to update the ubuntu-sleeper Pod to run as Root user and with the SYS_TIME capability.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 32
Type: Implementation Step  

Content:
The next question is asking us to update the ubuntu-sleeper Pod to run as Root user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
We're gonna change it back to the Root user and add the SYS_TIME capabilities.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
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
So I'm gonna open up the ubuntu-sleeper configuration file and so first of all, we're going to remove the securitycontext config 'cause we want to run it as the Root user now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
So I'll just delete those two lines.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
Then we're gonna add the SYS_TIME capability.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
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
So we're gonna go under the container that we're interested in and I'm just gonna go, it doesn't really matter where, but I'll just go right here and we'll add a security context line.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
And then under here, we're gonna pass in a property called add.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
Oh, sorry, not add, capabilities.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Best Practice  

Content:
And then under here, we're gonna add, and this is going to take a list of different capabilities and so we're just gonna add the SYS_TIME and that should be everything we need.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So I'll save the configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
We'll then do a Kubectl delete pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
And then we'll do an apply.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
All right, so pod has now been created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 45
Type: Concept  

Content:
Let's go ahead and validate that and looks like everything's good to go.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Concept  

Content:
And the final question is asking us to update this pod to make use of the NET_ADMIN capability.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
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
So we could just go in, this is gonna be pretty simple and under the add, we just add in the extra capability that we want.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
So I'll say NET_ADMIN, and that's all we have to do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So we will delete this again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
And then we will apply it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
And we'll run the validation, and that's going to wrap up this assignment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 178_Lab Solution - Security Contexts
- File: 178_Lab Solution - Security Contexts.txt
- Topic: Lab Solution - Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
