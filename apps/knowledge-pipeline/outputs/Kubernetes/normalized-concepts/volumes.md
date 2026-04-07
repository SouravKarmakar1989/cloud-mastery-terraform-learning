# Normalized Concept: Volumes

- Concept Key: volumes
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1434

## 1. Definition
- So let's copy and let's run that.
- And this basically gives you auto completion.
- Okay, so we're gonna look at the status of the cluster.
- So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.
- So that's good.
- So let's take a look at it.
- So here it says scale that replica set to one.
- So let's take a look at the replica set, get rs, we have one replica set.
- Let's take a look at that.
- Describe replica set app.

## 2. First-Principles Mental Model
- So the first question is, the cluster is broken.
- So you do a kubectl get and then it automatically gives you the options.
- So I'm gonna set this as well, that way I can just do kubectl get and then yeah, order completion for the short form.
- There is, it says there are deployments.
- So let's take a look at the deployments.
- And we see that there is a app deployed, but it's not ready.
- So there is one container or one pod in the deployment but that pod is not ready.
- Let's do a describe, so you describe deployment app and we see that it's one desired, zero available, so there's, that's one unavailable and there isn't anything here that's really helpful.
- So let's take a look at the pod and we see that there is a pod created, but it's in a pending state.
- That means the pod has not been assigned to a node and the job of assigning a pod to a node is scheduler's job, right?

## 3. Why This Exists
- -: Okay, so in this video we're going to work on troubleshooting control plane failure.
- And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.
- The other thing is, so if you're setting an alias you should do this as well to get the alias for the short form for kubectl.
- So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.
- So that's good.
- So here it says scale that replica set to one.
- So if you look at the node here, it's set to none.
- That means the pod has not been assigned to a node and the job of assigning a pod to a node is scheduler's job, right?
- So we have to look at the status of the scheduler.
- So that means it's a static pod and its status is crash loop back off.

## 4. Internal Working
- So the first question is, the cluster is broken.
- So you do a kubectl get and then it automatically gives you the options.
- So I'm gonna set this as well, that way I can just do kubectl get and then yeah, order completion for the short form.
- There is, it says there are deployments.
- So let's take a look at the deployments.
- And we see that there is a app deployed, but it's not ready.
- So there is one container or one pod in the deployment but that pod is not ready.
- Let's do a describe, so you describe deployment app and we see that it's one desired, zero available, so there's, that's one unavailable and there isn't anything here that's really helpful.
- So let's take a look at the pod and we see that there is a pod created, but it's in a pending state.
- That means the pod has not been assigned to a node and the job of assigning a pod to a node is scheduler's job, right?
- So we have to look at the status of the scheduler.
- So let's do a, and we know that scheduler runs as a pod in the kube system name space.

## 5. Key Objects / Fields / Relationships
- So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.
- There is, it says there are deployments.
- So let's take a look at the deployments.
- So there is one container or one pod in the deployment but that pod is not ready.
- Let's do a describe, so you describe deployment app and we see that it's one desired, zero available, so there's, that's one unavailable and there isn't anything here that's really helpful.
- And here you have the events and it says creating pod.
- So let's take a look at the pod and we see that there is a pod created, but it's in a pending state.
- Let's take a closer look at that pod.
- So when a pod is in a pending state, it's most likely, that indicates that it has not been assigned a node.
- So if you look at the node here, it's set to none.

## 6. YAML Deep Dive
- So the file is in TTC Kubernetes manifests and we have the kube-scheduler.yaml file here.
- So this is the manifest file for kube-scheduler and within that there's a wrong command.
- So let's check, let's check where this file is specified in the kube controller manager.
- So that means it must be in the slash ADC Kubernetes manifests directory.
- And here we have it specified.
- So we're going to edit the controller manager manifest file to fix that issue.
- So that's set up in the manifest file.
- So let's take a look at the manifest file and we're gonna look at your controller manager.
- A release is somewhat similar to an app, but more specifically, it represents a package or a collection of Kubernetes objects.
- By the way, you can pass in a specific version of Helm chart to install using the version option in the install command like this.

## 7. kubectl / command usage
- So before we begin, a quick tip if you don't have the alias set already on your prompt so you could do a alias, k equals kubectl.
- And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.
- So you do a kubectl get and then it automatically gives you the options.
- The other thing is, so if you're setting an alias you should do this as well to get the alias for the short form for kubectl.
- So I'm gonna set this as well, that way I can just do kubectl get and then yeah, order completion for the short form.
- So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.
- So let's take a look at the options or the command that are used to run this pod.
- So here we can see that there is an incorrect command that's wrong and that's the reason.
- So this is the manifest file for kube-scheduler and within that there's a wrong command.
- Let's do a kubectl.

