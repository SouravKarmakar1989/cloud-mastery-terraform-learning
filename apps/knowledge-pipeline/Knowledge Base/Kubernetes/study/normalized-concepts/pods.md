# Normalized Concept: Pods

- Concept Key: pods
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 727

## 1. Definition
- Hello and welcome to this lecture.
- In this lecture we will discuss about namespaces in Kubernetes.
- Let us begin with an analogy.
- There are two boys named Mark to differentiate them from each other.
- We call them by their last names, Smith and Williams.
- They come from different houses, of course, the Smiths and the Williams.
- There are other members in the house.
- However, if the father wishes to address the mark in the other house, he would use the full name.
- Someone outside of these houses would also use the full name to refer to the boys or anyone within these houses.
- Each of these houses have their own set of rules that defines who does what.

## 2. First-Principles Mental Model
- The individuals within the house address each other simply by their first names.
- So far in this course, we've created objects such as pods, deployments, and services in our cluster.
- This namespace is known as the default namespace, and it is created automatically by Kubernetes.
- When the cluster is first set up, Kubernetes creates a set of pods and services for its internal purpose, such as those required by the networking solution, the DNS service, etc. to isolate these from the user and to prevent you from accidentally ...
- A third namespace created by Kubernetes automatically is called kube public.
- You can create your own namespaces as well.
- Going back to the default namespace that we have been working on, just like how the members within a house refer to each other by their first names, the resources within a namespace can refer to each other simply by their names.
- You're able to do this because when the service is created, a DNS entry is added automatically in this format.
- SVC is the subdomain for service followed by the namespace and then the name of the service itself.
- Let us now look at some of the operational aspects of namespaces.

## 3. Why This Exists
- Hello and welcome to this lecture.
- There are two boys named Mark to differentiate them from each other.
- However, if the father wishes to address the mark in the other house, he would use the full name.
- Someone outside of these houses would also use the full name to refer to the boys or anyone within these houses.
- Now let's get back to Kubernetes.
- These houses correspond to namespaces in Kubernetes.
- When the cluster is first set up, Kubernetes creates a set of pods and services for its internal purpose, such as those required by the networking solution, the DNS service, etc. to isolate these from the user and to prevent you from accidentally ...
- This is where resources that should be made available to all users are created.
- If your environment is small or you're learning and playing around with a small cluster, you shouldn't really have to worry about namespaces.
- You could continue to work in the default namespace.

## 4. Internal Working
- The individuals within the house address each other simply by their first names.
- So far in this course, we've created objects such as pods, deployments, and services in our cluster.
- This namespace is known as the default namespace, and it is created automatically by Kubernetes.
- When the cluster is first set up, Kubernetes creates a set of pods and services for its internal purpose, such as those required by the networking solution, the DNS service, etc. to isolate these from the user and to prevent you from accidentally ...
- A third namespace created by Kubernetes automatically is called kube public.
- You can create your own namespaces as well.
- Going back to the default namespace that we have been working on, just like how the members within a house refer to each other by their first names, the resources within a namespace can refer to each other simply by their names.
- You're able to do this because when the service is created, a DNS entry is added automatically in this format.
- SVC is the subdomain for service followed by the namespace and then the name of the service itself.
- Let us now look at some of the operational aspects of namespaces.
- Here I have a Pod definition file when you create a pod using this file, the pod is created in the default namespace.
- To create the pod in another namespace, use the namespace option.

## 5. Key Objects / Fields / Relationships
- In this lecture we will discuss about namespaces in Kubernetes.
- These houses correspond to namespaces in Kubernetes.
- So far in this course, we've created objects such as pods, deployments, and services in our cluster.
- Whatever we have been doing, we have been doing within a namespace.
- This namespace is known as the default namespace, and it is created automatically by Kubernetes.
- When the cluster is first set up, Kubernetes creates a set of pods and services for its internal purpose, such as those required by the networking solution, the DNS service, etc. to isolate these from the user and to prevent you from accidentally ...
- A third namespace created by Kubernetes automatically is called kube public.
- If your environment is small or you're learning and playing around with a small cluster, you shouldn't really have to worry about namespaces.
- You could continue to work in the default namespace.
- However, as of when you grow and use a Kubernetes cluster for enterprise or production purposes, you may want to consider the use of namespaces.

## 6. YAML Deep Dive
- Let us now look at some of the operational aspects of namespaces.
- If you want to make sure that this pod gets created in the dev environment all the time, even if you don't specify the namespace in the command line, you can move the namespace definition into the pod definition file like this.
- Under the metadata section, this is a good way to ensure your resources are always created in the same namespace.
- The API version is v1, kind is namespace, and under metadata specify the name in this case dev.
- But what if we want to switch to the dev namespace permanently so that we don't have to specify the namespace option anymore?
- You can then simply run the kube control get pods command without the namespace option to list pods in the dev environment, but you will need to specify the option for other environments such as default or prod.
- Specify the namespace for which you want to create the quota and then under spec provide your limits such as ten pods, ten CPU units, ten GB bytes of memory, etc..
- So there is some kind of error.
- So it says no kind deployment is registered for version apps slash v1.
- So if we look at the file, we see that the API version is app slash v1 which seems to be correct, but the kind is deployment, which is also right, but the issue is that it's case sensitive, right?

