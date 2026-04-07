# Normalized Concept: API Groups

- Concept Key: api-groups
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1381

## 1. Definition
- Instructor: Okay, in this lab, we're going to look at role-based access controls.
- So let's look at the kube API server.
- So cat etc Kubernetes manifests kube API server dot yaml.
- And then here we see the options passed to the kube API server.
- And if you look at the authorization mode, you have node and RBAC.
- So that's one way of checking that.
- The other way is to, we're gonna look at the processes on the control plane.
- So we're gonna do a PS dash aux grep or authorization mode.
- So we know that ultimately all containers are running as processes on the control plane.
- So we look at the authorization mode configured on the kube API server.

## 2. First-Principles Mental Model
- So the first question is inspect the environment and identify authorization modes configured on the cluster.
- So let's look at the kube API server.
- So cat etc Kubernetes manifests kube API server dot yaml.
- And then here we see the options passed to the kube API server.
- So we look at the authorization mode configured on the kube API server.
- So this is basically the kube API server service.
- These are two ways of finding out the settings passed to the kube API server.
- And then we'll do word count to count the length, to count all the lines, and we get, and the answer to that is 12.
- Okay, now what are the resources, the kube-proxy role, in the kube-system namespace is given access to?
- So here we have the kube-proxy role.

## 3. Why This Exists
- Instructor: Okay, in this lab, we're going to look at role-based access controls.
- And then here we see the options passed to the kube API server.
- So that's one way of checking that.
- And if you look at the authorization mode, it's set to node and RBAC.
- These are two ways of finding out the settings passed to the kube API server.
- So we're gonna pass in the dash A to to get all namespaces.
- And instead of counting, we're going to do no headers.
- So that prints it without this header.
- And then we'll do word count to count the length, to count all the lines, and we get, and the answer to that is 12.
- And we see that the resources that this kube-proxy role has access to is the config map.

## 4. Internal Working
- So the first question is inspect the environment and identify authorization modes configured on the cluster.
- So let's look at the kube API server.
- So cat etc Kubernetes manifests kube API server dot yaml.
- And then here we see the options passed to the kube API server.
- So we look at the authorization mode configured on the kube API server.
- So this is basically the kube API server service.
- These are two ways of finding out the settings passed to the kube API server.
- And then we'll do word count to count the length, to count all the lines, and we get, and the answer to that is 12.
- Okay, now what are the resources, the kube-proxy role, in the kube-system namespace is given access to?
- So here we have the kube-proxy role.
- So let's do a kubectl describe, role, kube-proxy dash N kube-system.
- And we see that the resources that this kube-proxy role has access to is the config map.

## 5. Key Objects / Fields / Relationships
- Instructor: Okay, in this lab, we're going to look at role-based access controls.
- So let's look at the kube API server.
- So cat etc Kubernetes manifests kube API server dot yaml.
- And then here we see the options passed to the kube API server.
- And if you look at the authorization mode, you have node and RBAC.
- So we look at the authorization mode configured on the kube API server.
- So this is basically the kube API server service.
- And if you look at the authorization mode, it's set to node and RBAC.
- These are two ways of finding out the settings passed to the kube API server.
- So it's node and RBAC.

## 6. YAML Deep Dive
- So the first question is inspect the environment and identify authorization modes configured on the cluster.
- So cat etc Kubernetes manifests kube API server dot yaml.
- And inspect the permissions granted to the user.
- And it says that we have to create a storage class named local SC with the following specifications and set it as the default storage class.
- And it's got the following specifications.
- And I'll just say question two dot YAML.
- It doesn't say it has to be anything specifically.
- So let's go under spec and let's create a volume.
- And we specifically want the log agent container.
- So this is going to be the logs for that specific container.

## 7. kubectl / command usage
- So we're going do a kubectl get roles.
- So let's do a kubectl describe, role, kube-proxy dash N kube-system.
- So you have kubectl describe role findings, kube-proxy in the default, sorry, in the kube system namespace.
- Let's do a kubectl config view.
- So we can do a kubectl get pods, and we can use the as dev user option to view as the dev user.
- So we're gonna do a kubectl create role.
- So it's kubectl create role, and verbs are going to be list, create, and delete.
- So let's do kubectl create role binding help.
- So we're going to use kubectl create role binding, and dev-user binding.
- So let's try the command again to create a deployment called nginX in the blue namespace.

## 8. Real-world scenarios
- Instructor: Okay, in this lab, we're going to look at role-based access controls.
- So the first question is inspect the environment and identify authorization modes configured on the cluster.
- The name is gonna be dev-user binding, then the cluster role or user or end group.
- Now we would like to grant the dev-user permissions to create deployments in the blue namespace.
- As the dev-user, I want to create a deployment called nginx, save with image nginx.
- When I try to do that, it says the user dev-user cannot create resource deployments in API group apps in the default, in the blue namespace.
- And what we'll do is, it said the API groups for deployment is apps.
- Here, we're going to say deployment.
- And we see that we have deployment dot apps, and we're now able to get, watch, create, and delete.
- So let's try the command again to create a deployment called nginX in the blue namespace.

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
- But there is an issue.
- So investigate and fix the issue.
- So that's fixed.
- Yep, so that should be the fix to this.
- Let's apply this and hope there's no errors.
- You got to use a path type prefix route request center path slash.
- You can see it's going to use path type prefix.
- It's going to be under TLS issue a certificate.
- And it looks like there's an error.
- Make sure that it's recreated restarted automatically in case of failures.

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
  - Solution Role Based Access Controls (match score: 2, notes: 150)
  - Mock Exam - 2 - Solution _ (Optional) (match score: 2, notes: 624)
  - Solution Cluster Roles (match score: 2, notes: 121)
  - API Versions (match score: 2, notes: 77)
  - Validating and Mutating Admission Controllers (match score: 2, notes: 96)
  - (2025 Updates)Validating and Mutating Admission Controllers (match score: 2, notes: 93)
  - API Groups (match score: 2, notes: 106)
  - Role Based Access Controls (match score: 2, notes: 114)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 93 note entries
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 111 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 624 note entries
  - certified-kubernetes-application-developer / 09_Security: 553 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 2 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 3 | Type Architecture
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 4 | Type Architecture
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 5 | Type Architecture
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 11 | Type Architecture
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 12 | Type Architecture
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 14 | Type Architecture
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 149_Solution Role Based Access Controls.extraction.md | Entry 20 | Type Concept