## 8. Real-world scenarios
- So the first question is, the cluster is broken.
- We tried deploying an application, but it's not working troubleshoot and fix the issue.
- Okay, so we're gonna look at the status of the cluster.
- There is, it says there are deployments.
- So let's take a look at the deployments.
- And we see that there is a app deployed, but it's not ready.
- So there is one container or one pod in the deployment but that pod is not ready.
- Let's do a describe, so you describe deployment app and we see that it's one desired, zero available, so there's, that's one unavailable and there isn't anything here that's really helpful.
- Let's take a look at the deployment and we have one of one ready.
- Now it says scale the deployment app to two parts.

## 9. Pitfalls and misunderstandings
- So before we begin, a quick tip if you don't have the alias set already on your prompt so you could do a alias, k equals kubectl.
- And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.
- We don't see anything useful here in the events.
- Fortunately, as we said, Helm keeps track of everything associated with a release, so we don't have to upgrade our objects one by one.
- Now let's assume this upgrade did something that we don't like.
- And now, not bad enough yet, imagine two months go by and we now have to upgrade some components in our app, and so we are back to editing multiple YAML files' declarations again, with great care so that we don't change the wrong thing in the wron...
- It looks at those objects as part of a big package as a group, and whenever we need to perform an action, we don't tell Helm the objects that it should touch, we just tell it what package we want to act on, like our WordPress app package.
- Fortunately, we don't have to go through such horrors as we get a game installer.
- We don't need to remember each object that belongs to one of our apps anymore or use 10 separate commands to remove everything.
- The most important thing is that it lets us treat our Kubernetes apps as apps instead of just a collection of objects, and this takes a huge burden off our shoulders as we don't have to micromanage each Kubernetes object anymore.

## 10. Troubleshooting angle
- -: Okay, so in this video we're going to work on troubleshooting control plane failure.
- We tried deploying an application, but it's not working troubleshoot and fix the issue.
- And then it says fail to start container kube-scheduler error response from daemon, OCI runtime create failed, starting container process kube-scheduler, executable file not found.
- And we're gonna save that and we'll see if we have we'll see the status of the pod and its in a creating container config error state.
- Okay, even though the deployment was scaled to two the number of pods does not seem to increase investigate and fix the issue.
- So here it says crash loop back off terminated error.
- So we're going to edit the controller manager manifest file to fix that issue.
- Well, that's true, but it might make it even harder to find stuff when you're looking for, say you wanna troubleshoot an issue, we'd have to continuously search for stuff that we need to edit in something that could be 25 pages of text.
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.

## 11. CKA / CKAD relevance
- So we look at volume mounts here and we can see there are multiple volume mounts.
- So let's translate it into plain English by taking a look at some practical examples.
- A release is somewhat similar to an app, but more specifically, it represents a package or a collection of Kubernetes objects.
- For example, the newer version of Nginx may require a new environment variable to be set, or new secret to be created, which requires changing configuration objects and other files, part of the manifest files.
- It's worth mentioning that we chose Nginx here as it's simple to upgrade, but there will be Kubernetes packages that may require a few extra steps to upgrade.
- For example, if we had have tried to upgrade the previous WordPress release that we created, we would've got this output.
- For example, imagine you rollback MySQL database server.
- For example, even a relatively simple WordPress site might need the following, a deployment to deploy the pods that you wanna run, such as MySQL database servers or web servers, a persistent volume to store the database, a persistent volume claim,...
- Now, at least in multiple files, they'd be somewhat organized and we'd know we'll find deployment related stuff in the mydeployment.yaml file, for example.
- That's why it's sometimes called a package manager for Kubernetes.

## 12. Source Contributions
- Matched Global Concepts:
  - Lab Solution - Control Plane Failure _ (Optional) (match score: 2, notes: 144)
  - Lifecycle Management With Helm (match score: 2, notes: 78)
  - Helm - Introduction (match score: 2, notes: 112)
  - Introduction (match score: 2, notes: 55)
  - Mock Exam - 3 - Solution _ (Optional) (match score: 2, notes: 485)
  - Solution - Mock Exam -1 (Optional) (match score: 2, notes: 344)
  - Storage Class (match score: 2, notes: 30)
  - Lab Solution - Persistent Volumes and Persistent Volume Claims (match score: 2, notes: 186)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 08_Storage: 216 note entries
  - certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics: 127 note entries
  - certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting: 144 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 829 note entries
  - certified-kubernetes-application-developer / 01_Introduction: 30 note entries
  - certified-kubernetes-application-developer / 10_Helm Fundamentals: 63 note entries
  - learn-kubernetes / 01_Introduction: 25 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 1 | Type Troubleshooting
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 2 | Type Implementation Step
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 3 | Type Troubleshooting
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 4 | Type Warning/Pitfall
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 5 | Type Warning/Pitfall
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 8 | Type Implementation Step
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 9 | Type Best Practice
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 10 | Type Implementation Step
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 14 | Type Implementation Step
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 15 | Type Implementation Step
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 16 | Type Implementation Step
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 17 | Type Implementation Step
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 19 | Type Implementation Step
  - section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 20 | Type Concept

