# Normalized Concept: Kubectl Apply

- Concept Key: kubectl-apply
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 898

## 1. Definition
- And that's going to be the focus of this video.
- I have two YAML files.
- And we're gonna point Kustomize to this folder, 'cause this is where all of my Kubernetes configs are.
- But Kustomize won't look at either one of these files.
- Instead, Kustomize looks for one specific file called a kustomization.yaml file.
- And in this file, there's going to be two things that we need to have in it, and it's gonna be very simple, but it's gonna be broken down into two different sections.
- And so this is going to be just a list of all of the YAML files that you want Kustomize to manage.
- And those are both listed under the resources section of my kustomization.yaml file.
- So what are the things that we need to change?
- And it's going to add a label that has a key of company and a value of KodeKloud.

## 2. First-Principles Mental Model
- (jaunty music) Instructor: Now that we have the Kustomize tool installed and configured, we're gonna finally get started playing with the tool itself.
- So the first thing that we have to do is we have to learn about the kustomization.yaml file.
- We're gonna take a look at what is the kustomization.yaml file, why do we need it, and how do we configure it?
- One is for the nginx deployment and one is for the nginx service.
- And so this is a file that you have to create yourself, and it does have to be named kustomization.yaml.
- And so in this case, I have my nginx deployment YAML file, and I have my nginx service YAML file.
- The second thing is going to be all of the customizations that we want apply to or transformation.
- You have all of the resources that you want managed, and then whatever it is that you want to change.
- Once we have our kustomization.yaml file configured and completed, we can now run the kustomize build command.
- It's going to import them, and then it's going to apply all of the transformations that we have defined.

## 3. Why This Exists
- So the first thing that we have to do is we have to learn about the kustomization.yaml file.
- And that's going to be the focus of this video.
- In this example, I have a k8s directory that's going to contain all of my Kubernetes configs.
- And we're gonna point Kustomize to this folder, 'cause this is where all of my Kubernetes configs are.
- And so this is a file that you have to create yourself, and it does have to be named kustomization.yaml.
- And in this file, there's going to be two things that we need to have in it, and it's gonna be very simple, but it's gonna be broken down into two different sections.
- The first is it's going to contain a list of all of the Kubernetes resources that should be managed by Kustomize.
- And so this is going to be just a list of all of the YAML files that you want Kustomize to manage.
- The second thing is going to be all of the customizations that we want apply to or transformation.
- So what are the things that we need to change?

## 4. Internal Working
- (jaunty music) Instructor: Now that we have the Kustomize tool installed and configured, we're gonna finally get started playing with the tool itself.
- So the first thing that we have to do is we have to learn about the kustomization.yaml file.
- We're gonna take a look at what is the kustomization.yaml file, why do we need it, and how do we configure it?
- One is for the nginx deployment and one is for the nginx service.
- And so this is a file that you have to create yourself, and it does have to be named kustomization.yaml.
- And so in this case, I have my nginx deployment YAML file, and I have my nginx service YAML file.
- The second thing is going to be all of the customizations that we want apply to or transformation.
- You have all of the resources that you want managed, and then whatever it is that you want to change.
- Once we have our kustomization.yaml file configured and completed, we can now run the kustomize build command.
- It's going to import them, and then it's going to apply all of the transformations that we have defined.
- And then once it's done that, it's going to spit out what the final configs gonna look like.
- You can see the nginx deployment that we defined.

## 5. Key Objects / Fields / Relationships
- (jaunty music) Instructor: Now that we have the Kustomize tool installed and configured, we're gonna finally get started playing with the tool itself.
- One is for the nginx deployment and one is for the nginx service.
- And we're gonna point Kustomize to this folder, 'cause this is where all of my Kubernetes configs are.
- But Kustomize won't look at either one of these files.
- Instead, Kustomize looks for one specific file called a kustomization.yaml file.
- The first is it's going to contain a list of all of the Kubernetes resources that should be managed by Kustomize.
- And so this is going to be just a list of all of the YAML files that you want Kustomize to manage.
- And so in this case, I have my nginx deployment YAML file, and I have my nginx service YAML file.
- So in this example, I have a very simple one where we're going to add a common label to all of the resources that we create using Kustomize.
- And it's going to add a label that has a key of company and a value of KodeKloud.

## 6. YAML Deep Dive
- So the first thing that we have to do is we have to learn about the kustomization.yaml file.
- We're gonna take a look at what is the kustomization.yaml file, why do we need it, and how do we configure it?
- I have two YAML files.
- Instead, Kustomize looks for one specific file called a kustomization.yaml file.
- And so this is a file that you have to create yourself, and it does have to be named kustomization.yaml.
- And so this is going to be just a list of all of the YAML files that you want Kustomize to manage.
- And so in this case, I have my nginx deployment YAML file, and I have my nginx service YAML file.
- And those are both listed under the resources section of my kustomization.yaml file.
- And so I really just want to hammer home the idea that it's just two different things in the kustomization YAML file.
- Once we have our kustomization.yaml file configured and completed, we can now run the kustomize build command.