## 7. kubectl / command usage
- Let us start with a kube control commands.
- For example, this command is used to list all the pods, but it only lists the pods in the default namespace.
- To list pods in another namespace, use the namespace option in the command along with the name of the namespace, in this case kube system.
- If you want to make sure that this pod gets created in the dev environment all the time, even if you don't specify the namespace in the command line, you can move the namespace definition into the pod definition file like this.
- Create command to create the namespace.
- Another way to create a namespace is by simply running the command Kube control create namespace followed by the name of the namespace.
- As we discussed before, by default we are in the default namespace, which is why we can see the resources inside the default namespace using the kube control get pods command.
- Well, in that case, use the kube control config command to set the namespace in the current context to dev.
- You can then simply run the kube control get pods command without the namespace option to list pods in the dev environment, but you will need to specify the option for other environments such as default or prod.
- Finally, to view pods in all namespaces, use the all namespaces option in the command.

## 8. Real-world scenarios
- For example, the father addresses Mark simply as Mark.
- So far in this course, we've created objects such as pods, deployments, and services in our cluster.
- When the cluster is first set up, Kubernetes creates a set of pods and services for its internal purpose, such as those required by the networking solution, the DNS service, etc. to isolate these from the user and to prevent you from accidentally ...
- This is where resources that should be made available to all users are created.
- If your environment is small or you're learning and playing around with a small cluster, you shouldn't really have to worry about namespaces.
- However, as of when you grow and use a Kubernetes cluster for enterprise or production purposes, you may want to consider the use of namespaces.
- For example, if you wanted to use the same cluster for both dev and production environment, but at the same time isolate the resources between them, you can create a different namespace for each of them.
- That way, while working in the dev environment, you don't accidentally modify resources in production.
- For example, for the web pod in the default namespace to connect to the database in the dev environment or namespace, use the service name namespace cluster dot format That would be DB service, dot dev, dot svc cluster local.
- Looking closely at the DNS name of the service, the last part, cluster dot local, is the default domain name of the Kubernetes cluster.

## 9. Pitfalls and misunderstandings
- That way, while working in the dev environment, you don't accidentally modify resources in production.
- If you want to make sure that this pod gets created in the dev environment all the time, even if you don't specify the namespace in the command line, you can move the namespace definition into the pod definition file like this.
- But what if we want to switch to the dev namespace permanently so that we don't have to specify the namespace option anymore?
- We do not know how many replica sets.
- And we don't want to spend a lot of time during the exam just not knowing what those are.
- However, when you upgrade your instances, you do not want to upgrade all of them at once, as we just did.
- Finally, say, for example, you would like to make multiple changes to your environment, such as upgrading the underlying web server versions, as well as scaling your environment and also modifying the resource allocations, etc. you do not want to ...
- And, I do not see any arguments.
- So taking a quick look, I don't see anything wrong with it.
- So this exercise was just to kind of make sure you know that you don't accidentally put in a number instead of a string.

## 10. Troubleshooting angle
- So there is some kind of error.
- So if we look at the file, we see that the API version is app slash v1 which seems to be correct, but the kind is deployment, which is also right, but the issue is that it's case sensitive, right?
- So the reason we have these kind of exercises is just to help you understand and learn how to, you know, know what the issue is when you come up across these errors.
- So oftentimes you'll face these kind of errors because of these kind of typos or, you know, a word's not being spelled correctly or not in the right case.
- And you should know what those mean when you see these kind of errors.
- So I've just fixed that and let's proceed with the creation.
- Suppose one of the upgrades you performed resulted in an unexpected error, and you're asked to undo the recent change You would like to be able to roll back the changes that were recently carried out.
- So try and fix it.
- So, there's the link here, and clicking on it, we see that it gives us a bad gateway error.
- Of course it's obvious, but I just wanna show you if you're not sure what the error is then you've got to look at one of these pods in a bit more detail.

## 11. CKA / CKAD relevance
- For example, the father addresses Mark simply as Mark.
- For example, if you wanted to use the same cluster for both dev and production environment, but at the same time isolate the resources between them, you can create a different namespace for each of them.
- For example, for the web pod in the default namespace to connect to the database in the dev environment or namespace, use the service name namespace cluster dot format That would be DB service, dot dev, dot svc cluster local.
- For example, this command is used to list all the pods, but it only lists the pods in the default namespace.
- Well, contexts are used to manage multiple clusters and multiple environments from the same management system.
- And the image is, and it's good to create a practice of just copying and pasting from the question as that will also help you in the exam if you are learning this for the purpose of giving the exam.
- Say, for example, you have a web server that needs to be deployed in a production environment.
- Multiple such pods are deployed using replication controllers or replica sets.
- So this is one of the approach you can use in the exam if you have to edit something that's not actually editable directly, or you could edit the pod itself the pod definition that you have locally, and update that.
- So for example, in general if I had this application locally, I would run python abdo py or if there's an executable called web app.

## 12. Source Contributions
- Matched Global Concepts:
  - Recap - Namespaces (match score: 2, notes: 71)
  - Solution - Deployments (optional) (match score: 2, notes: 82)
  - Recap - Deployments (match score: 2, notes: 36)
  - Solution - Commands and Arguments (Optional) (match score: 2, notes: 197)
  - Solution - Services (optional) (match score: 2, notes: 97)
  - Solution - Namespaces (optional) (match score: 2, notes: 45)
  - Solution - ReplicaSets (optional) (match score: 2, notes: 134)
  - Recap - Pods with YAML (match score: 2, notes: 65)
- Course/Section Perspective Coverage:
  - certified-kubernetes-application-developer / 02_Core Concepts: 530 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 197 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 8 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 9 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 16 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 19 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 027_Recap - Namespaces.extraction.md | Entry 20 | Type Implementation Step

