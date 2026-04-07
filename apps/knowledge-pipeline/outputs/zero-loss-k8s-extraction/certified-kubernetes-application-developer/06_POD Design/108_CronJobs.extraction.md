# Extraction: certified-kubernetes-application-developer / 06_POD Design / 108_CronJobs

---

## Entry 1
Type: Concept  

Content:
-: Hello and welcome to this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
In this lecture, we will look at CronJobs in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
A CronJob is a job that can be scheduled just like Crontab in Linux, if you're familiar with it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Exam Tip  

Content:
Say for example you have a job that generates a report and sends an email.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
You can create the job using the cube control create command but it runs instantly.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
Instead, you could create a CronJob to schedule and run it periodically.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
To create a CronJob we start with a blank template.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
The API version as of today is batch/v1beta1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
The kind is CronJob with a capital C and J.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
I will name it Reporting CronJob.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Under spec you specify a schedule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
The schedule option takes a Cron-like format string where you can specify the time when the job is to be run.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Best Practice  

Content:
Then you have the job template which is the actual job that should be run.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Move all of the content from the spec section of the job definition under this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Notice that the CronJob definition now gets a little complex, so you must be extra careful.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
There are now three spec sections.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
One for the CronJob, one for the job, and one for the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
Once the file is ready, run the cube control create command to create the CronJob and run the cube control get CronJob command to see the newly created job.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
It would in turn create the required jobs and pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Well that's it for this lecture, head over to the coding exercises and play around with CronJobs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
I will see you in the next lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 108_CronJobs
- File: 108_CronJobs.txt
- Topic: CronJobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