## 7. kubectl / command usage
- (jaunty music) Instructor: Now that we have the Kustomize tool installed and configured, we're gonna finally get started playing with the tool itself.
- And we're gonna point Kustomize to this folder, 'cause this is where all of my Kubernetes configs are.
- But Kustomize won't look at either one of these files.
- Instead, Kustomize looks for one specific file called a kustomization.yaml file.
- The first is it's going to contain a list of all of the Kubernetes resources that should be managed by Kustomize.
- And so this is going to be just a list of all of the YAML files that you want Kustomize to manage.
- So in this example, I have a very simple one where we're going to add a common label to all of the resources that we create using Kustomize.
- Once we have our kustomization.yaml file configured and completed, we can now run the kustomize build command.
- So we're gonna point the kustomize build command to the k8s directory, 'cause that's where our kustomization.yaml file is.
- And so if you take a look at the output at the terminal after you run this command, you'll see that we can see the nginx service that we defined.

## 8. Real-world scenarios
- In this example, I have a k8s directory that's going to contain all of my Kubernetes configs.
- One is for the nginx deployment and one is for the nginx service.
- And so in this case, I have my nginx deployment YAML file, and I have my nginx service YAML file.
- So in this example, I have a very simple one where we're going to add a common label to all of the resources that we create using Kustomize.
- And it's going to add a label that has a key of company and a value of KodeKloud.
- Keep in mind, this is just one simple example of a transformation.
- And so I really just want to hammer home the idea that it's just two different things in the kustomization YAML file.
- You can see the nginx deployment that we defined.
- And most importantly, you can see the transformations, which is we applied an extra label called company: KodeKloud, and it's gonna get applied to both the service and the nginx.
- And that's what the common label transformation does.

## 9. Pitfalls and misunderstandings
- Well now when we create a service.yml file, we have to remember to copy it to all three directories because we don't want it to be missing from one of our environments.
- What we don't wanna do is copy all of our configs across each and every environment.
- Now we already know we don't want it to be 1 in staging and production, and we only want it to be 1 in development, but we'll worry about that in a second.
- The great part about Kustomize is it actually comes built in with kubectl, so you don't have to install any other packages.
- With Kustomize, we're not actually making use of any sort of templating system like we do in helm, and that's nice because we don't actually have to learn a templating language, all we have to do is just define our base configs and then specify ou...
- And what's important to understand is that we don't actually deploy or apply any of these configs.
- And now, not bad enough yet, imagine two months go by and we now have to upgrade some components in our app, and so we are back to editing multiple YAML files' declarations again, with great care so that we don't change the wrong thing in the wron...
- It looks at those objects as part of a big package as a group, and whenever we need to perform an action, we don't tell Helm the objects that it should touch, we just tell it what package we want to act on, like our WordPress app package.
- Fortunately, we don't have to go through such horrors as we get a game installer.
- We don't need to remember each object that belongs to one of our apps anymore or use 10 separate commands to remove everything.

## 10. Troubleshooting angle
- It'll work, there's no issues, there's no limitations with the solution.
- We need a better solution to addressing this issue.
- So let's take a look at how Kustomize addresses this issue.
- So customize has helped us address the issue of splitting all of our configs into separate directories.
- So, kustomize has helped us address the issue of splitting all of our configs into separate directories.
- Well, that's true, but it might make it even harder to find stuff when you're looking for, say you wanna troubleshoot an issue, we'd have to continuously search for stuff that we need to edit in something that could be 25 pages of text.
- For troubleshooting purpose, view the logs using the kubectl logs command.

## 11. CKA / CKAD relevance
- In this example, I have a k8s directory that's going to contain all of my Kubernetes configs.
- So in this example, I have a very simple one where we're going to add a common label to all of the resources that we create using Kustomize.
- Keep in mind, this is just one simple example of a transformation.
- So let's take a look at a simple example.
- And let's say that we have multiple environments.
- One example of this is managing Kubernetes manifests that are spread across multiple directories.
- So let's take a look at an example of this.
- In this example we have a k8s directory.
- So let's take a look an example of this.
- For example, even a relatively simple WordPress site might need the following, a deployment to deploy the pods that you wanna run, such as MySQL database servers or web servers, a persistent volume to store the database, a persistent volume claim,...

## 12. Source Contributions
- Matched Global Concepts:
  - The kustomization.yaml File (match score: 2, notes: 42)
  - Kustomize Problem Statement and Ideology (match score: 2, notes: 84)
  - Managing Directories (match score: 2, notes: 115)
  - Kustomize Output (match score: 2, notes: 47)
  - Helm - Introduction (match score: 2, notes: 112)
  - CNI weave (match score: 2, notes: 52)
  - Solution_ API Versions_Deprecations (match score: 2, notes: 82)
  - Demo - Deployment with Kubeadm (match score: 2, notes: 364)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 52 note entries
  - certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_: 364 note entries
  - certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics: 49 note entries
  - certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics: 209 note entries
  - certified-kubernetes-application-developer / 09_Security: 82 note entries
  - certified-kubernetes-application-developer / 10_Helm Fundamentals: 63 note entries
  - certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics: 79 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 1 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 2 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 4 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 5 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 7 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 11 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 13 | Type Best Practice
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 15 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 17 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 19 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-013_section_concept_map.md | 266_The kustomization.yaml File.extraction.md | Entry 20 | Type Concept

