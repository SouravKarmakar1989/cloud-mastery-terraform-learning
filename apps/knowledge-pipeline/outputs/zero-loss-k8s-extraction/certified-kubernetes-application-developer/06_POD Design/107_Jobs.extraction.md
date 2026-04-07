# Extraction: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs

---

## Entry 1
Type: Concept  

Content:
-: Hello, and welcome to this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
In this lecture, we will look at jobs in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
There are different types of workloads that a container can serve.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
A few that we have seen through this course are web, application and database.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
We have deployed simple web servers that serve users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
These workloads are meant to continue to run for a long period of time until manually taken down.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
There are other kinds of workloads, such as batch processing, analytics, or reporting that are meant to carry out a specific task and then finish.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Exam Tip  

Content:
For example, performing a computation, processing an image, performing some kind of analytics on a large dataset, generating a report and sending an email, et cetera.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
These are workloads that are meant to live for a short period of time, perform a set of tasks and then finish.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
Let us first see how such a workload works in Docker.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
And then we will relate the same concept to Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So I'm going to run a Docker container to perform a simple math operation to add two numbers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
The Docker container comes up, performs the requested operation, prints the output, and exits.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
When you run the Docker ps command, you see the container in an exited state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
The return code of the operation performed is shown in the bracket as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
In this case, since the task was completed successfully, the return code is zero.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Let's just replicate the same with Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
We will create a pod definition file to perform the same operation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
When the pod is created, it runs a container, performs the computation task and exits, and the pod goes into a completed state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
But it then recreates the container in an attempt to leave it running.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Again, the container performs the required computation task and exits.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And Kubernetes continues to bring it up again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
And this continues to happen until a threshold is reached.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So why does that happen?

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Kubernetes wants your applications to live forever.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Operational Insight  

Content:
The default behavior of pods is to attempt to restart the container in an effort to keep it running.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Operational Insight  

Content:
This behavior is defined by the property restart policy set on the pod, which is by default set to always.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
And that is why the pod always recreates the container when it exits.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Troubleshooting  

Content:
You can override this behavior by setting this property to never or on failure.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
That way Kubernetes does not restart the container once the job is finished.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
Now, that works just fine.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
We have new use cases for batch processing.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Exam Tip  

Content:
We have large datasets that require multiple pods to process the data in parallel.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
We wanna make sure that all pods perform the task assigned to them successfully and then exit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
So we need a manager that can create as many pods as we want to get a work done and ensure that work gets done successfully.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Exam Tip  

Content:
But we have learned about replica sets that help us create multiple pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
While a replica set is used to make sure a specified number of pods are running at all times, a job is used to run a set of pods to perform a given task to completion.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
Let us now see how we can create a job.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
We create a job using a definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
So we start with a pod definition file to create a job using it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
We start with a blank template that has API version, kind, metadata and spec.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
The API version is batch/v1 as of today but remember to verify this against the version of Kubernetes released that you are running on.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
The kind is job, of course.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
We will name it Math Add Job.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
Then under the Spec section, just like in replica sets or deployments, we have template.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
And under template, we move all of the content from pod definitions specification.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
Once done, create the job using the kubectl create command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
Once created, use the kubectl get jobs command to see the newly created job.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
We now see that the job was created and was completed successfully.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
To see the pods created, run the kubectl get pods command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
We see that it is in a completed state with zero restarts, indicating that Kubernetes did not try to restart the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
Perfect, but what about the output of the job?

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
In our case, we just had the addition performed on the command line inside the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Best Practice  

Content:
So the output should be in the pod's standard output.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
The standard output of a container can be seen using the logs command as we have seen in a previous lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So we run the kubectl logs command with the name of the pod to see the output.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
Finally, to delete the job, run the kubectl delete job command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
Deleting the job will also result in deleting the pods that were created by the job.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Exam Tip  

Content:
Now, I hope you realize that this example was made simple so we understand what jobs are and of course, this is not typically how jobs are implemented in the real world.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Exam Tip  

Content:
For example, if the job was created to process an image, the processed image stored in a persistent volume would be the output.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Implementation Step  

Content:
Or if the job was to generate and email a report, then the email with the report would be the result of the job.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So I hope you get the gist of it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Exam Tip  

Content:
And for the sake of understanding jobs, we will continue with this example.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Exam Tip  

Content:
So we just ran one instance of the pod in the previous example.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Exam Tip  

Content:
To run multiple pods, we set a value for completions under the job specification.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
And we set it to three to run three pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
This time, when we create the job, we see the desired count is three, and the successful count is three.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Implementation Step  

Content:
Now, by default, the pods are created one after the other.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Implementation Step  

Content:
The second part is created only after the first is finished.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
That was straightforward but what if the pods fail?

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Troubleshooting  

Content:
For example, I'm now going to create a job using a different image called Random Error.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Troubleshooting  

Content:
It's a simple Docker image that randomly completes or fails.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Implementation Step  

Content:
When I create this job, the first part completes successfully.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Troubleshooting  

Content:
The second one fails.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Troubleshooting  

Content:
So a third one is created and that completes successfully and the fourth one fails.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
And so does the fifth.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Implementation Step  

Content:
And so to have three completions, the job tries to create new pods until it has three successful completions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
And that completes the job.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
Instead of getting the pods created sequentially, we can get them created in parallel.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
For this, add a property called parallelism to the jobs specification.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Implementation Step  

Content:
We set it to three to create three pods in parallel.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
So the job first creates three pods at once, two of which complete successfully.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
So we only need one more so it's intelligent enough to create one pod at a time until we get a total of three completed pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 85
Type: Concept  

Content:
Head over to the coding quiz and have fun playing around with jobs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Implementation Step  

Content:
I will see you in the next lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 107_Jobs
- File: 107_Jobs.txt
- Topic: Jobs
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
