# Extraction: certified-kubernetes-administrator-with-practice-tests / 07_Security / 175_Pre-requisite - Security in Docker

---

## Entry 1
Type: Concept  

Content:
In this lecture we will talk about security contexts in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Concept  

Content:
But before we get into that, it is important to have some knowledge about security in Docker.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Implementation Step  

Content:
If you are familiar with security in Docker, feel free to skip this lecture and head over to the next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Concept  

Content:
In this lecture, we will look at the various concepts related to security in Docker.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
Let us start with a host with Docker installed on it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
This host has a set of its own processes running, such as a number of operating system processes, the Docker daemon itself, the SSH server, etc. we will now run an Ubuntu Docker container that runs a process that sleeps for an hour.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
We have learned that unlike virtual machines, containers are not completely isolated from their host containers, and the hosts share the same kernel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
Containers are isolated using namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Concept  

Content:
In Linux, the host has a namespace and the containers have their own namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Concept  

Content:
All the processes run by the containers are in fact run on the host itself, but in their own namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Concept  

Content:
As far as the Docker container is concerned, it is in its own namespace and it can see its own processes only.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Concept  

Content:
It cannot see anything outside of it or in any other namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
So when you list the processes from within the Docker container, you see the sleep process with a process ID of one for the Docker host, all processes of its own, as well as those in the child.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Namespaces are visible as just another process in the system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So when you list the processes on the host, you see a list of processes, including the sleep command, but with a different process ID.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Concept  

Content:
This is because the processes can have different process IDs in different namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
And that's how Docker isolates containers within a system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
So that's process isolation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Concept  

Content:
Let us now look at users in context of security.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
The Docker host has a set of users A root user as well as a number of Non-root users.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
By default, Docker runs processes within containers as the root user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
This can be seen in the output of the commands we ran earlier, both within the container and outside the container on the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
The process is run as the root user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 24
Type: Warning/Pitfall  

Content:
Now, if you do not want the process within the container to run as the root user, you may set the user using the user option within the docker run command and specify the new user ID.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 25
Type: Concept  

Content:
You will see that the process now runs with the new user ID.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
Another way to enforce user security is to have this defined in the Docker image itself at the time of creation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 27
Type: Exam Tip  

Content:
For example, we will use the default ubuntu image and set the user id to 1000 using the user instruction.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
Then build the custom image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
We can now run this image without specifying the user id, and the process will be run with the user id 1000.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Implementation Step  

Content:
Let us take a step back.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
What happens when you run containers as the root user?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
Is the root user within the container the same as the root user on the host?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
Can the process inside the container do anything that the root user can do on the system?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Concept  

Content:
If so, isn't that dangerous?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
Well, Docker implements a set of security features that limits the abilities of the root user within the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
So the root user within the container isn't really like the root user on the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 37
Type: Command  

Command:
```bash
Docker uses Linux capabilities to implement this.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
As we all know, the root user is the most powerful user on a system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
The root user can literally do anything, and so does a process run by the root user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
It has unrestricted access to the system from modifying files and permissions on files, access control, creating or killing processes, setting group ID or user ID.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
Performing network related operations such as binding to network ports.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Concept  

Content:
Broadcasting on a network. controlling network ports system related operations like rebooting the host, manipulating system clock, and many more.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 43
Type: Concept  

Content:
All of these are the different capabilities on a Linux system, and you can see a full list at this location.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 44
Type: Concept  

Content:
You can now control and limit what capabilities are made available to a user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 45
Type: Warning/Pitfall  

Content:
By default, Docker runs a container with a limited set of capabilities, and so the processes running within the container do not have the privileges to say, reboot the host or perform operations that can disrupt the host or other containers running on the same host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Operational Insight  

Content:
If you wish to override this behavior and provide additional privileges than what is available, use the cap add option in the docker run command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
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
Similarly, you can drop privileges as well using the cap drop option or in case you wish to run the container with all privileges enabled, use the privileged flag.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
Well that's it on Docker Security for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 49
Type: Implementation Step  

Content:
I will see you in the next lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 175_Pre-requisite - Security in Docker
- File: 175_Pre-requisite - Security in Docker.txt
- Topic: Pre-requisite - Security in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
