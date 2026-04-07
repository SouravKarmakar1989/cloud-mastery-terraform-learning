# Normalized Concept: Image Security

- Concept Key: image-security
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1134

## 1. Definition
- Narrator: Okay, we will now walk through the lab on security, image security.
- So, Docker registry is the one that we're gonna use for Docker registry.
- Now, we have an application running on our cluster.
- So, let's do it.
- And we see that we have a web- An application by the name web.
- And what image is the application using?
- So, let's take a look at in full set areas.
- So, let's select that.
- Now, we decided to use a modified version of the application from an internal private registry.
- So, I'm just going to copy this, and paste it here, and also add a slash.

## 2. First-Principles Mental Model
- So, the first question is, "What secret type must we choose for Docker registry?" So, if you look at the different types of secrets that we can create. you see that we have Docker registry, generic NGLs.
- Let us explore it first.
- Oh, the deploy.
- Okay, now let's take a look at the deployment web, and we see that it's using the engine X alpine image.
- So, update the image of the deployment to use a new image from my privateregistry.com/5,000.
- So, what we want to do is we want to edit the deployment, and we want it to pull the image from the private registry.
- So, if you look at it, the pod, this is the new pod that was created.
- So, the rolling update kicked in, and the deployment created a new pod with the new image, but it left the existing ones as is because only if the new pod was successful, and was in a ready state, it would kill the old pod, and then would create t...
- Now, create a secret object with the credentials required to access the registry.
- So let's create a secret.

## 3. Why This Exists
- Now, we decided to use a modified version of the application from an internal private registry.
- So, update the image of the deployment to use a new image from my privateregistry.com/5,000.
- So, we have a private registry, and we know that if you do not specify a registry before the image name it's going to the default- It's gonna pull it from the default location on Docker hub.
- So, what we want to do is we want to edit the deployment, and we want it to pull the image from the private registry.
- So, I'm just going to copy this, and paste it here, and also add a slash.
- Okay, so that's done.
- So, it says 'fail to pull image,' a malformed response.
- So, that's basically because it doesn't have the permissions to pull image from that repository.
- So, the answer to this question is No.
- Now, create a secret object with the credentials required to access the registry.

## 4. Internal Working
- So, the first question is, "What secret type must we choose for Docker registry?" So, if you look at the different types of secrets that we can create. you see that we have Docker registry, generic NGLs.
- Let us explore it first.
- Oh, the deploy.
- Okay, now let's take a look at the deployment web, and we see that it's using the engine X alpine image.
- So, update the image of the deployment to use a new image from my privateregistry.com/5,000.
- So, what we want to do is we want to edit the deployment, and we want it to pull the image from the private registry.
- So, if you look at it, the pod, this is the new pod that was created.
- So, the rolling update kicked in, and the deployment created a new pod with the new image, but it left the existing ones as is because only if the new pod was successful, and was in a ready state, it would kill the old pod, and then would create t...
- Now, create a secret object with the credentials required to access the registry.
- So let's create a secret.
- You cuddle, create secret, and this has to be Docker registry.
- So, that's been created.

## 5. Key Objects / Fields / Relationships
- So, the first question is, "What secret type must we choose for Docker registry?" So, if you look at the different types of secrets that we can create. you see that we have Docker registry, generic NGLs.
- Okay, now let's take a look at the deployment web, and we see that it's using the engine X alpine image.
- So, update the image of the deployment to use a new image from my privateregistry.com/5,000.
- So, what we want to do is we want to edit the deployment, and we want it to pull the image from the private registry.
- So, let's see if- Let's see if the pods are running.
- So, if you look at it, the pod, this is the new pod that was created.
- So, the rolling update kicked in, and the deployment created a new pod with the new image, but it left the existing ones as is because only if the new pod was successful, and was in a ready state, it would kill the old pod, and then would create t...
- So- but in this case, it's not even- the new pod is not running.
- Now, create a secret object with the credentials required to access the registry.
- So let's create a secret.

## 6. YAML Deep Dive
- So, we have a private registry, and we know that if you do not specify a registry before the image name it's going to the default- It's gonna pull it from the default location on Docker hub.
- So, under the spec for the pod, we must add the image pool secrets.
- We deployed a number of different kinds of pods hosting different kinds of applications throughout this course, like web apps and databases and Redis cache, etc..
- Since we have not specified the location where these images are to be pulled from, it is assumed to be Dockers default registry.
- You may choose to make a repository private so that it can be accessed using a set of credentials from Dockers perspective.
- We then specify the registry server name, the username to access the registry, the password, and the email address of the user.
- We then specify the secret inside our Pod definition file under the Image Pull Secrets section.
- Once done, build your image using the docker build command and specify the Docker File as input as well as a tag name for the image.
- To make it available on the public Docker Hub registry, run the docker push command and specify the name of the image you just created.
- Each of these instruct Docker to perform a specific action while creating the image.

