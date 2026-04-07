# Extraction: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional)

---

## Entry 1
Type: Troubleshooting  

Content:
-: Hey, so let's go through this practice test on troubleshooting application failure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So the first question is, a simple two tier application is deployed in the alpha name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
It must display a green webpage on success.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
So click on the app tab at the top of your terminal to view your application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So I can click here to open the application, and I see that it is indeed in a failed state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Troubleshooting  

Content:
So if I look at the error message here, we can see some of the environment variables, which, which we can use for while troubleshooting, but it says, Can't connect to MySQL server on MySQL service 3306.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Name does not resolve.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Troubleshooting  

Content:
So basically it looks like this web application is unable to reach the MySQL service because the name, there's some, some issue with the name is not able to resolve it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Architecture  

Content:
So let's look at this architecture diagram.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So here, so it's a two-tier application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
So you have the web service here and you have the database service here, and then you have the user accessing it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
So we know that this is most likely a deployment or a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
The web application is on 8080, and then you have this web service which is on 8080.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
And then this is the node port that the users are accessing, which is 30081.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
And then you have the MySQL service, which is a, which is a service that the web application use tries to connect to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
And this is the MySQL pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Now looking at this state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So we know that the web application loads, it's, it's failed, the application is failed, but at least the interface loads.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So looking at it, this area seems to be okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Okay, because this port 30081, this is the port that we are on.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So 3081, so that's good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So this patch looks okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
This web service has loaded the application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So this also looks okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Troubleshooting  

Content:
So there's some issue in this area.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
The application is unable to reach the MySQL service at this name or at this port.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
So let's first take a look at, at the application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So it's in the alpha name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So we're gonna do a kubectl, we get pods, dash name, space alpha.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
And so we're gonna work, we're gonna run a lot of commands in the alpha name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Warning/Pitfall  

Content:
So it's best if we switch our context and, and set the alpha name space as the default name space, because we don't want to be typing in the name space for each command so let's do a kubectl config, and let's check the help find out the command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So we can use a set context.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
So we're going to do a set text, and then let's check the help.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
And what we want to do is we wanna set the name space, we're gonna use a set context, and then the current context.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
So we wanna set the name space of the current context to the name space equals alpha.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
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
So that's modified.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
So let's try, we've gotta just get pods now and we see that we can see the pods in the current name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
So as we suspected, the web application is a deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
So let's do a deploy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
So the web app is a deployment, and the SQL server is a, is a pod, and we also have services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
And so the SQL server has a, the, MySQL service and the web application has the web service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
Okay So one way to, another way to test the, if the web application is accessible or not, is basically at this level of test is to do a curl and then to gonna do a local host because it's accessible on the node port and the port is 3081.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
And we can see the kind of, you know, this in a, in a text format and we can see that database connection has failed and can't connect to MySQL server on MySQL service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So we're gonna look more into this area, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
So let's see, let's look at the deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
We're gonna do a kubectl, we're gonna do a kubectl describe deployment web app about MySQL.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
So that's the deployment name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
And here we see that we have the template, the image is simple web app.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
MySQL port is 8080.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
And these are some of the environment variables.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
So the database host is MySQL service, the user is root and the password is this password.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
So the host is MySQL service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
So let's look at the service called MySQL service, Let's do a get service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
And we see that the name of the service is not MySQL service It's instead MySQL, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So that seems to be the problem here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Best Practice  

Content:
So this, and this should match because from within this application is gonna try and reach a service by the name MySQL service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
And this doesn't look like that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
So that seems to be the problem.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Troubleshooting  

Content:
So what we're going to do is we're gonna fix that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
So let's do, let's try and edit the service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
And we can't edit the service name, but let's give it a shot.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
All we want to do is change this to MySQL service, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So let's try and save that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
Now, it's not going to allow you to save that, but the changes we made is in this temporary file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
So this is what we need.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
So here you have the service and you have the, MySQL service and everything else seems to be as, as what we want.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So the port numbers are there, selector is there, or another approach we could do is to just delete the service and export or expose the service, the MySQL service again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
But for now, we could just go ahead with this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
So we could do a kubectl delete as we see, and delete the MySQL service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
Then we're going to create SVC.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Implementation Step  

Content:
Nope, we're gonna create using this file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
Okay, let's check service now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
And we see that the MySQL service has now been created on port 23306.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 76
Type: Concept  

