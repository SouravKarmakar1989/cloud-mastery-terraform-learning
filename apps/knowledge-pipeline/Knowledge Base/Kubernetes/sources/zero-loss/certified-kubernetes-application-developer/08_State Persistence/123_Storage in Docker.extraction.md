# Extraction: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker

---

## Entry 1
Type: Concept  

Content:
In this lecture we are going to talk about Docker storage drivers and file systems.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
We're going to see where and how Docker stores data and how it manages file systems of the containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
Let us start with how Docker stores data on the local file system.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
When you install Docker on a system, it creates this folder structure at var lib docker.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Exam Tip  

Content:
You have multiple folders under it called aufs, containers, image volumes, etc. this is where Docker stores all its data by default.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
When I say data, I mean files related to images and containers running on the Docker host.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Exam Tip  

Content:
For example, all files related to containers are stored under the containers folder, and the files related to images are stored under the image folder.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 8
Type: Implementation Step  

Content:
Any volumes created by the Docker containers are created under the volumes folder.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Warning/Pitfall  

Content:
Well, don't worry about that for now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
We will come back to that in a bit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
For now, let's just understand where Docker stores its files and in what format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
So how exactly does Docker store the files of an image and a container?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Architecture  

Content:
To understand that, we need to understand Docker's layered architecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Architecture  

Content:
Let's quickly recap something we learned when Docker builds images, it builds these in a layered architecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Implementation Step  

Content:
Each line of instruction in the Docker file creates a new layer in the Docker image, with just the changes from the previous layer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Exam Tip  

Content:
For example, the first layer is a base ubuntu distribution, followed by the second instruction that creates a second layer which installs all the apt packages, and then the third instruction creates a third layer, which with the Python packages, followed by the fourth layer that copies the source code over, and then finally the fifth layer that updates the entry point of the image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
Since each layer only stores the changes from the previous layer, it is reflected in the size as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
If you look at the base ubuntu image, it is around 120MB in size.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Exam Tip  

Content:
The APT packages that are installed is around 300 MB and then the remaining layers are small.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 20
Type: Architecture  

Content:
To understand the advantages of this layered architecture, let's consider a second application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Implementation Step  

Content:
This application has a different Docker file, but is very similar to our first application, as it uses the same base image as ubuntu, uses the same Python and Flask dependencies, but uses a different source code to create a different application, and so a different entry point as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
When I run the docker build command to build a new image for this application, since the first three layers of both the applications are the same, Docker is not going to build the first three layers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 23
Type: Implementation Step  

Content:
Instead, it reuses the same three layers it built for the first application from the cache, and only creates the last two layers with the new sources and the new entry point.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
This way Docker builds images faster and efficiently saves disk space.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
This is also applicable if you were to update your application code whenever you update your application code, such as the App.py.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
In this case, Docker simply reuses all the previous layers from cache and rebuilds the application image by updating the latest source code, thus saving us a lot of time during rebuilds and updates.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
Let's rearrange the layers bottom up so we can understand it better.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Exam Tip  

Content:
At the bottom we have the base ubuntu layer, then the packages, then the dependencies, and then the source code of the application and then the entry point.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 29
Type: Implementation Step  

Content:
All of these layers are created when we run the docker build command to form the final Docker image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Concept  

Content:
So all of these are the Docker image layers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
Once the build is complete, you cannot modify the contents of these layers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
And so they are read only.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
And you can only modify them by initiating a new build.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Implementation Step  

Content:
When you run a container based off of this image using the docker run command, Docker creates a container based off of these layers and creates a new writable layer on top of the image layer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
The writable layer is used to store data created by the container, such as log files written by the applications.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
Any temporary files generated by the container, or just any file modified by the user on that container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
The life of this layer, though, is only as long as the container is alive.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
When the container is destroyed, this layer and all of the changes stored in it are also destroyed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
Remember that the same image layer is shared by all containers created using this image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Implementation Step  

Content:
If I were to log in to the newly created container and say create a new file called temp dot txt, it will create that file in the container layer which is read and write.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
We just said that the files in the image layer are read only, meaning you cannot edit anything in those layers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Exam Tip  

Content:
Let's take an example of our application code.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
Since we bake our code into the image, the code is part of the image layer and as such is read only.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
After running a container, what if I wish to modify the source code to say test a change?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Exam Tip  

Content:
Remember, the same image layer may be shared between multiple containers created from this image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
So does it mean that I cannot modify this file inside the container?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
No.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 48
Type: Concept  

Content:
I can still modify this file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
But before I save the modified file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Command  

