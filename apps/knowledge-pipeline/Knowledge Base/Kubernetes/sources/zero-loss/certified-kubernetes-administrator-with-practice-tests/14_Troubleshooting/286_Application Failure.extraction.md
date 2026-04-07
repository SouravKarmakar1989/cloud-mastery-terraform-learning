# Extraction: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure

---

## Entry 1
Type: Troubleshooting  

Content:
Throughout this course, we've actually worked on a number of troubleshooting exercises with respect to the topic we were going through at that point in time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Troubleshooting  

Content:
So a lot of troubleshooting is already covered.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Troubleshooting  

Content:
We will go through an overview of troubleshooting techniques and procedures, and work on some more practice tests in this section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Troubleshooting  

Content:
We'll start with application failures.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
Let's take a look at a two tier application that has a web and a database server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
The database pod hosts a database application and serves the web servers through a database service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
The web server is hosted on a web pod and serves users through the web service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
It's good to write down or draw a map or chart of how your application is configured before you start.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Troubleshooting  

Content:
Depending on how much you know about the failure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
You may choose to start from either end of this map.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Troubleshooting  

Content:
But remember to check every object and link in this map until you find the root cause of the issue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Troubleshooting  

Content:
Say in our case, users report some issue with accessing the application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
First, we start with the application front end.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Use standard ways of testing if your application is accessible.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
If it's a web application, check if the web server is accessible on the IP of the node port using curl.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
Next, check the service as it discovered endpoints for the web pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
In this case, it did.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
But if it did not, then you might want to check the service to Pod Discovery.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Comparison  

Content:
Compare the selectors configured on the service to the ones on the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Make sure that they match.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
Next, check the pod itself and make sure it is in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
The status of the pod, as well as the number of restarts, can give you an idea of whether the application on the pod is running or is getting restarted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Check the events related to the pod using the describe command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
Check the logs of the application using the logs command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Troubleshooting  

Content:
If the pod is restarting due to a failure, then the logs in the current version of the pod that's running the current version of the container may not reflect why it failed the last time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So you either have to watch these logs using the dash F option and wait for the application to fail again, or use the previous option to view the logs of a previous pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
Next, check the status of the DB service as before.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
And finally check the DB pod itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Troubleshooting  

Content:
Check the logs of the DB pod and look for any errors in the database.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Troubleshooting  

Content:
There are some more tips documented in the Kubernetes documentation page for troubleshooting applications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Exam Tip  

Content:
This will help in upcoming practice tests as well as in the exam.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 286_Application Failure
- File: 286_Application Failure.txt
- Topic: Application Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