Content:
So let's go ahead and check this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
Okay, when you check this application, it's now Success check our work.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Implementation Step  

Content:
Okay, so that's successful, let's proceed to the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
Okay, so in this one, the same two tier application is deployed in the beta name space and it must display a green web page on success.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
Click on the app.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
So let's click on this app to see the status.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
And as you can see, it's in a failed state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
And if you look at this, you have the environment variables.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
So the database hosts MySQL service, user is root, password, and it says, Can't connect to MySQL server on MySQL service 3306.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
Now it says connection refused.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
So it's this connection refused.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
So let's take a look at it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Implementation Step  

Content:
So first we're going to switch context to beta.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Implementation Step  

Content:
We're gonna do a set context config, set context command, and then we're going to, so the current context name space to beta okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
Now we're gonna do a get pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
Pods, and we see the MySQL pod and you have the, the web app pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
So that's fine.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 93
Type: Implementation Step  

Content:
And then we also have services for the MySQL service and the web app service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
If you look at this again, as before, the, the Port 30081 seems to be correct.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
So you can, as we can access that here and this whole application loads.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Best Practice  

Content:
So this whole thing should be good, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Troubleshooting  

Content:
And again, it looks like it's a connectivity issue with between the web application and the MySQL server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
So this is what we have to verify.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Troubleshooting  

Content:
Now, last time the issue was with the name, but now looks like the name is correct, it is MySQL service, but we will anyway, also check the deployment on what is set, describe Deploy web app MySQL.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
And we see that the database host given here is MySQL service and this is MySQL service as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
So that's good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 102
Type: Concept  

Content:
Now let's just look at the service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
So this is good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
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
Now let's just focus on this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
So we're gonna do a describe service, MySQL service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
And we see selector is right, the endpoints it has has detected the endpoint.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
So that's 10.42.0.12.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
Let's look at, let's make sure that this endpoint is the pod, which is the MySQL pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
So let's do a kubectl get pods -OY to see the IP of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
And we see that the MySQL pod has an IP address, 10.42.0.12.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
And this is 10.42.0.12.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
So that's right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
But if you look at this right here, it says port 8080.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Implementation Step  

Content:
And so the IP is, okay, so then we check the port.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
So it's port 8080, and 8080 is not the port for the database.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
So if you look at it here, the port here is 3306 and not 8080.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
So that seems to be the problem.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
So let's do an edit as we see MySQL service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
And you can see the port here is 3306, which is right, the target port given is 8080, and that is not right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Best Practice  

Content:
So that should be 3306 as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Concept  

Content:
So let's edit that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 122
Type: Concept  

Content:
Let's make sure the changes took place.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Concept  

Content:
Okay, so now is 3306, and let's check the endpoints.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Concept  

Content:
And we see that the endpoint is now 10.42.0.12, 3306.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Concept  

Content:
Let's now check our application and yep, can see that it's, it's a success.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
Let's check our work.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
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
Okay, so we're two down.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Implementation Step  

Content:
Okay, so the next question is the same two tier application is deployed in the Gamma name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
It must display green webpage and click on the app tab at the top to view, okay, so it, it looks like it's the same question.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
So let's go and open the application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
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
So just keeps spinning and meanwhile we'll go here and here our work and switch context to, we'll switch to the gamma namespace, okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Concept  

Content:
And let's check status of pods and let's check services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
So we have both the pods are running and the services are there, but this doesn't look like it's loading.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Concept  

Content:
So let's try and find out why.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Troubleshooting  

Content:
So it looks like the issue is somewhere here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Concept  

Content:
The page itself isn't loading, the service itself isn't loading.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
So let's start looking at it right from here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Implementation Step  

Content:
So the first thing to look at is this Port 30081, because that is the, the port that we are trying to access 30081, okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Concept  

Content:
And it's now timed out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Concept  

Content:
So 30081.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Concept  

Content:
So if you look at the service called web service, we see that it's set to node port, and the node port is 30081, so that's fine.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Concept  

Content:
So that looks good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Implementation Step  

Content:
Next thing is the service itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
So let's check if the service has a endpoints.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Concept  

Content:
So we're gonna do describe service, web service, and we see the name, web service, name space is gamma, has the right selectors and has the endpoints.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Concept  

