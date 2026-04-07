# Normalized Concept: Deployments

- Concept Key: deployments
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 698

## 1. Definition
- (bright music) Instructor: In the last lecture, we learned about the kustomize build command.
- It's pretty long, but let me explain what it does.
- So when you run this command, it's going to make use of the Linux pipe utility.
- And this isn't something that's specific to Kubernetes or kustomize.
- This is a feature of Linux, or really any bash or shell.
- Now let's take a look at how we can delete resources using kustomize.
- So the command that we're gonna run is kustomize build k8.
- So the -k flag basically means kustomize in this case.
- (upbeat music) Instructor: In the last lecture, we learned about the Kustomize build command.
- And this isn't something that's specific to Kubernetes or Kustomize, this is a feature of Linux, or really any bash or shell.

## 2. First-Principles Mental Model
- And we learned that when we run this command, it's going to take all of our resources, it's going to apply the all...
- All the necessary transformations, and then it's going to spit out the final configs onto our console.
- So if you log into your Kubernetes cluster and you run a kubectl get pods, or get deployments, or get services, you'll see that nothing was created.
- So you might be thinking, well, "How exactly do we apply these configs?" We're making use of this awesome utility called kustomize, but we can't actually apply it to our Kubernetes cluster.
- Well, the command that you actually have to run, to run kustomize, build all the configs and then apply those configs is this following command right here.
- And so what this pipe utility does is it takes the output of the first command, which is the kustomize build, k8s or whatever to the is to the left of the pipe utility.
- And it redirects the output of first command into the input of the second command, which is the command to the right of the pipe utility.
- So we're basically running the traditional kubectl apply -f, but we're applying a file that comes from the output of the first command, which is the kustomize build k8s command.
- So that's all it's doing is taking the output of one command and applying it as the input of the other command.
- And so that allows us to make use of the usual kubectl apply, and that creates our nginx deployment as well as the nginx service.

## 3. Why This Exists
- And we learned that when we run this command, it's going to take all of our resources, it's going to apply the all...
- All the necessary transformations, and then it's going to spit out the final configs onto our console.
- And what's important to understand is that we don't actually deploy or apply any of these configs.
- So you might be thinking, well, "How exactly do we apply these configs?" We're making use of this awesome utility called kustomize, but we can't actually apply it to our Kubernetes cluster.
- Well, the command that you actually have to run, to run kustomize, build all the configs and then apply those configs is this following command right here.
- So when you run this command, it's going to make use of the Linux pipe utility.
- And this isn't something that's specific to Kubernetes or kustomize.
- And so what this pipe utility does is it takes the output of the first command, which is the kustomize build, k8s or whatever to the is to the left of the pipe utility.
- And it redirects the output of first command into the input of the second command, which is the command to the right of the pipe utility.
- So that's all it's doing is taking the output of one command and applying it as the input of the other command.

## 4. Internal Working
- And we learned that when we run this command, it's going to take all of our resources, it's going to apply the all...
- All the necessary transformations, and then it's going to spit out the final configs onto our console.
- So if you log into your Kubernetes cluster and you run a kubectl get pods, or get deployments, or get services, you'll see that nothing was created.
- So you might be thinking, well, "How exactly do we apply these configs?" We're making use of this awesome utility called kustomize, but we can't actually apply it to our Kubernetes cluster.
- Well, the command that you actually have to run, to run kustomize, build all the configs and then apply those configs is this following command right here.
- And so what this pipe utility does is it takes the output of the first command, which is the kustomize build, k8s or whatever to the is to the left of the pipe utility.
- And it redirects the output of first command into the input of the second command, which is the command to the right of the pipe utility.
- So we're basically running the traditional kubectl apply -f, but we're applying a file that comes from the output of the first command, which is the kustomize build k8s command.
- So that's all it's doing is taking the output of one command and applying it as the input of the other command.
- And so that allows us to make use of the usual kubectl apply, and that creates our nginx deployment as well as the nginx service.
- And if you want to take a look at how to do this natively with just the kubectl tool, you can do kubectl apply, and then you do a -k instead of a -f, and then you provide the directory where the customization .YAML file exists.
- That's how we apply these resources.

