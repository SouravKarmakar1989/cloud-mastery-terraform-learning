# Extraction: certified-kubernetes-application-developer / 03_Configuration / 044_Commands and Arguments in Kubernetes

---

## Entry 1
Type: Concept  

Content:
In this lecture we will look at commands and arguments in a Kubernetes pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Implementation Step  

Content:
In the previous lecture, we created a simple Docker image that sleeps for a given number of seconds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Concept  

Content:
We named it Ubuntu Sleeper and we ran it using the docker command Docker run ubuntu sleeper.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
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
By default it sleeps for five seconds, but you can override it by passing a command line argument.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Implementation Step  

Content:
We will now create a pod using this image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
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
We start with a blank pod definition template, input the name of the pod and specify the image name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
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
When this pod is created, it creates a container from the specified image and the container sleeps for five seconds before exiting.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
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
Now, if you need the container to sleep for 10s as in the second command, how do you specify the additional argument in the pod definition file?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
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
Anything that is appended to the docker run command will go into the args property of the pod definition file in the form of an array like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
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
Let us try to relate that to the docker file we created earlier.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
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
The docker file has an entry point as well as a cmd instruction Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
We override the cmd instruction in the docker file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
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
But what if you need to override the entry point?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Say from sleep to an imaginary sleep 2.0 command?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
In the Docker world, we would run the docker run command with the entrypoint option set to the new command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
The corresponding entry in the pod definition file would be using a command field.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
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
The command field corresponds to entrypoint instruction in the docker file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So to summarize, there are two fields that correspond to two instructions in the docker file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
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
The command field overrides the entrypoint instruction, and the args field overrides the command instruction in the docker file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Remember, it is not the command field that overrides the cmd instruction in the docker file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
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
Well, that's it about commands and arguments in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 22
Type: Troubleshooting  

Content:
Head over to the Coding exercises section and practice viewing, configuring and troubleshooting commands and arguments in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 044_Commands and Arguments in Kubernetes
- File: 044_Commands and Arguments in Kubernetes.txt
- Topic: Commands and Arguments in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
