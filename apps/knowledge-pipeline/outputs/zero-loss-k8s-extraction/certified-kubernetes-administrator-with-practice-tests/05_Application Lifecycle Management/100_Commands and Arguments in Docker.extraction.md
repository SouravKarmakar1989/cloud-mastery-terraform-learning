# Extraction: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 100_Commands and Arguments in Docker

---

## Entry 1
Type: Concept  

Content:
In this section we will talk about commands and arguments in a Pod definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Exam Tip  

Content:
This is not listed as a required topic in the certification curriculum, but I think it's important to explain as it is a topic that is usually overlooked.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
Let's first refresh our memory on commands in containers and Docker.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Implementation Step  

Content:
We will then translate this into pods in the next lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
In this lecture we will look at commands, arguments and entry points in Docker.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
Let's start with a simple scenario.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
Say you were to run a Docker container from an ubuntu image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
When you run the docker run ubuntu command, it runs an instance of ubuntu image and exits immediately.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
If you were to list the running containers, you wouldn't see the container running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
If you list all containers, including those that are stopped, you will see that the new container you ran is in an excited state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Now why is that?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
Unlike virtual machines, containers are not meant to host an operating system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
Containers are meant to run a specific task or process, such as to host an instance of a web server or application server, or a database, or simply to carry out some kind of computation or analysis.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Once the task is complete, the container exits.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Concept  

Content:
A container only lives as long as the process inside it is alive.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
If the web service inside the container is stopped or crashes, the container exits.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
So who defines what process is run within the container?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
If you look at the Docker file for popular Docker images like nginx, you will see an instruction called cmd, which stands for command that defines the program that will be run within the container when it starts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
For the nginx image, it is the nginx command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
For the MySQL image it is the MySQL command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
What we tried to do earlier was to run a container with a plain ubuntu operating system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
Let us look at the docker file for this image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
You will see that it uses bash as the default command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
Now bash is not really a process like a web server or database server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
It is a shell that listens for inputs from a terminal.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
If it cannot find a terminal, it exits.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
When we run the ubuntu container earlier, Docker created a container from the ubuntu image and launched the bash program.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
By default, Docker does not attach a terminal to a container when it is run.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
And so the bash program does not find the terminal and so it exits.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
Since the process that was started when the container was created finished the container exits as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
So how do you specify a different command to start the container?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
One option is to append a command to the docker run command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
And that way it overrides the default command specified within the image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
In this case, I run the docker run ubuntu command with the sleep five command as the added option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
This way when the container starts, it runs the sleep program, waits for five seconds and then exits.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
But how do you make that change permanent?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
Say you want the image to always run the sleep command when it starts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
You would then create your own image from the base ubuntu image and specify a new command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
There are different ways of specifying the command, either the command simply as is in a shell form, or in a JSON array format like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Best Practice  

Content:
But remember, when you specify in a JSON array format, the first element in the array should be the executable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 41
Type: Warning/Pitfall  

Content:
In this case, the sleep program do not specify the command and parameters together like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Best Practice  

Content:
The command and its parameters should be separate elements in the list.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
So I now build my new image using the docker build command and name it as Ubuntu Sleeper.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
I could now simply run the Docker ubuntu sleeper command and get the same results.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 45
Type: Concept  

Content:
It always sleeps for five seconds and exits.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Concept  

Content:
But what if I wish to change the number of seconds it sleeps?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
Currently it is hard coded to five seconds.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Concept  

Content:
As we learned before, one option is to run the docker run command with the new command appended to it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 49
Type: Concept  

Content:
In this case, sleep ten.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
And so the command that will be run at startup will be sleep ten.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
But it doesn't look very good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
The name of the image, ubuntu Sleeper in itself implies that the container will sleep.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Best Practice  

Content:
So we shouldn't have to specify the sleep command again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
Instead, we would like it to be something like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 55
Type: Command  

Command:
```bash
Docker run ubuntu sleeper ten.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
We only want to pass in the number of seconds the container should sleep, and sleep command should be invoked automatically.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 57
Type: Concept  

Content:
And that is where the entry point instruction comes into play.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
Entry point defines the executable command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 59
Type: Concept  

Content:
CMD provides default args as in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 60
Type: Concept  

Content:
You can specify the program that will be run when the container starts, and whatever you specify on the command line.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
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
In this case, ten will get appended to the entry point.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 62
Type: Concept  

Content:
So the command that will be run when the container starts is sleep ten.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 63
Type: Comparison  

Content:
So that's the difference between the two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 64
Type: Concept  

Content:
In case of the CMD instruction the command line parameters passed will get replaced entirely, whereas in case of entrypoint the command line parameters will get appended.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
Now in the second case, what if I run the ubuntu sleeper image command without appending the number of seconds?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 66
Type: Troubleshooting  

Content:
Then the command at startup will be just sleep and you get the error that the operand is missing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 67
Type: Implementation Step  

Content:
So how do you configure a default value for the command if one was not specified in the command line.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 68
Type: Concept  

Content:
That's where you would use both entrypoint as well as the command instruction.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 69
Type: Concept  

Content:
In this case, the command instruction will be appended to the Entrypoint instruction.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 70
Type: Concept  

Content:
So at startup the command would be sleep five if you didn't specify any parameters in the command line.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 71
Type: Implementation Step  

Content:
If you did then that will override the command instruction.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 72
Type: Best Practice  

Content:
And remember for this to happen, you should always specify the entry point and command instructions in a JSON format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 73
Type: Operational Insight  

Content:
Finally, what if you really, really want to modify the entry point during runtime, say from sleep to an imaginary sleep 2.0 command?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
Well, in that case, you can override it by using the Entrypoint option in the docker run command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 75
Type: Implementation Step  

Content:
The final command at startup would then be sleep 2.0 ten.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Implementation Step  

Content:
Well, that's it for this lecture and I will see you in the next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 100_Commands and Arguments in Docker
- File: 100_Commands and Arguments in Docker.txt
- Topic: Commands and Arguments in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