## 5. Key Objects / Fields / Relationships
- (bright music) Instructor: In the last lecture, we learned about the kustomize build command.
- So if you log into your Kubernetes cluster and you run a kubectl get pods, or get deployments, or get services, you'll see that nothing was created.
- So you might be thinking, well, "How exactly do we apply these configs?" We're making use of this awesome utility called kustomize, but we can't actually apply it to our Kubernetes cluster.
- Well, the command that you actually have to run, to run kustomize, build all the configs and then apply those configs is this following command right here.
- And this isn't something that's specific to Kubernetes or kustomize.
- And so what this pipe utility does is it takes the output of the first command, which is the kustomize build, k8s or whatever to the is to the left of the pipe utility.
- So we're basically running the traditional kubectl apply -f, but we're applying a file that comes from the output of the first command, which is the kustomize build k8s command.
- And so that allows us to make use of the usual kubectl apply, and that creates our nginx deployment as well as the nginx service.
- Now let's take a look at how we can delete resources using kustomize.
- So the command that we're gonna run is kustomize build k8.

## 6. YAML Deep Dive
- And this isn't something that's specific to Kubernetes or kustomize.
- And if you want to take a look at how to do this natively with just the kubectl tool, you can do kubectl apply, and then you do a -k instead of a -f, and then you provide the directory where the customization .YAML file exists.
- And this isn't something that's specific to Kubernetes or Kustomize, this is a feature of Linux, or really any bash or shell.
- And if you wanna take a look at how to do this natively with just the kubectl tool, you can do kubectl apply, and then you do a -k instead of a -f, and then you provide the directory where the Kustomization.yaml file exists.
- So when the PVC is created and you inspect it, you will see that a storage class default is added to it.
- Even though you hadn't specified it during the creation.
- There are two special admission controllers available mutating Admission Webhook and then Validating admission Webhook.
- And we then specify the path within the JSON object that needs to be targeted for change.
- In this case, it is slash metadata slash label slash users, and then the value that needs to be added if it is an add operation.
- So this is just a simple example to show what kind of things that you can do or what what what kind of things that you can code and implement in the webhook server that you deploy.

## 7. kubectl / command usage
- (bright music) Instructor: In the last lecture, we learned about the kustomize build command.
- And we learned that when we run this command, it's going to take all of our resources, it's going to apply the all...
- So if you log into your Kubernetes cluster and you run a kubectl get pods, or get deployments, or get services, you'll see that nothing was created.
- So you might be thinking, well, "How exactly do we apply these configs?" We're making use of this awesome utility called kustomize, but we can't actually apply it to our Kubernetes cluster.
- Well, the command that you actually have to run, to run kustomize, build all the configs and then apply those configs is this following command right here.
- So when you run this command, it's going to make use of the Linux pipe utility.
- And this isn't something that's specific to Kubernetes or kustomize.
- And so what this pipe utility does is it takes the output of the first command, which is the kustomize build, k8s or whatever to the is to the left of the pipe utility.
- And it redirects the output of first command into the input of the second command, which is the command to the right of the pipe utility.
- So we're basically running the traditional kubectl apply -f, but we're applying a file that comes from the output of the first command, which is the kustomize build k8s command.

## 8. Real-world scenarios
- And what's important to understand is that we don't actually deploy or apply any of these configs.
- So if you log into your Kubernetes cluster and you run a kubectl get pods, or get deployments, or get services, you'll see that nothing was created.
- So you might be thinking, well, "How exactly do we apply these configs?" We're making use of this awesome utility called kustomize, but we can't actually apply it to our Kubernetes cluster.
- This is a feature of Linux, or really any bash or shell.
- And so that allows us to make use of the usual kubectl apply, and that creates our nginx deployment as well as the nginx service.
- We're making use of this awesome utility called Kustomize, but we can't actually apply it to our Kubernetes Cluster." Well, the command that you actually have to run to run Kustomize, build all the configs, and then apply those configs, is this fo...
- And this isn't something that's specific to Kubernetes or Kustomize, this is a feature of Linux, or really any bash or shell.
- Say for example, you're submitting a request to create a PVC.
- This could be whatever storage class is configured as the default storage class in your cluster.
- In this example, the namespace auto provisioning admission controller, which is a mutating admission controller, is run first, followed by the validating controller namespace exists.