## 7. kubectl / command usage
- So, let's take a look at the help, and we see that here's a sample command.
- So, let's run this command along with the rest of it.
- To run a container using a private image, you first login to your private registry using a Docker login command.
- If I were to set it up manually, I would start with an operating system like Ubuntu, then update the source repositories using the APT command, then install dependencies using the APT command, then install Python dependencies using the pip command...
- Once done, build your image using the docker build command and specify the Docker File as input as well as a tag name for the image.
- To make it available on the public Docker Hub registry, run the docker push command and specify the name of the image you just created.
- The run instruction instructs Docker to run a particular command on those base images.
- So at this point, Docker runs the apt-get update command to fetch the updated packages and installs required dependencies on the image.
- And finally, entry point allows us to specify a command that will be run when the image is run as a container.
- You could see this information if you run the docker history command followed by the image name.

## 8. Real-world scenarios
- Narrator: Okay, we will now walk through the lab on security, image security.
- Now, we have an application running on our cluster.
- Oh, the deploy.
- Okay, now let's take a look at the deployment web, and we see that it's using the engine X alpine image.
- So, update the image of the deployment to use a new image from my privateregistry.com/5,000.
- So, what we want to do is we want to edit the deployment, and we want it to pull the image from the private registry.
- So, the rolling update kicked in, and the deployment created a new pod with the new image, but it left the existing ones as is because only if the new pod was successful, and was in a ready state, it would kill the old pod, and then would create t...
- Now configure the deployment to use credentials from the new secret to pull images from the private registry.
- What we have to do is we have to configure the the deployment, or the pod to use this image.
- So, let us copy that, and let's edit the deployment called web.

## 9. Pitfalls and misunderstandings
- So, we have a private registry, and we know that if you do not specify a registry before the image name it's going to the default- It's gonna pull it from the default location on Docker hub.
- And don't worry about the status for now, because we're gonna fix that in a bit.
- So if you don't provide a user or account name, it assumes it to be library.
- This way, rebuilding your image is faster and you don't have to wait for Docker to rebuild the entire image each time.
- And when they don't anymore, get rid of it easily without having to clean up too much. (gentle upbeat music)
- Now, if you don't want a token to be automatically created and mounted inside the pod for the service account, you may add the auto mount Service account token key to false like this.
- You don't have to provide it manually.
- For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.
- Then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.

## 10. Troubleshooting angle
- All the layers built are cast, so the layered architecture helps you restart docker build from that particular step in case it fails.
- So in case a particular step was to fail, for example, in this case, step three failed, and you were to fix the issue and rerun docker build, it will reuse the previous layers from cache and continue to build the remaining layers.
- So this excerpt from the Kubernetes Enhancement Proposal for creating bound service account tokens describes this form of JWT to be having some security and scalability related issues.
- Moreover, each JWT requires a separate secret object per service account, which results in scalability issues.
- If I run this command, it would throw an error that says the namespace blue is not found.
- They are very basic and prone to errors.
- And all of these come with support for YAML files, and they will help in highlighting errors in a YAML file and make making sure that you develop them right.
- But they won't natively tell you if there are errors within the Kubernetes manifest files that you are developing.
- Uh, so those, uh, tools that can first verify structure of your YAML file and the syntax, making sure that it works fine, and also, um, point out errors related to Kubernetes.
- Um, and you will notice that there is this error indicated, um, here below the name.

## 11. CKA / CKAD relevance
- For example, in this Docker file, everything on the left in caps is an instruction.
- So at this point, Docker runs the apt-get update command to fetch the updated packages and installs required dependencies on the image.
- For example, the first layer is a base Ubuntu OS followed by the second instruction, that creates a second layer, which installs all the APT packages, and then the third instruction creates a third layer with the Python packages followed by the fo...
- If you look at the base Ubuntu image, it is around 120 MB in size, the APT packages that I install is around 300 MB, and the remaining layers are small.
- For example, a monitoring application like Prometheus uses a service account to poll the Kubernetes API for performance metrics.
- The second example I've built a simple Kubernetes dashboard application named my Kubernetes Dashboard.
- For example, in this simple example using Curl, you could provide the bearer token as an authorization header while making a Rest call to the Kubernetes API.
- However, as part of the Kubernetes for the application developers exam curriculum, you only need to know how to work with service accounts.
- For example, a monitoring application like Prometheus uses a service account to pull the Kubernetes API for performance metrics.
- Let's take an example.

## 12. Source Contributions
- Matched Global Concepts:
  - Lab Solution - Image Security (match score: 3, notes: 61)
  - Image Security (match score: 3, notes: 48)
  - Define, build and modify container images (match score: 2, notes: 55)
  - Service Accounts (match score: 2, notes: 181)
  - (2025 Updates)Admission Controllers (match score: 2, notes: 65)
  - Admission Controllers (match score: 2, notes: 66)
  - Demo - YAML - Tips (match score: 2, notes: 173)
  - Mock Exam - 3 - Solution _ (Optional) (match score: 2, notes: 485)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 65 note entries
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 185 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 485 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 160 note entries
  - certified-kubernetes-application-developer / 09_Security: 66 note entries
  - learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments: 173 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 2 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 5 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 7 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 11 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 14 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 15 | Type Warning/Pitfall
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 16 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 174_Lab Solution - Image Security.extraction.md | Entry 20 | Type Concept

