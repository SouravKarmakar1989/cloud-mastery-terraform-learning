# Normalized Concept: Helm

- Concept Key: helm
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1719

## 1. Definition
- Okay.
- Now in question one, it says that we need to solve this question on cluster one control plane.
- And what I'm going to do is refer to the documentation.
- And I'm going to search for the storage class.
- And I'm going to paste that here.
- And so what we need to do is we have to change a few things.
- So to do that, we have to set this annotation with the default class, and we just have to set it to be true.
- So we've got all of that done.
- So I'll just copy this.
- All right.

## 2. First-Principles Mental Model
- And it says that we have to create a storage class named local SC with the following specifications and set it as the default storage class.
- So first let's SSH to that cluster one.
- And let's go ahead and create a storage class.
- First of all the name has to be local SC.
- The next thing that we do is we have to set the provisioner to be this following provisioner here.
- And then we'll go to the provisioner down here and just paste that.
- And then the next two things that we need is a volume binding mode and the volume expansion mode.
- And we can see it's set for wait for first consumer.
- And then we can just remove those other two lines.
- We can then go ahead and apply it.

## 3. Why This Exists
- So what we're going to do is we're going to go over the solutions for the questions in Mock Exam two.
- Now in question one, it says that we need to solve this question on cluster one control plane.
- And it says that we have to create a storage class named local SC with the following specifications and set it as the default storage class.
- So first let's SSH to that cluster one.
- And what I'm going to do is refer to the documentation.
- And I'm going to search for the storage class.
- And in the file here I'm just going to copy this example.
- And I'm going to paste that here.
- And so what we need to do is we have to change a few things.
- First of all the name has to be local SC.

## 4. Internal Working
- And it says that we have to create a storage class named local SC with the following specifications and set it as the default storage class.
- So first let's SSH to that cluster one.
- And let's go ahead and create a storage class.
- First of all the name has to be local SC.
- The next thing that we do is we have to set the provisioner to be this following provisioner here.
- And then we'll go to the provisioner down here and just paste that.
- And then the next two things that we need is a volume binding mode and the volume expansion mode.
- And we can see it's set for wait for first consumer.
- And then we can just remove those other two lines.
- We can then go ahead and apply it.
- And what we need to do is we have to create a deployment named logging deployment in the namespace logging dash ns with the replica of one.
- And then we have to add a sidecar container name log agent that also uses the BusyBox image and runs the command that's listed here.

## 5. Key Objects / Fields / Relationships
- And it says that we have to create a storage class named local SC with the following specifications and set it as the default storage class.
- And let's go ahead and create a storage class.
- And I'm going to search for the storage class.
- It says that this should be set as the default storage class.
- So to do that, we have to set this annotation with the default class, and we just have to set it to be true.
- And then the next two things that we need is a volume binding mode and the volume expansion mode.
- So it says nothing about a reclaim policy.
- Volume expansion should be enabled.
- Volume binding mode should be wait for first consumer.
- And what we need to do is we have to create a deployment named logging deployment in the namespace logging dash ns with the replica of one.

## 6. YAML Deep Dive
- And it says that we have to create a storage class named local SC with the following specifications and set it as the default storage class.
- And it's got the following specifications.
- And I'll just say question two dot YAML.
- It doesn't say it has to be anything specifically.
- So let's go under spec and let's create a volume.
- And we specifically want the log agent container.
- So this is going to be the logs for that specific container.
- So we've got a rule here but it's not for a specific host.
- Specify the first image which is going to be nginx one dot 16.
- And I'm going to just spit this out to a file by doing dash dash dry run equals client dash o YAML.

## 7. kubectl / command usage
- And it should run the following command to simulate writing logs.
- And then we have to add a sidecar container name log agent that also uses the BusyBox image and runs the command that's listed here.
- And then what this should do is basically run this command.
- So we have to change the command of the container.
- So that will overwrite the default command of the BusyBox container or the image.
- And then it's going to run this command.
- And then the command that should run.
- So I'll do a kubectl get deploy dash n ingress dash s.
- And we'll do a kubectl get ingress class.
- So to do that what I'm going to do is I'm going to do kubectl create deployment.

## 8. Real-world scenarios
- Now in question one, it says that we need to solve this question on cluster one control plane.
- So first let's SSH to that cluster one.
- So we can grab an example configuration.
- And in the file here I'm just going to copy this example.
- It's once again going to be on the cluster one control plane which we're already at.
- And what we need to do is we have to create a deployment named logging deployment in the namespace logging dash ns with the replica of one.
- So let's go ahead and create a deployment I'm going to get a example configuration of deployment from the docs.
- So this should be logging dash deployment.
- Doesn't really say anything about this label.
- And then the labels for the pods.

## 9. Pitfalls and misunderstandings
- We don't need that.
- And let me just copy the whole thing and just delete what I don't need.
- But since this is a scratch data and we don't actually need the data to persist, we just need it to be available during the lifetime of the pod.
- And I don't know why it always moves over I don't want it to do that.
- Now we don't need to do this because this is the default one.
- I don't think there's going to be a full example.
- But we don't want to test.
- Do not delete any existing policies, so we want to find one of the policies.
- So I don't think this is the one that we want.
- And it's going to allow traffic from the database namespace, which is not what we want, because we do not want traffic coming from the databases in the database namespace.

## 10. Troubleshooting angle
- Let's apply this and hope there's no errors.
- You got to use a path type prefix route request center path slash.
- You can see it's going to use path type prefix.
- It's going to be under TLS issue a certificate.
- And it looks like there's an error.
- Make sure that it's recreated restarted automatically in case of failures.
- And you could see that it deleted the old one, but then we got an error.
- So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.
- So what is the issue?
- And now if we do kubectl apply question5-pod.yaml, we can see it's created, we'll do kubectl get pod -n low- priority and we can see it's running with no issues.

## 11. CKA / CKAD relevance
- So what we're going to do is we're going to go over the solutions for the questions in Mock Exam two.
- So we can grab an example configuration.
- And in the file here I'm just going to copy this example.
- So let's go ahead and create a deployment I'm going to get a example configuration of deployment from the docs.
- And we're going to see an example configuration for ingress.
- And we can see we have an example here.
- So I'm going to change this to be not nginx example.
- There's multiple strategy types, right.
- Let me see if I can find an example.
- Let me see if there's a full example.

## 12. Source Contributions
- Matched Global Concepts:
  - Mock Exam - 2 - Solution _ (Optional) (match score: 1, notes: 624)
  - Mock Exam - 3 - Solution _ (Optional) (match score: 1, notes: 485)
  - JSON Path in Kubernetes (match score: 1, notes: 113)
  - Solution - Mock Exam -1 (Optional) (match score: 1, notes: 344)
  - Install Helm (match score: 1, notes: 11)
  - Solution_ Helm Concepts (match score: 1, notes: 38)
  - Kustomize Problem Statement & idealogy (match score: 1, notes: 90)
  - Solution_ Install Helm (match score: 1, notes: 14)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 15_Other Topics: 113 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 1453 note entries
  - certified-kubernetes-application-developer / 10_Helm Fundamentals: 63 note entries
  - certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics: 90 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 2 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 4 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 5 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 6 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 9 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 10 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 13 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 14 | Type Best Practice
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 18 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-016_section_concept_map.md | 306_Mock Exam - 2 - Solution _ (Optional).extraction.md | Entry 20 | Type Implementation Step