## 9. Pitfalls and misunderstandings
- And what's important to understand is that we don't actually deploy or apply any of these configs.
- So don't worry if you don't fully understand this piece of code.
- Well now when we create a service.yml file, we have to remember to copy it to all three directories because we don't want it to be missing from one of our environments.
- What we don't wanna do is copy all of our configs across each and every environment.
- Now we already know we don't want it to be 1 in staging and production, and we only want it to be 1 in development, but we'll worry about that in a second.
- The great part about Kustomize is it actually comes built in with kubectl, so you don't have to install any other packages.
- With Kustomize, we're not actually making use of any sort of templating system like we do in helm, and that's nice because we don't actually have to learn a templating language, all we have to do is just define our base configs and then specify ou...
- Now we don't have to create a controller because the deployment controller is built in to the Kubernetes and is already available.
- You don't have to understand go or understand this code.
- It's not actually going to do anything about these resources because we don't yet have a controller for it.

## 10. Troubleshooting angle
- And when a request goes through these admission controllers, if any admission controller rejects the request, the request is rejected and an error message is shown to the user.
- It'll work, there's no issues, there's no limitations with the solution.
- We need a better solution to addressing this issue.
- So let's take a look at how Kustomize addresses this issue.
- If you tried to create a flight ticket resource now on your Kubernetes cluster, you will see that it fails with the error message that says there is.
- If the value is entered by the user does not fall within this range, the resource will not be created and will return an error message.
- To withstand failures, we are tasked to deploy a high availability solution so we deploy additional servers and install MySQL on those as well.
- Even if the master fails and the POD is recreated, it would still come up with the same name.
- But there is an issue.
- So investigate and fix the issue.

## 11. CKA / CKAD relevance
- Say for example, you're submitting a request to create a PVC.
- In this example, the namespace auto provisioning admission controller, which is a mutating admission controller, is run first, followed by the validating controller namespace exists.
- An example code of a webhook server written in go can be found here in the Kubernetes documentation pages.
- The validate call receives the validation webhook request, and in this example compares the name of the object and the name of the user who sent the request and rejects the request.
- On a side note, from an exam point of view, you will not be asked to develop any code like this.
- So this is just a simple example to show what kind of things that you can do or what what what kind of things that you can code and implement in the webhook server that you deploy.
- So the name we set it to pod policy dot example.com.
- For example, we may only want it to be called while creating pods, or deleting pods, or creating deployments, etc..
- In this example, we're only going to call this webhook configuration when calls are made to create pods.
- So let's take a look at a simple example.

## 12. Source Contributions
- Matched Global Concepts:
  - Kustomize Output (match score: 2, notes: 47)
  - Validating and Mutating Admission Controllers (match score: 2, notes: 96)
  - Kustomize Problem Statement and Ideology (match score: 2, notes: 84)
  - Custom Resource Definition (match score: 2, notes: 119)
  - Solution_ API Versions_Deprecations (match score: 2, notes: 82)
  - Storage in StatefulSets (match score: 2, notes: 41)
  - Why Stateful Sets_ (match score: 2, notes: 79)
  - Solution Role Based Access Controls (match score: 2, notes: 150)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics: 109 note entries
  - certified-kubernetes-application-developer / 08_State Persistence: 120 note entries
  - certified-kubernetes-application-developer / 09_Security: 447 note entries
  - certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics: 22 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 2 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 3 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 4 | Type Warning/Pitfall
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 5 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 6 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 7 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 12 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 13 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 14 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 15 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 16 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 17 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 18 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 267_Kustomize Output.extraction.md | Entry 20 | Type Implementation Step

