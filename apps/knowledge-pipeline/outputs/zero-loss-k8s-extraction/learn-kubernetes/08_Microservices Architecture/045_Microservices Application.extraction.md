# Extraction: learn-kubernetes / 08_Microservices Architecture / 045_Microservices Application

---

## Entry 1
Type: Architecture  

Content:
In this lecture, we will try and understand microservices architecture using a simple web application.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Exam Tip  

Content:
We will then try and deploy this web application on multiple different Kubernetes platforms such as Google Cloud Platform.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
I'm going to use a simple application developed by Docker to demonstrate the various features available in running an application stack on Docker.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
So let's first get familiarized with the application, because we will be working with the same application in different sections through the rest of this course.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
This is a sample voting application which provides an interface for a user to vote, and another interface to show the results.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
The application consists of various components such as the voting app, which is a web application developed in Python to provide the user with an interface to choose between two options a cat and a dog.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
When you make a selection, the vote is stored in readers.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
For those of you who are new to readers, readers.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
In this case, serves as a database in memory.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
This vote is then processed by the worker, which is an application written in dotnet.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
The worker application takes the new vote and updates the persistence database, which is a Postgres SQL.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
In our case, the Postgres SQL simply has a table with the number of votes for each category.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Cats and dogs.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
In this case, it increments the number of votes for cats as our vote was for cats.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Finally, the result of the vote is displayed in a web interface, which is another web application developed in Node.js.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
This resulting application reads the count of votes from the Postgres SQL database and displays it to the user.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Architecture  

Content:
So that is the architecture and data flow of this simple voting application stack.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Exam Tip  

Content:
As you can see, this sample application is built with a combination of different services, different development tools and multiple different development platforms such as Python, Node.js, DotNet, etc. this sample application will be used to showcase how easy it is to set up an entire application stack consisting of diverse components in Docker.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Let us see how we can put together this application stack on a single Docker engine using Docker run commands.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Let us assume that all images of applications are already built and are available on Docker repository.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Let us start with the data layer.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
First, we run the docker run command to start an instance of redice by running the docker run command.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
We will add the dash d parameter to run this container in the background, and we will also name the container Redice.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
Now naming the containers is important.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Why is that important?

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
Hold that thought.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
We will come to that in a bit.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
Next we will deploy the PostgreSQL database by running the docker run Postgres command.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
This time too, we will add the dash D option to run this in the background and name this container db for database.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
Next we will start with the application services.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
We will deploy a front end app for voting interface by running an instance of voting app image.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Run the docker run command and name the instance vote.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Since this is a web server, it has a web UI instance running on port 80.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
We will publish that port to 5000 on the host system so we can access it from a browser.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
Next, we will deploy the web application that shows the results to the user.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
For this, we deploy a container using the results app image and publish port 80 to port 5001 on the host.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
This way we can access the web UI of the resulting app on a browser.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
Finally, we deploy the worker by running an instance of the worker image.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
Okay, now this is all good and we can see that all the instances are running on the host.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
But there is some problem.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
It just does not seem to work.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
The problem is that we have successfully run all the different containers, but we haven't actually linked them together.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
As in, we haven't told the voting web application to use this particular Redis instance.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Exam Tip  

Content:
There could be multiple instances running.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
We haven't told the worker and the resulting app to use this particular PostgreSQL database that we ran.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So how do we do that?

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 47
Type: Concept  

Content:
That is where we use links.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
Link is a command line option which can be used to link two containers together.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Exam Tip  

Content:
For example, the voting app web service is dependent on the Redice service. disservice when the web server starts.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
As you can see in this piece of code on the web server.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
It looks for a service running on host reads, but the voting app container cannot resolve a host by the name reads.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
To make the voting app aware of the reads service, we add a link option while running the voting app container to link it to the read this container.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
Adding a dash dash link option to the docker run command and specifying the name of the container which is which, in this case is read, is followed by a colon and the name of the host that the voting app is looking for, which is also read this in this case.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
Remember that this is why we named the container when we ran it the first time, so we could use its name while creating a link.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
What this is in fact doing is it creates an entry into the etc. host file on the voting app container.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
Adding an entry with the hostname reads with the internal IP of the After this container.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
Similarly, we add a link for the result app to communicate with the database by adding a link option to refer the database by the name db.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
As you can see in this source code of the application, it makes an attempt to connect to a Postgres database on host DB.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Finally, the worker application requires access to both the redice as well as the Postgres database.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So we add two links to the worker application, one link to link the redice and the other link to link Postgres database.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Warning/Pitfall  

Content:
Note that using links this way is deprecated and the support may be removed in a future in Docker.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
This is because, as we will see in some time, advanced and newer concepts in Docker Swarm and networking supports better ways of achieving what we just did here with links.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
But I wanted to mention it anyway, so you learn the concept from the very basics.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 045_Microservices Application
- File: 045_Microservices Application.txt
- Topic: Microservices Application
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