Content:
10.42.0.14.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Concept  

Content:
And the ports are 8080 and 8080.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 149
Type: Concept  

Content:
So that looks right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 150
Type: Concept  

Content:
Let's make sure the IP address, the endpoints are picked up correctly.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 151
Type: Concept  

Content:
So this endpoint is 10.42.0.14, and the web app is on 10.42.0.14 as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 152
Type: Concept  

Content:
So that checks out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 153
Type: Implementation Step  

Content:
So the next step is, so the web service is good, Let's check the deployment itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 154
Type: Implementation Step  

Content:
So we do our kubectl get pods, we do describe deployment web app, MySQL, and we see that it has one desired and one available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 155
Type: Concept  

Content:
So that's fine.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 156
Type: Concept  

Content:
The image is, looks correct, the database host is MySQL service, user is root password.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 157
Type: Implementation Step  

Content:
All of that seems to be okay, but it's still, we're unable to do the deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 158
Type: Concept  

Content:
So let's check out the logs because it looks like the, the web server isn't responding.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 159
Type: Concept  

Content:
So let's do a logs on the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 160
Type: Concept  

Content:
And this seems to be, okay, so this, this application itself, it says it started, it's available on this port.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 161
Type: Concept  

Content:
And so that seems to be okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 162
Type: Concept  

Content:
So however, we are still not able to access the application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 163
Type: Concept  

Content:
So let's anyway, go through and complete our checks because we assume that it's going to be somewhere here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 164
Type: Concept  

Content:
But anyway, let's go down and complete our checks.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 165
Type: Concept  

Content:
So the MySQL service is supposed to be on 3306.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 166
Type: Concept  

Content:
So let's check that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 167
Type: Concept  

Content:
So we have the MySQL service and it's on 3306.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 168
Type: Concept  

Content:
Let's check the endpoint, describe MySQL service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 169
Type: Concept  

Content:
And here you have the endpoints, but it looks like there are no endpoints.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 170
Type: Concept  

Content:
So apparently the service hasn't detected MySQL pod as an endpoint, so let's take a look at why that is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 171
Type: Concept  

Content:
So if you look at the selectors right here, it says name equals SQL 00001, and for the pod, so describe POD MySQL.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 172
Type: Concept  

Content:
And we know that the labels for this is, is name equals MySQL.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 173
Type: Best Practice  

Content:
So that should be the selector not name equals SQL 0001.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 174
Type: Concept  

Content:
And that's why it doesn't have any endpoints.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 175
Type: Concept  

Content:
So let's go ahead and edit that, not the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 176
Type: Implementation Step  

Content:
We're going to edit the service, MySQL service, and we're going to change the selector to MySQL then save that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 177
Type: Concept  

Content:
Okay, now we're going to do a describe pod, no describe Service MySQL.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 178
Type: Concept  

Content:
And we see that we have, we have the service now protected.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 179
Type: Concept  

Content:
Let's go and check out our application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 180
Type: Concept  

Content:
Okay, so that's connected successfully.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 181
Type: Concept  

Content:
So apparently, even though we were not ab able to access the web application, that's because the web application is trying to access the MySQL service and that service was not responding, which is why the web application was not responding either.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 182
Type: Troubleshooting  

Content:
So even though we thought that the issue was somewhere here, we went through and we made sure that everything's fine and we just went through the remaining just to check and just to be sure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 183
Type: Troubleshooting  

Content:
And that's how we identified that the issue is somewhere here, so that's, that's another approach or technique that you should use.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 184
Type: Warning/Pitfall  

Content:
If you're not really sure, I mean, you start with an intuition on, you know, where the issue could be, but if you don't seem, you know, if you can't really figure out, you just keep looking at the, those things just to make sure that they're working as expected.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 185
Type: Implementation Step  

Content:
Okay, so let's check our work and let's wait for the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 186
Type: Implementation Step  

Content:
Okay, so here the, the same two-tier application is deployed in the Delta name space, and it looks like it's the same setup.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 187
Type: Concept  

Content:
So here we have, and it's in a fail state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 188
Type: Implementation Step  

Content:
So let's first change our context to Delta.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 189
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 190
Type: Implementation Step  

Content:
Then let's check the pods and let's check our services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 191
Type: Troubleshooting  

Content:
So let's check the error message.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 192
Type: Concept  

