# Extraction: certified-kubernetes-application-developer / 03_Configuration / 061_Solution_ Security Contexts

---

## Entry 1
Type: Implementation Step  

Content:
Instructor: So for the first question it's asking is what is the user used to execute the sleep process within the ubuntu-sleeper pod?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So if you ever wanna see what user you're logged into as on a Linux machine, you can run the command whoami.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So all we need to do is run that command inside the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
So we'll do kubectl get pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
We can see the pod ubuntu-sleeper so I'll do kubectl exec ubuntu-sleeper, and then we'll do the two dashes and now we enter in the command we wanna run, so we just do whoami.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
And I forgot an E right here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
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
And we could see that the user that's used to execute the sleep process is the root user, so we'll select root.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 8
Type: Implementation Step  

Content:
The next question is asking us to edit the pod ubuntu-sleeper to run the sleep process with the user ID of 1010.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
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
So to do this, I'm gonna first get the configuration of the current pod because it's saying "Only make the necessary changes." So I'll do kubectl get pod ubuntu-sleeper and I'll do -o yaml and we'll pipe this out to a file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
And I realized I misspelled this, and now we'll open up that file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
And so to change the user, we're gonna look for a property called security context.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
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
Okay, so here we'll go under security context and we just have to add one line in and we just have to say run as user, and then we provide the idea of the user, which could be 1010.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
So we will save the configuration then I'm gonna do a kubectl delete pod, so I'm gonna delete the current pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
I'll do a --force just so it deletes it a little bit quicker.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
And then now we can apply the configuration that we just created, and I'm gonna do a kubectl get pod just to make sure that it's up and running and it's running.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
So let's go ahead and run the validation and we can go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
The next question is saying a pod definition file named multi-pod.yaml is given.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Concept  

Content:
With what user are the processes in the web container started?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Exam Tip  

Content:
So this pod is created with multiple containers and security context defined at the pod and container level.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
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
Okay, so let's open up the multi-pod configuration and we wanna find what is the user for the process in the web container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So if we take a look at the configuration, we can see that the security context was set to run as user 1001, and this is at the pod level, but within the container level, we could see we overrid it for the web container and we've set it to be 1002.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So this is going to be more specific and it's gonna override the pod context.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
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
So the answer's gonna be 1002.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
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
Next question is asking us with what user are the processes in the sidecar container started?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So in this case, we could see that there's no container level security context configuration so it's going to default to the pod level security context, so that's gonna be 1001.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
The next question is asking us to update the ubuntu-sleeper pod to run as root user and with the SYS_TIME capability.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 27
Type: Implementation Step  

Content:
The next question is asking us to update the ubuntu-sleeper pod to run as root users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
We're gonna change it back to the root user and add the SYS_TIME capabilities.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
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
So I'm gonna open up the ubuntu-sleeper configuration file, and so first of all, we're going to remove the security context config 'cause we want to run it as the root user now, so I'll just delete those two lines.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
Then we're gonna add the SYS_TIME capability.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 31
Type: Concept  

Content:
So we're gonna go under the container that we're interested in and I'm just gonna go...

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
It doesn't really matter where but I'll just go right here, and we'll add a security context line.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
And then under here, we're gonna pass in a property called add...

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
Oh, sorry, not add, capabilities.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 35
Type: Implementation Step  

Content:
And then under here, we're gonna add, and this is going to take a list of different capabilities, and so we're just gonna add the SYS_TIME.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Best Practice  

Content:
And that should be everything we need, so I'll save the configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
We'll then do a kubectl delete pod and then we'll do an apply.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
All right, so pod has now been created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
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
Let's go ahead and validate that and looks like everything's good to go.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
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
And the final question is asking us to update this pod to make use of the NET_ADMIN capability.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
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
So we could just go in, this is gonna be pretty simple, and under the add, we just add in the extra capability that we want.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
So I'll say NET_ADMIN and that's all we have to do.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
So we will delete this again and then we will apply it and we'll run the validation, and that's going to wrap up this assignment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 061_Solution_ Security Contexts
- File: 061_Solution_ Security Contexts.txt
- Topic: Solution_ Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