Command:
```bash
Docker automatically creates a copy of the file in the read write layer, and I will then be modifying a different version of the file in the read write layer.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
All future modifications will be done on this copy of the file in the read write layer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
This is called copy on write mechanism.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 53
Type: Concept  

Content:
The image layer being read only just means that the files in these layers will not be modified in the image itself.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 54
Type: Concept  

Content:
So the image will remain the same all the time until you rebuild the image using the docker build command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
What happens when we get rid of the container?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 56
Type: Concept  

Content:
All of the data that was stored in the container layer also gets deleted.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
The change we made to the App.py and the new temp file we created will also get removed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
So what if we wish to persist this data.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 59
Type: Exam Tip  

Content:
For example, if we were working with a database and we would like to preserve the data created by the container, we could add a persistent volume to the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 60
Type: Implementation Step  

Content:
To do this, first create a volume using the Docker volume create command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 61
Type: Implementation Step  

Content:
So when I run the Docker volume create data underscore volume command, it creates a folder called data underscore volume under the var lib docker volumes directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 62
Type: Implementation Step  

Content:
Then when I run the docker container using the docker run command, I could mount this volume inside the Docker containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
Read write layer using the dash v option like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
So I would do a docker run dash v, then specify my newly created volume name, followed by a colon and the location inside my container, which is the default location where MySQL stores data.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 65
Type: Implementation Step  

Content:
And that is var lib MySQL and then the image name MySQL.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
This will create a new container and mount the data volume we created into var lib mysql folder inside the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
So all data written by the database is in fact stored on the volume created on the docker host.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
Even if the container is destroyed, the data is still active.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
Now what if you didn't run the Docker volume?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 70
Type: Implementation Step  

Content:
Create command to create the volume before the docker run command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 71
Type: Exam Tip  

Content:
For example, if I run the docker run command to create a new instance of MySQL container with the volume data underscore volume two, which I have not created yet, Docker will automatically create a volume named data, underscore volume two and mount it to the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
You should be able to see all these volumes if you list the contents of the var lib docker volumes folder.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 73
Type: Implementation Step  

Content:
This is called volume mounting as we are mounting a volume created by Docker under the var lib docker volumes folder.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 74
Type: Concept  

Content:
But what if we had our data already at another location?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 75
Type: Exam Tip  

Content:
For example, let's say we have some external storage on the docker host at forward slash data, and we would like to store database data on that volume and not in the default var lib docker volumes folder.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
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
In that case we would run a container using the command docker run dash v, but in this case we will provide the complete path to the folder we would like to mount.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
That is slash data or slash MySQL.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Implementation Step  

Content:
And so it will create a container and mount the folder to the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 79
Type: Concept  

Content:
This is called bind mounting.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 80
Type: Concept  

Content:
So there are two types of mounts a volume mounting and a bind mount.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 81
Type: Concept  

Content:
Volume mount mounts a volume from the volumes directory and bind mount mounts a directory from any location on the docker host.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 82
Type: Concept  

Content:
One final point to note before I let you go.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
Using the dash V is an old style.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
The new way is to use dash mount option.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 85
Type: Concept  

Content:
The dash dash mount is the preferred way, as it is more verbose, so you have to specify each parameter in a key equals value format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 86
Type: Exam Tip  

Content:
For example, the previous command can be written with the dash mount option as this using the type, source and target options.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 87
Type: Concept  

Content:
The type in this case is bind.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 88
Type: Concept  

Content:
The source is the location on my host, and target is the location on my container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 89
Type: Concept  

Content:
So who is responsible for doing all of these operations?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 90
Type: Architecture  

Content:
Maintaining the layered architecture, creating a writable layer, moving files across layers to enable copy and write, etc. it's the storage drivers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Architecture  

Content:
So Docker uses storage drivers to enable layered architecture, some of the common storage drivers are UFS, btrfs, ZFS Device Mapper, overlay and Overlay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
Two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 93
Type: Concept  

Content:
The selection of the storage driver depends on the underlying OS being used.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 94
Type: Exam Tip  

Content:
For example, with ubuntu, the default storage driver is UFS, whereas this storage driver is not available on other operating systems like fedora or CentOS.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
In that case, device Mapper may be a better option.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 96
Type: Command  

Command:
```bash
Docker will choose the best storage driver available automatically based on the operating system.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 97
Type: Concept  

Content:
The different storage drivers also provide different performance and stability characteristics, so you may want to choose one that fits the needs of your application and your organization.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 98
Type: Concept  

Content:
If you would like to read more on any of these storage drivers, please refer to the links in the attached documentation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 99
Type: Architecture  

Content:
For now, that is all from the Docker architecture concepts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 100
Type: Implementation Step  

Content:
See you in the next lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 123_Storage in Docker
- File: 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
