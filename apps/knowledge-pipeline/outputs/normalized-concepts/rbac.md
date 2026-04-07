# Normalized Concept: RBAC

- Concept Key: rbac
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1309

## 1. Definition
- We saw how someone can gain access to a cluster.
- We saw different ways that someone, a human or a machine can get access to the cluster.
- Once they gain access, what can they do?
- That's what authorization defines.
- As an admin, we're able to perform any operation, but soon we will have others accessing the cluster as well, such as the other administrators, developers, testers, or other applications like monitoring applications or continuous delivery applicat...
- The same goes with service accounts.
- We only want to provide the external application the minimum level of access to perform its required operations.
- When we share our cluster between different organizations or teams by logically partitioning it using namespaces, we want to restrict access to the users to their namespaces alone.
- That is what authorization can help you within the cluster.
- There are different authorization mechanisms supported by Kubernetes, such as node authorizer, attribute based access control, role based access control, and webhook.

## 2. First-Principles Mental Model
- So far we talked about authentication.
- First of all, why do you need authorization in your cluster as an administrator of the cluster?
- We were able to perform all sorts of operations in it, such as viewing various objects like pods and nodes and deployments, creating or deleting objects such as adding or deleting pods or even nodes in the cluster.
- We can allow them to view but not modify, but they could have access to deploying applications.
- We know that the cube API server is accessed by users like us for management purposes, as well as the Cubelets or nodes within the cluster for management purposes within the cluster.
- The Cubelet accesses the API server to read information about services, endpoints, nodes, and pods.
- The Cubelet also reports to the cube API server with information about the node, such as its status.
- In this case, we say the dev user can view, create, and delete pods.
- This way you pass this file into the API server.
- Similarly, we create a policy definition file for each user or group in this file.

## 3. Why This Exists
- We saw how someone can gain access to a cluster.
- We saw different ways that someone, a human or a machine can get access to the cluster.
- We were able to perform all sorts of operations in it, such as viewing various objects like pods and nodes and deployments, creating or deleting objects such as adding or deleting pods or even nodes in the cluster.
- As an admin, we're able to perform any operation, but soon we will have others accessing the cluster as well, such as the other administrators, developers, testers, or other applications like monitoring applications or continuous delivery applicat...
- But we don't want all of them to have the same level of access as us.
- For example, we don't want the developers to have access to modify our cluster configuration, like adding or deleting nodes or the storage or networking configurations.
- We can allow them to view but not modify, but they could have access to deploying applications.
- We only want to provide the external application the minimum level of access to perform its required operations.
- When we share our cluster between different organizations or teams by logically partitioning it using namespaces, we want to restrict access to the users to their namespaces alone.
- The Cubelet accesses the API server to read information about services, endpoints, nodes, and pods.

## 4. Internal Working
- So far we talked about authentication.
- First of all, why do you need authorization in your cluster as an administrator of the cluster?
- We were able to perform all sorts of operations in it, such as viewing various objects like pods and nodes and deployments, creating or deleting objects such as adding or deleting pods or even nodes in the cluster.
- We can allow them to view but not modify, but they could have access to deploying applications.
- We know that the cube API server is accessed by users like us for management purposes, as well as the Cubelets or nodes within the cluster for management purposes within the cluster.
- The Cubelet accesses the API server to read information about services, endpoints, nodes, and pods.
- The Cubelet also reports to the cube API server with information about the node, such as its status.
- In this case, we say the dev user can view, create, and delete pods.
- This way you pass this file into the API server.
- Similarly, we create a policy definition file for each user or group in this file.
- Now, every time you need to add or make a change in the security, you must edit this policy file manually and restart the kube API server.
- We will look at role based access controls next.

## 5. Key Objects / Fields / Relationships
- We were able to perform all sorts of operations in it, such as viewing various objects like pods and nodes and deployments, creating or deleting objects such as adding or deleting pods or even nodes in the cluster.
- For example, we don't want the developers to have access to modify our cluster configuration, like adding or deleting nodes or the storage or networking configurations.
- The same goes with service accounts.
- When we share our cluster between different organizations or teams by logically partitioning it using namespaces, we want to restrict access to the users to their namespaces alone.
- There are different authorization mechanisms supported by Kubernetes, such as node authorizer, attribute based access control, role based access control, and webhook.
- We know that the cube API server is accessed by users like us for management purposes, as well as the Cubelets or nodes within the cluster for management purposes within the cluster.
- The Cubelet accesses the API server to read information about services, endpoints, nodes, and pods.
- The Cubelet also reports to the cube API server with information about the node, such as its status.
- These requests are handled by a special authorizer known as the node authorizer.
- In the earlier lectures, when we discussed about certificates, we discussed that the Cubelets should be part of the system nodes group and have a name prefixed with system node.

