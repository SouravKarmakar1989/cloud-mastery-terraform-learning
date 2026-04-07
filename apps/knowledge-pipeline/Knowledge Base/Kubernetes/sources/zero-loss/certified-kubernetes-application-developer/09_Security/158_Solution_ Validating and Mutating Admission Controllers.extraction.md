# Extraction: certified-kubernetes-application-developer / 09_Security / 158_Solution_ Validating and Mutating Admission Controllers

---

## Entry 1
Type: Concept  

Content:
-: In this video, I'm gonna walk you through the validating and mutating admission controllers lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
For the first question is asking, "Which one of the below combinations is correct for mutating and validating admissions controllers?" So for the first one, it says that a namespace auto-provision admission controller is mutating.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
And when you think about it since it's automatically, you know, creating a namespace and changing something mid, right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
That would be correct.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
And then the namespace exists.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Well that's gonna be validation 'cause it's validating to see if a namespace exists.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Implementation Step  

Content:
So, the first one actually ends up being the correct answer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
If you take a look at the other ones, Namespace auto-provision validating, the auto-provision is not validating, it's actually just making a change for you.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
Namespace exists is the validation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
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
So, it's gonna be the first one. "What is the flow of invocation of the admission controllers?" Well, the way it goes is first it mutates, and then it validates.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
So, it's going to be the first answer here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
Next question is asking us to create a namespace called Webhook-demo.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
So that's just gonna be kubectl create ns webhook-demo.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
And if I do a kubectl get ns we can see our newly created namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
The next question is asking us to create a TLS Secret called webhook-server-tls for a secure webhook communication in the webhook-demo namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
And it's already created a certificate and a key.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
And these are gonna be the respective paths for both of those.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
And so to create a TLS Secret, we can do kubectl.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
And we'll do -n to provide the namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
That's gonna be the new webhook-demo.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
And then we're gonna create a secret tls and then this will be webhook-server-tls.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
And then I'm gonna go down to the next line to keep everything pretty --cert.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
And then now we provide the path to the cert.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
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
So, this is gonna be this path right here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
And then we're gonna provide the path to the key which is gonna be this path here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
And then we can hit enter and then it was successfully created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
I'll then run the validation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Implementation Step  

Content:
For the next question, It's asking us to create a webhook deployment and they've already provided us a sample deployment definition.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
And so if you wanna take a look at that, we can just do catwebhookdeployment.yaml So, we're gonna just deploy this until all we have to do is do a kubectl apply -: f and then we'll just call webhook deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
So, that's been deployed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
And then for the webhook, we also need to create a service so that it can communicate, and we've already been provided a service configuration that's gonna be in webhook-service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
You can take a look at that if you want.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Implementation Step  

Content:
I'm gonna do a kubectl apply-f webhook-service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
And a mutating webhook configuration has been supplied to us under webhook-configuration.yaml and it's asking us, "If we apply this configuration, which resource actions will it affect?" So, let's actually take a look at this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
So, we'll do webhook-configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
And if you wanna figure out what is doing, go under the rule section and we can see that it works for operations of creating on resources of pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
So, pod with the create operations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
Now, we have to deploy the webhook configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
So, once again we'll just do a kubectl apply-f webhook-configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
So, in the previous step we deployed a demo webhook which does the following.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
It denies all requests for a pod to run as route in container if no security context is provided.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
So, if no value is set for run as non-root, a default of true is applied in the user ID defaults to 1234.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
In addition to it, it allows a container to run as route if the run as non-root is explicitly set to false in the security context.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
So, what we're gonna do is we're first going to test this out by deploying a pod with no security context.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So, there's been a configuration provided under pod with defaults.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So, you can see there's nothing provided from a security context perspective.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So, it's just gonna use the default.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
So, I'm gonna do a kubectl apply-f and then we'll do pod-withdefault And so the next question's asking us, "What are the run as non-root and run as user values for the previously created pod security context?" Because remember, we didn't explicitly provide this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So, I'm gonna do a kubectl: get pod and it's gonna be pod-withdefault.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
And then I'm gonna do a -oyaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
I wanna see the configuration and hold on, what is this called?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
Get pod and I realize I forgot the S.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Best Practice  

Content:
And so if we look for a security context, we should see what provided.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
So, we could see when you provide nothing, it's going to default to runAsNonRoot: true and the user's gonna be 1234.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
So, we wanna find run runAsNonRoot: true run as user1234.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
The next question is asking us to deploy a pod with a security context explicitly allowing to run as root.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
And this definition file for this has already been provided.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Implementation Step  

Content:
So, if we take a look at pod with override, we can see that the security context is set to runAsNonRoot: false So if we do a kubectl apply, so we can deploy this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
We can check this now and go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
The next question is asking us to deploy a pod with a conflicting security context.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
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
So, a pod with conflict .YAML is gonna provide the definition for that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So, if we take a look at that, and we can see under security context, it's set for run, runAsNonRoot: true And it's gonna say, run as user of zero.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Best Practice  

Content:
So, do kubectl apply-f and we should see that it's going to reject this because we are asking to runAsNonRoot: true but then run as user set to zero, which is the root user so.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
You can't have runAsNonRoot: true and then asked to be run as a root user.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
So, we would have to set it as false.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
And so the validation was successful and it rejected the application of the creation of this pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
And that's going to wrap up this lab session.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 158_Solution_ Validating and Mutating Admission Controllers
- File: 158_Solution_ Validating and Mutating Admission Controllers.txt
- Topic: Solution_ Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
