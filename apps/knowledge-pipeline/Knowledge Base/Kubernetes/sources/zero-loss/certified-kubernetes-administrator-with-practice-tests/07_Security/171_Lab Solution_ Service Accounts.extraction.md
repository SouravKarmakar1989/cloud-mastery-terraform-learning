# Extraction: certified-kubernetes-administrator-with-practice-tests / 07_Security / 171_Lab Solution_ Service Accounts

---

## Entry 1
Type: Implementation Step  

Content:
Instructor: So the first question is asking us how many service accounts exist in the default namespace?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So I'll do a kubectl get and then we'll do service account.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
I'm just gonna do sa for short and we can see in the default namespace, we've got two total service accounts, one called default, one called dev.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Now, it's asking us what is the secret token used by the default service account?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So to get this information, we'll go to kubectl and we'll do a describe of the default service account.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 6
Type: Concept  

Content:
And we wanna look under tokens.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
And right now, we can see it's set to none.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So we'll select none.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
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
We just deployed the dashboard application, inspect the deployment, what is the image used by the deployment?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
So I'll do a kubectl get deployment, and then I'll do a kubectl describe deployment web-dashboard.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
And we wanna go under pod template, under containers, and then for the web-dashboard, we could see this is the name of the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So I will select this one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Implementation Step  

Content:
And this is just saying wait for the deployment to be ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
And then you can access the dashboard application by selecting this button right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
And we can see the dashboard application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Implementation Step  

Content:
So we'll hit OK here and we'll go to the next question, saying what is the state of the dashboard?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Have the pod details loaded successfully?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
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
So we'll go back to this and we can see that, you know, there's some red text.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Usually that's not good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Troubleshooting  

Content:
So there's an error saying pods is forbidden.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
User blah cannot list resources pods in the API group.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
All right, so let's go back and we'll say that it failed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
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
It's asking us what type of account does the dashboard application use to query the Kubernetes API?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
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
So if we go back, we can see here in the log message, it's sayingsystemserviceaccount:defaultdefault cannot list the resource pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So it's using a service account.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 26
Type: Concept  

Content:
More specifically, it's using the default service account.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
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
So which account does the dashboard application use to query the Kubernetes API?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
As I mentioned, it's using the default one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So now it's saying inspect the dashboard application pod and identify the service account mounted on it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
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
So we'll do a kubectl get pod and I'm gonna do a kubectl describe and we'll describe that pod and I forgot the word pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
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
And we're trying to identify the service account mounted on it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
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
So if we go up to the top, there's gonna be a section called service account.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
And we can see here it's set to default.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
And the next question is asking at what location is this service account credentials available within the pod?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
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
So if we go down here, we wanna go to the mount section or if we go to the volume, sorry, we wanna look at the mount section right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
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
And so we could see it's mounted at /var/run/secrets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
So this is where the service account credentials are gonna be mounted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Concept  

Content:
So we'll select /var/run/secrets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
Next question is asking us the application needs a service account with the right permissions to be created to authenticate to Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
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
The default service account has limited access.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 41
Type: Implementation Step  

Content:
Create a new service account named dashboard-sa.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Implementation Step  

Content:
So to do that, we just need to run one single command and that's going to be kubectl create serviceaccount.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
And then the name of the service account, which is gonna be dashboard-sa.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
So that's going to get created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 45
Type: Implementation Step  

Content:
We'll then run the validation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Implementation Step  

Content:
And this is just letting us know that with the new service account that we created, it went ahead and added in permissions for the newly created dashboard-sa account using RBAC.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
If you wanna take a look at the configurations, you can always go to /var/rbac.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
And here you could see the role and role binding configurations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
But we're gonna discuss RBAC in a separate section in this course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
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
So we'll hit OK for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 51
Type: Troubleshooting  

Content:
So it's telling us to get an access token and enter it in the UI dashboard and see if that basically fixes the issue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
So to create a token, we have to run the command kubectl create token and then we're gonna create a token for the dashboard-sa service account.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
So this is going to be the token and we're gonna copy this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 54
Type: Concept  

Content:
We're gonna go back to the application and we're gonna paste it in here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 55
Type: Concept  

Content:
And now if we do load dashboard, we could see that we're able to load all of the pods that's running on our cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 56
Type: Best Practice  

Content:
So now the next question is telling us, you know, we shouldn't have to create a token and then paste it into our application every time we need an application to interact with the Kubernetes API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
So what we're gonna do is we're going to edit the deployment configuration for that specific deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
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
So instead of using the default service account, it's going to use the dashboard service account so it already has access to the API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
So here I'm gonna do a kubectl.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 60
Type: Implementation Step  

Content:
And then I'll do get deployment and I'm gonna grab the web-dashboard and I'm gonna pipe it to a YAML file and I'll just call this dashboard.yaml and then we'll go to the dashboard.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
And to specify this service account, we wanna go under the spec for the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 62
Type: Implementation Step  

Content:
So that's gonna be not the first spec but the second one 'cause this is a deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Implementation Step  

Content:
And under here, we just specify serviceAccountName and then the service account we wanna give it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So this is gonna be dashboard-sa.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
We'll save this and then I'll do a kubectl apply -f dashboard.yaml.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Warning/Pitfall  

Content:
Don't worry about the warning.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
That's just because the first deployment wasn't created using the apply command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
But that's all right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 69
Type: Implementation Step  

Content:
So we've got kubctl get deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
All right, so now we can go ahead and run the validation and we can see that was successful.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
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
And if we go to the application now and we hit refresh, I'm just gonna hit Control + R.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
We refresh.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
There's no token, but it's going to work now because it's got the service account and the token mounted automatically onto it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
And so that's going to wrap up this lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 171_Lab Solution_ Service Accounts
- File: 171_Lab Solution_ Service Accounts.txt
- Topic: Lab Solution_ Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