## 6. YAML Deep Dive
- These requests are handled by a special authorizer known as the node authorizer.
- If you don't specify this option, it is set to always allow by default.
- When you have multiple modes configured, your request is authorized using each one in the order it is specified.
- So the first question is inspect the environment and identify authorization modes configured on the cluster.
- So cat etc Kubernetes manifests kube API server dot yaml.
- And inspect the permissions granted to the user.
- So we create a role definition file with the API version set to Rbac, dot authorization, dot k.io v1, and kind set to role.
- And then we specify rules.
- For any other group, you specify the group name.
- The kind is rule binding.

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
- We saw how someone can gain access to a cluster.
- We saw different ways that someone, a human or a machine can get access to the cluster.
- First of all, why do you need authorization in your cluster as an administrator of the cluster?
- We were able to perform all sorts of operations in it, such as viewing various objects like pods and nodes and deployments, creating or deleting objects such as adding or deleting pods or even nodes in the cluster.
- As an admin, we're able to perform any operation, but soon we will have others accessing the cluster as well, such as the other administrators, developers, testers, or other applications like monitoring applications or continuous delivery applicat...
- For example, we don't want the developers to have access to modify our cluster configuration, like adding or deleting nodes or the storage or networking configurations.
- We can allow them to view but not modify, but they could have access to deploying applications.
- When we share our cluster between different organizations or teams by logically partitioning it using namespaces, we want to restrict access to the users to their namespaces alone.
- That is what authorization can help you within the cluster.
- We know that the cube API server is accessed by users like us for management purposes, as well as the Cubelets or nodes within the cluster for management purposes within the cluster.

## 9. Pitfalls and misunderstandings
- But we don't want all of them to have the same level of access as us.
- For example, we don't want the developers to have access to modify our cluster configuration, like adding or deleting nodes or the storage or networking configurations.
- If you don't specify this option, it is set to always allow by default.
- You don't have to authenticate as the user to test it.
- We don't need that.
- And let me just copy the whole thing and just delete what I don't need.
- But since this is a scratch data and we don't actually need the data to persist, we just need it to be available during the lifetime of the pod.
- And I don't know why it always moves over I don't want it to do that.
- Now we don't need to do this because this is the default one.
- I don't think there's going to be a full example.

## 10. Troubleshooting angle
- In the earlier lectures, when we discussed about certificates, we discussed that the Cubelets should be part of the system nodes group and have a name prefixed with system node.
- In the earlier lectures, when we discussed about certificates, we discussed that the Cubelets should be part of the system nodes group and have a name prefixed with system node, so any requests coming from a user with the name system node and part...
- But there is an issue.
- So investigate and fix the issue.
- So that's fixed.
- Yep, so that should be the fix to this.
- Let's apply this and hope there's no errors.
- You got to use a path type prefix route request center path slash.
- You can see it's going to use path type prefix.
- It's going to be under TLS issue a certificate.

## 11. CKA / CKAD relevance
- If you do have multiple ones configured, the modes are set using the authorization mode option on the kube API server.
- You may provide a comma separated list of multiple modes that you wish to use.
- When you have multiple modes configured, your request is authorized using each one in the order it is specified.
- For example, when a user sends a request, it's first handled by the node authorizer.
- How does authorization work if you do have multiple ones configured?
- We can add multiple rules for a single role like this.
- For example, say you have five pods in namespace.
- So what we're going to do is we're going to go over the solutions for the questions in Mock Exam two.
- So we can grab an example configuration.
- And in the file here I'm just going to copy this example.

## 12. Source Contributions
- Matched Global Concepts:
  - Authorization (match score: 2, notes: 143)
  - Solution Role Based Access Controls (match score: 2, notes: 150)
  - Role Based Access Controls (match score: 2, notes: 114)
  - Mock Exam - 2 - Solution _ (Optional) (match score: 1, notes: 624)
  - Solution_ Service Account (match score: 1, notes: 67)
  - Admission Controllers (match score: 1, notes: 66)
  - Solution_ API Versions_Deprecations (match score: 1, notes: 82)
  - Kubernetes Security Primitives (match score: 1, notes: 63)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 160 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 624 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 67 note entries
  - certified-kubernetes-application-developer / 09_Security: 458 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 1 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 6 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 7 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 9 | Type Warning/Pitfall
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 10 | Type Warning/Pitfall
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 11 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 18 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 19 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 162_Authorization.extraction.md | Entry 20 | Type Architecture