Content:
So the host is MySQL service user is SQL user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 193
Type: Concept  

Content:
Password is password.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 194
Type: Concept  

Content:
It says can't connect to MySQL server on MySQL service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 195
Type: Concept  

Content:
3306 connection refused.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 196
Type: Concept  

Content:
Okay, I wanna try that out again, just refresh it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 197
Type: Concept  

Content:
And it says Access denied for user SQL user at 10.42.0.16 using password.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 198
Type: Concept  

Content:
So it says Access denied for the user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 199
Type: Concept  

Content:
So, and here you can see the user details.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 200
Type: Concept  

Content:
So the DB host has to be my service, the DB user is route.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 201
Type: Concept  

Content:
And the password is password.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 202
Type: Concept  

Content:
So let's check the, the settings for that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 203
Type: Concept  

Content:
So the web application must access that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 204
Type: Concept  

Content:
MySQL service, and this is where the credentials are stored.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 205
Type: Implementation Step  

Content:
So let's do a describe on MySQL, describe deployment on MySQL.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 206
Type: Concept  

Content:
Let's look at the settings.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 207
Type: Concept  

Content:
So here you have the environment variables and you have the host, which is MySQL service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 208
Type: Concept  

Content:
The user is, it says SQL user, but it's actually root.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 209
Type: Concept  

Content:
And the password is password.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 210
Type: Concept  

Content:
So this is, this seems to be the problem.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 211
Type: Concept  

Content:
So let's edit that and update the user to root.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 212
Type: Concept  

Content:
Okay, and let's wait for the bot to be running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 213
Type: Concept  

Content:
So it's running already.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 214
Type: Concept  

Content:
It refers to the page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 215
Type: Concept  

Content:
And that's success.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 216
Type: Troubleshooting  

Content:
So that was the issue here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 217
Type: Concept  

Content:
Let's check that out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 218
Type: Concept  

Content:
And while the new one loads, let's close this one, let's clear our screen.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 219
Type: Implementation Step  

Content:
Okay, the next one is the same application is deployed in the Epsilon name set in space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 220
Type: Concept  

Content:
It must do display a green web app webpage on success.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 221
Type: Troubleshooting  

Content:
So let's open the webpage and we have a similar error message.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 222
Type: Concept  

Content:
So it says the environment variables, DB host, MySQL service database.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 223
Type: Concept  

Content:
It's not set users, SQL user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 224
Type: Concept  

Content:
And the password access denied for user SQL User, okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 225
Type: Troubleshooting  

Content:
So that's kind of the similar error.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 226
Type: Concept  

Content:
So let's take a look at it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 227
Type: Implementation Step  

Content:
But first let's change the context to, Epsilon, okay, and set the parts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 228
Type: Troubleshooting  

Content:
And we know that, So it's a similar error message where it says Access denied for SQL user, and that's what we just solve.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 229
Type: Troubleshooting  

Content:
The user is not SQL user, it's a root user, so let's go ahead and fix that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 230
Type: Implementation Step  

Content:
Edit deployment, web app, SQL.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 231
Type: Concept  

Content:
And so here we see the user is SQL user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 232
Type: Concept  

Content:
So let's change that to root.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 233
Type: Concept  

Content:
Okay, let's check the bot, if it's running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 234
Type: Concept  

Content:
Let's refresh the page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 235
Type: Troubleshooting  

Content:
Okay, so now the error message has changed and it says access denied for user root.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 236
Type: Concept  

Content:
Again, so the access is still denied.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 237
Type: Concept  

Content:
But the user has now been updated to root.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 238
Type: Concept  

Content:
Right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 239
Type: Concept  

Content:
So.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 240
Type: Concept  

Content:
The user credentials are either set on the application that's trying to connect to the database or the database itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 241
Type: Concept  

Content:
Right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 242
Type: Troubleshooting  

Content:
So we've already fixed it on the deployment here, but now the issue could be here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 243
Type: Concept  

Content:
So let's check out the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 244
Type: Concept  

Content:
Because that's the only other place where anything could be set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 245
Type: Concept  

Content:
And here we see additional details.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 246
Type: Best Practice  

Content:
And here we have the environment variable and the MySQL root password is set to something other than password, which should be this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 247
Type: Concept  

Content:
So that needs to be changed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 248
Type: Concept  

