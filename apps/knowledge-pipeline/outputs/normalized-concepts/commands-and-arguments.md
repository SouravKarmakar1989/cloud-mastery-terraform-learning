# Normalized Concept: Commands And Arguments

- Concept Key: commands-and-arguments
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1152

## 1. Definition
- In this lecture we will look at commands and arguments in a Kubernetes pod.
- We named it Ubuntu Sleeper and we ran it using the docker command Docker run ubuntu sleeper.
- By default it sleeps for five seconds, but you can override it by passing a command line argument.
- We start with a blank pod definition template, input the name of the pod and specify the image name.
- Now, if you need the container to sleep for 10s as in the second command, how do you specify the additional argument in the pod definition file?
- Anything that is appended to the docker run command will go into the args property of the pod definition file in the form of an array like this.
- The docker file has an entry point as well as a cmd instructions Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.
- We override the cmd instruction in the docker file.
- But what if you need to override the entry point, say from sleep to an imaginary sleep 2.0 command?
- In the Docker world, we would run the docker run command with the entry point option set to the new command.

## 2. First-Principles Mental Model
- In the previous lecture, we created a simple Docker image that sleeps for a given number of seconds.
- We will now create a pod using this image.
- When this pod is created, it creates a container from the specified image and the container sleeps for five seconds before exiting.
- Let us try to relate that to the docker file we created earlier.
- So the first question is, how many pods exist on the system?
- Okay, so the next one is to create a pod with the ubuntu image, to run a container to sleep for 5000 seconds, modify the file ubuntu-sleeper-2.
- So that's the first thing.
- So sleep, and then 5000.
- Now, one of the things to remember is when you're specifying a command, a command always have to have the command as the first item.
- So let's go ahead and create that file.

## 3. Why This Exists
- Now, if you need the container to sleep for 10s as in the second command, how do you specify the additional argument in the pod definition file?
- Anything that is appended to the docker run command will go into the args property of the pod definition file in the form of an array like this.
- Let us try to relate that to the docker file we created earlier.
- The docker file has an entry point as well as a cmd instructions Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.
- But what if you need to override the entry point, say from sleep to an imaginary sleep 2.0 command?
- In the Docker world, we would run the docker run command with the entry point option set to the new command.
- The command field corresponds to entry point instruction in the docker file.
- So to summarize, there are two fields that correspond to two instructions in the docker file.
- Head over to the Coding exercises section and practice viewing, configuring and troubleshooting commands and arguments in Kubernetes.
- The docker file has an entry point as well as a cmd instruction Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.

## 4. Internal Working
- In the previous lecture, we created a simple Docker image that sleeps for a given number of seconds.
- We will now create a pod using this image.
- When this pod is created, it creates a container from the specified image and the container sleeps for five seconds before exiting.
- Let us try to relate that to the docker file we created earlier.
- So the first question is, how many pods exist on the system?
- Okay, so the next one is to create a pod with the ubuntu image, to run a container to sleep for 5000 seconds, modify the file ubuntu-sleeper-2.
- So that's the first thing.
- So sleep, and then 5000.
- Now, one of the things to remember is when you're specifying a command, a command always have to have the command as the first item.
- So let's go ahead and create that file.
- The next task is to create a pod using the file named ubuntu-sleeper-3.yaml.
- So let's try and create this this pod.

## 5. Key Objects / Fields / Relationships
- In this lecture we will look at commands and arguments in a Kubernetes pod.
- We will now create a pod using this image.
- We start with a blank pod definition template, input the name of the pod and specify the image name.
- When this pod is created, it creates a container from the specified image and the container sleeps for five seconds before exiting.
- Now, if you need the container to sleep for 10s as in the second command, how do you specify the additional argument in the pod definition file?
- Anything that is appended to the docker run command will go into the args property of the pod definition file in the form of an array like this.
- The docker file has an entry point as well as a cmd instructions Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.
- The corresponding entry in the pod definition file would be using a command field.
- The docker file has an entry point as well as a cmd instruction Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.
- So the first question is, how many pods exist on the system?

## 6. YAML Deep Dive
- We start with a blank pod definition template, input the name of the pod and specify the image name.
- When this pod is created, it creates a container from the specified image and the container sleeps for five seconds before exiting.
- Now, if you need the container to sleep for 10s as in the second command, how do you specify the additional argument in the pod definition file?
- The docker file has an entry point as well as a cmd instructions Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.
- The docker file has an entry point as well as a cmd instruction Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.
- Now remember that when you specify command, the command is always an array, right.
- So this is, that's one way of specifying an array.
- It's a single kind of item in the area.
- Now, one of the things to remember is when you're specifying a command, a command always have to have the command as the first item.
- And the argument, you could specify the argument either in the same command as another item, or you could provide it as as an argument.

