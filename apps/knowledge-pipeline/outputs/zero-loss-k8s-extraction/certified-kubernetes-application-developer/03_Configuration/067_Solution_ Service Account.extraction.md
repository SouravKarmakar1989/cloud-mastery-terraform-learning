# Extraction: certified-kubernetes-application-developer / 03_Configuration / 067_Solution_ Service Account

---

## Entry 1
Type: Implementation Step  

Content:
-: So the first question is asking us how many service accounts exist in the default namespace?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So I'll do a kubectl get and then we'll do service account, I'm just gonna do sa for short and we can see in the default namespace we've got two total service accounts, one called default, one called dev.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
Now it's asking us what is the secret token used by the default service account?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
So to get this information, we'll go to kubectl and we'll do a describe of the default service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Concept  

Content:
And we wanna look under Tokens and right now we can see it's set to none.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So we'll select None.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
We just deployed the dashboard application inspect the deployment, what is the image used by the deployment?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
So I'll do a kubectl get deployments, and then I'll do a kubectl describe deployment web-dashboard.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
And we wanna go under Pod Template under Containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
And then for the web-dashboard we could see this is the name of the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So I will select this one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
And this is just saying wait for the deployment to be ready and then you can access the dashboard application by selecting this button right here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And we can see the dashboard application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Implementation Step  

Content:
So we'll hit OK here and we'll go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Saying what is the state of the dashboard?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Have the pod details loaded successfully?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
So we'll go back to this and we can see that, you know there's some red text, usually that's not good.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Troubleshooting  

Content:
So there's an error it's saying pods is forbidden, user block cannot list resources pods in the api group.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
All right, so let's go back and we'll say that it failed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
It's asking us what type of account does the dashboard application use to query the Kubernetes api?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
So if we go back, we can see here in the log message is saying system service account default default cannot list the resource pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So it's using a service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
More specifically, it's using the default service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
So which account does the dashboard application use to query the Kubernetes api as I mentioned?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
It's using the default one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So now it's saying inspect the dashboard application pod and identify the service account mounted on it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
So we'll do a kubectl get pod and I'm gonna do a kubectl describe and we'll describe that pod and I forgot the word pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
And we're trying to identify the service account mounted on it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 29
Type: Concept  

Content:
So if we go up to the top there's gonna be a section called service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
And we could see here it's set to default.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
And the next question is asking at what location is this service account credentials available within the pod?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
So if we go down here, we wanna go to the mount section or if we go to the volume, sorry, we wanna look at the mount section right here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
And so, we could see it's mounted at var/run/secrets.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
So this is where the service account credentials are gonna be mounted.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
So we'll select the var/run/secrets.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
Next question is asking us the application needs a service account with the right permissions to be created to authenticate to Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
The default service account has limited access.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Implementation Step  

Content:
Create a new service account named dashboard-sa.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 39
Type: Implementation Step  

Content:
So to do that we just need to run one single command and that's going to be kubectl create service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
And then, the name of the service account which is gonna be dashboard-sa.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
So that's going to get created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
We'll then run the validation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 43
Type: Implementation Step  

Content:
And this is just letting us know that with the new service account that we created it went ahead and added in permissions for the newly created dashboard-sa account using rbac.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
If you wanna take a look at the configurations you can always go to /var/rbac.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
And here you could see the role and role-binding configurations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
But we're gonna discuss rbac in a separate section in this course.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
So we'll hit OK for now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Troubleshooting  

Content:
So it's telling us to get an access token and entered in the UI dashboard and see if that basically fixes the issue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
So to create a token we have to run the command kubectl create token and then we're gonna create a token for the dashboard-sa service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So this is going to be the token and we're gonna copy this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
We're gonna go back to the application and we're gonna paste it in here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 52
Type: Concept  

Content:
And now if we do load dashboard, we could see that we're able to load all of the pods that's running on our cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 53
Type: Best Practice  

Content:
So now the next question is telling us, we shouldn't have to create a token and then paste it into our application every time we need an application to interact with the Kubernetes api.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
So what we're gonna do is we're going to edit the deployment configuration for that specific deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
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
So instead of using the default service account, it's going to use the dashboard service account, so it already has access to the api.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So here I'm gonna do a kubectl.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 57
Type: Implementation Step  

Content:
And then I'll do get deployments and I'm gonna grab the web-dashboard and I'm gonna pipe it to a yaml file and I'll just call this dashboard.yaml and then we'll go to the dashboard-yaml file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
And to specify this service account, we wanna go under the spec for the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 59
Type: Implementation Step  

Content:
So that's gonna be not the first spec, but the second one, 'cause this is a deployment And under here we just specify service account name and then the service account we wanna give it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
So this is gonna be dashboard-sa, we'll save this and then I'll do a kubectl apply -f dashboard.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Warning/Pitfall  

Content:
Don't worry about the warning, that's just because the the first deployment wasn't created using the apply command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
But that's all right.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 63
Type: Implementation Step  

Content:
So we've got kubectl get deployments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
All right, so now we can go ahead and run the validation and we can see that was successful.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 65
Type: Concept  

Content:
And if we go to the application now, and we hit Refresh, I'm just gonna hit Ctrl-R.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
We refresh, there's no token, but it's going to work now, because it's got the service account and the token mounted automatically onto it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
And so, that's going to wrap up this lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 067_Solution_ Service Account
- File: 067_Solution_ Service Account.txt
- Topic: Solution_ Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