Content:
So let's do a edit pod for MySQL and let's change this password to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 249
Type: Concept  

Content:
BASWRD save that, it's not going to allow us 'cause it's a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 250
Type: Concept  

Content:
So we're going to do a kubectl, replace, replace force and give the file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 251
Type: Concept  

Content:
Okay, let's delete it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 252
Type: Concept  

Content:
It's up, it's running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 253
Type: Concept  

Content:
Let's try to refresh the page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 254
Type: Concept  

Content:
Hmm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 255
Type: Concept  

Content:
So now it'd says connection refused.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 256
Type: Concept  

Content:
No, okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 257
Type: Concept  

Content:
That was because we tried too early, the pod was just being initiated.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 258
Type: Concept  

Content:
So now at success.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 259
Type: Troubleshooting  

Content:
So that was the issue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 260
Type: Exam Tip  

Content:
Now another thing to note here is in this case, I mean, you know, these are, it's very simple, straightforward examples of setting environment variables, but these could also be part of config maps.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 261
Type: Implementation Step  

Content:
So there could be another config map associated with the MySQL service, which is how it is usually configured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 262
Type: Best Practice  

Content:
And so if that is the case, then you should inspect the config maps as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 263
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 264
Type: Concept  

Content:
All right, let's get ready for the final one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 265
Type: Implementation Step  

Content:
Okay, so the same two tier application is deployed in the Zeta name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 266
Type: Implementation Step  

Content:
So let's first set the context to Zeta and let's check out the application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 267
Type: Concept  

Content:
Okay, so it says bad gateway right up front.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 268
Type: Concept  

Content:
So let's start from here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 269
Type: Concept  

Content:
So we're assuming, because it says we're not even able to access the web service, we're gonna start right from the top.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 270
Type: Concept  

Content:
So the, the node port is 30081 because that's what we are trying to access here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 271
Type: Concept  

Content:
And let's see the status of the services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 272
Type: Concept  

Content:
And we see that the web service is, has a node board, but here you see it's not on 30081, it's on 30088.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 273
Type: Troubleshooting  

Content:
So that's what we're gonna fix, edit service, web service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 274
Type: Concept  

Content:
And the node board has to be 30081.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 275
Type: Concept  

Content:
We'll save that and let's make sure that it's updated.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 276
Type: Concept  

Content:
So it's 30081.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 277
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 278
Type: Concept  

Content:
So that's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 279
Type: Concept  

Content:
We're now able to access the application at least now it says access denied for user SQL, user using password.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 280
Type: Concept  

Content:
So that something we have seen already.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 281
Type: Implementation Step  

Content:
So let's check out, okay, let's look at the deployment, describe deploy web app MySQL.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 282
Type: Concept  

Content:
And we see that there are environment variables.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 283
Type: Concept  

Content:
So MySQL service, SQL server, SQL user and password.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 284
Type: Implementation Step  

Content:
So let's edit that to change it to root Okay, so the new pod has been deployed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 285
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 286
Type: Concept  

Content:
So now the username is updated, so access, but it's still his access denied for user root.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 287
Type: Implementation Step  

Content:
So we have to go down and check the, the password configured on the MySQL service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 288
Type: Concept  

Content:
So let's do a describe pod MySQL.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 289
Type: Troubleshooting  

Content:
You see that we have the password issue here, the environment variables.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 290
Type: Concept  

Content:
So let's edit that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 291
Type: Best Practice  

Content:
And this should be password, let's save that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 292
Type: Concept  

Content:
That's not going to go through.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 293
Type: Concept  

Content:
So let's do a replace this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 294
Type: Concept  

Content:
Okay, let's wait for the pod to run.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 295
Type: Concept  

Content:
Okay, so yep.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 296
Type: Concept  

Content:
Now that's successful.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 297
Type: Concept  

Content:
Check our work.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 298
Type: Concept  

Content:
Okay, so that's about it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 299
Type: Implementation Step  

Content:
I know that there's a little bit of repetition on the type of questions and, and that's really in case you didn't get it the first time for you to just get that practice again and, and get it the next time and build some confidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 300
Type: Troubleshooting  

Content:
So, yep, I hope that was a good troubleshooting session and we'll have more coming up in the upcoming labs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 288_Lab Solution - Application Failure _ (Optional)
- File: 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
