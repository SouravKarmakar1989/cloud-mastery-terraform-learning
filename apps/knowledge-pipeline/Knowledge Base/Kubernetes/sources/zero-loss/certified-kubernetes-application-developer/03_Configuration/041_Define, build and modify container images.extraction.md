# Extraction: certified-kubernetes-application-developer / 03_Configuration / 041_Define, build and modify container images

---

## Entry 1
Type: Concept  

Content:
(gentle upbeat music) -: Hello, and welcome to this lecture on Docker images.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
In this lecture, we're going to see how to create your own image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
Now, before that, why would you need to create your own image?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
It could either be because you cannot find a component or a service that you want to use as part of your application on Docker Hub already or you and your team decided that the application you're developing will be Dockerized for ease of shipping and deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
In this case, I'm going to containerize an application, a simple web application that I have built using the Python Flask framework.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
First we need to understand what we are containerizing or what application we are creating an image for and how the application is built.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
So start by thinking what you might do if you want to deploy the application manually.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
We write down the steps required in the right order.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
I'm creating an image for a simple web application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
If I were to set it up manually, I would start with an operating system like Ubuntu, then update the source repositories using the APT command, then install dependencies using the APT command, then install Python dependencies using the pip command, then copy over the source code of my application to a location like OPT, and then finally run the web server using the flask command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
Now that I have the instructions, create a Docker file using this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Here's a quick overview of the process of creating your own image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
First, create a Docker file named Docker File and write down the instructions for setting up your application in it, such as installing dependencies, where to copy the source code from and to, and what the entry point of the application is, et cetera.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Once done, build your image using the docker build command and specify the Docker File as input as well as a tag name for the image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
This will create an image locally on your system.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
To make it available on the public Docker Hub registry, run the docker push command and specify the name of the image you just created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
In this case, the name of the image is my account name, which is Moonshot, followed by the image name, which is my custom app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
Now, let's take a closer look at that Docker file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Command  

Command:
```bash
Docker file is a text file written in a specific format that Docker can understand.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
It's in an instruction and arguments format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Exam Tip  

Content:
For example, in this Docker file, everything on the left in caps is an instruction.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
In this case from, run, copy, and entry point are all instructions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Each of these instruct Docker to perform a specific action while creating the image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
Everything on the right is an argument to those instructions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Best Practice  

Content:
The first line from Ubuntu defines what the base OS should be for this container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
Every Docker image must be based off of another image, either an OS or another image that was created before based on an OS.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
You can find official releases of all operating systems on Docker Hub.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
It's important to note that all Docker files must start with a from instruction.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
The run instruction instructs Docker to run a particular command on those base images.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Exam Tip  

Content:
So at this point, Docker runs the apt-get update command to fetch the updated packages and installs required dependencies on the image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
Then the copy instruction copies files from the local system onto the Docker image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
In this case, the source code of our application is in the current folder, and I will be copying it over to the location, OPT source code, inside the Docker image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
And finally, entry point allows us to specify a command that will be run when the image is run as a container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Architecture  

Content:
When docker builds the images, it builds this in a layered architecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
Each line of instruction creates a new layer in the Docker image with just the changes from the previous layer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Exam Tip  

Content:
For example, the first layer is a base Ubuntu OS followed by the second instruction, that creates a second layer, which installs all the APT packages, and then the third instruction creates a third layer with the Python packages followed by the fourth layer that copies the source code over, and the final layer that updates the entry point of the image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
Since each layer only stores the changes from the previous layer, it is reflected in the size as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Exam Tip  

Content:
If you look at the base Ubuntu image, it is around 120 MB in size, the APT packages that I install is around 300 MB, and the remaining layers are small.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
You could see this information if you run the docker history command followed by the image name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
When you run the docker build command, you could see the various steps involved and the result of each task.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Troubleshooting  

Content:
All the layers built are cast, so the layered architecture helps you restart docker build from that particular step in case it fails.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
Or if you were to add new steps in the build process, you wouldn't have to start all over again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
All the layers built are cast by Docker.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Troubleshooting  

Content:
So in case a particular step was to fail, for example, in this case, step three failed, and you were to fix the issue and rerun docker build, it will reuse the previous layers from cache and continue to build the remaining layers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
The same is true if you were to add additional steps in the Docker file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Warning/Pitfall  

Content:
This way, rebuilding your image is faster and you don't have to wait for Docker to rebuild the entire image each time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
This is helpful especially when you update source code of your application, as it may change more frequently.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
Only the layers above the updated layers needs to be rebuild.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
We just saw a number of products containerized, such as databases, development tools, operating systems, et cetera, but that's just not it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
You can containerized almost all of the application, even simple ones like browsers or utilities like curl, applications like Spotify, Skype, et cetera.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
Basically, you can containerize everything.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
And going forward, I see that's how everyone is going to run applications.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
Nobody is going to install anything anymore going forward.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
Instead, they're just going to run it using Docker.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Warning/Pitfall  

Content:
And when they don't anymore, get rid of it easily without having to clean up too much. (gentle upbeat music)

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 041_Define, build and modify container images
- File: 041_Define, build and modify container images.txt
- Topic: Define, build and modify container images
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