## 7. kubectl / command usage
- In this lecture we will look at commands and arguments in a Kubernetes pod.
- We named it Ubuntu Sleeper and we ran it using the docker command Docker run ubuntu sleeper.
- By default it sleeps for five seconds, but you can override it by passing a command line argument.
- Now, if you need the container to sleep for 10s as in the second command, how do you specify the additional argument in the pod definition file?
- Anything that is appended to the docker run command will go into the args property of the pod definition file in the form of an array like this.
- The docker file has an entry point as well as a cmd instructions Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.
- But what if you need to override the entry point, say from sleep to an imaginary sleep 2.0 command?
- In the Docker world, we would run the docker run command with the entry point option set to the new command.
- The corresponding entry in the pod definition file would be using a command field.
- The command field corresponds to entry point instruction in the docker file.

## 8. Real-world scenarios
- Head over to the Coding exercises section and practice viewing, configuring and troubleshooting commands and arguments in Kubernetes.
- -: Okay, in this video we're gonna go over the lab on commands and arguments.
- And that's also, that's the best practice.
- So for example, in general if I had this application locally I would run python app.py or if there's an executable cob:web app I would actually run web app, something like this.
- So you have image which is specifically for the kubectl utility and there may be many other arguments such as all of these dry run labels.
- -: Okay, in this video, we're going to go over the lab on commands and arguments.
- So for example, in general if I had this application locally, I would run python abdo py or if there's an executable called web app.
- So you have image which is specifically for the queue cuttle utility and there may be many other arguments such as all of these dry run labels.
- Now bash is not really a process like a web server or database server.
- Finally, what if you really, really want to modify the entry point during runtime, say from sleep to an imaginary sleep 2.0 command?

## 9. Pitfalls and misunderstandings
- And I do not see any arguments so that's the command.
- So taking a quick look, I don't see anything wrong with it.
- So this exercise was just to kind of make sure you know that you don't accidentally put in a number instead of a string.
- In this case we don't, we're not going to do that.
- And, I do not see any arguments.
- In this case, the sleep program do not specify the command and parameters together like this.
- If you do not wish to create a config map definition file, you could simply use the cube control create config map command and specify the required arguments.
- We don't need the certificate stuff, so we'll remove that.
- Then we need to add the annotations, so the annotations for the rewrite target, because as we discussed earlier we don't want it to go to a wear and watch URL and then this is, so to prevent the redirect, SSL redirect we have to add the false, the...
- We don't need the certificate stuff.

## 10. Troubleshooting angle
- Head over to the Coding exercises section and practice viewing, configuring and troubleshooting commands and arguments in Kubernetes.
- Okay, and there's something wrong with it, so try and fix it.
- So try and fix it.
- Then the command at startup will be just sleep and you get the error that the operand is missing.
- So head over to the coding exercises section and practice viewing, configuring and troubleshooting environment variables on a live Kubernetes environment.
- There are just, there are some issues.
- So it looks like there are some issues.
- So there's, there's an issue.
- Line 36 looks like a YAML issue.
- So let's, let's edit the file and try and fix those.

## 11. CKA / CKAD relevance
- So this is one of the approach you can use in the exam, if you have to edit something that's not actually editable directly, or you could edit the pod itself, the pod definition that you have locally and update that.
- So for example, in general if I had this application locally I would run python app.py or if there's an executable cob:web app I would actually run web app, something like this.
- So for example, in general if I had this application locally, I would run python abdo py or if there's an executable called web app.
- This is not listed as a required topic in the certification curriculum, but I think it's important to explain as it is a topic that is usually overlooked.
- In this example, we are creating a config map by the name appconfig with a key value pair of app color equals blue.
- If you wish to add additional key value pairs, simply specify the from literal options multiple times.
- So that's going to be useful in the exam.
- So we can have multiple rules like this.
- So that's gonna be useful in the exam.
- So we can have multiple rules like this, watch.

## 12. Source Contributions
- Matched Global Concepts:
  - Commands and Arguments in Kubernetes (match score: 3, notes: 43)
  - Lab Solution - Commands and Arguments (Optional) (match score: 3, notes: 172)
  - Solution - Commands and Arguments (Optional) (match score: 3, notes: 197)
  - Commands and Arguments in Docker (match score: 3, notes: 151)
  - Configuring ConfigMaps in Applications (match score: 2, notes: 53)
  - Solution_ Ingress Networking - 2 (match score: 2, notes: 156)
  - Lab Solution - Ingress Networking - 2 (optional) (match score: 2, notes: 171)
  - Lab Solution - Explore DNS (optional) (match score: 2, notes: 209)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management: 322 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 380 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 294 note entries
  - certified-kubernetes-application-developer / 07_Services & Networking: 156 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 2 | Type Implementation Step
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 5 | Type Implementation Step
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 7 | Type Implementation Step
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 10 | Type Implementation Step
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 101_Commands and Arguments in Kubernetes.extraction.md | Entry 20 | Type Concept

