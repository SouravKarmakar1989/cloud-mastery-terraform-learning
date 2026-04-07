# Normalized Concept: Service Accounts

- Concept Key: service-accounts
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 681

## 1. Definition
- I'm just gonna do sa for short and we can see in the default namespace, we've got two total service accounts, one called default, one called dev.
- Now, it's asking us what is the secret token used by the default service account?
- So to get this information, we'll go to kubectl and we'll do a describe of the default service account.
- And we wanna look under tokens.
- And right now, we can see it's set to none.
- So we'll select none.
- So I will select this one.
- And we can see the dashboard application.
- Have the pod details loaded successfully?
- So we'll go back to this and we can see that, you know, there's some red text.

## 2. First-Principles Mental Model
- Instructor: So the first question is asking us how many service accounts exist in the default namespace?
- So I'll do a kubectl get and then we'll do service account.
- We just deployed the dashboard application, inspect the deployment, what is the image used by the deployment?
- So I'll do a kubectl get deployment, and then I'll do a kubectl describe deployment web-dashboard.
- And we wanna go under pod template, under containers, and then for the web-dashboard, we could see this is the name of the container.
- And this is just saying wait for the deployment to be ready.
- And then you can access the dashboard application by selecting this button right here.
- So we'll hit OK here and we'll go to the next question, saying what is the state of the dashboard?
- And the next question is asking at what location is this service account credentials available within the pod?
- Next question is asking us the application needs a service account with the right permissions to be created to authenticate to Kubernetes.

## 3. Why This Exists
- So to get this information, we'll go to kubectl and we'll do a describe of the default service account.
- And right now, we can see it's set to none.
- And this is just saying wait for the deployment to be ready.
- So we'll hit OK here and we'll go to the next question, saying what is the state of the dashboard?
- So we'll go back to this and we can see that, you know, there's some red text.
- It's asking us what type of account does the dashboard application use to query the Kubernetes API?
- So which account does the dashboard application use to query the Kubernetes API?
- And we're trying to identify the service account mounted on it.
- So if we go up to the top, there's gonna be a section called service account.
- And we can see here it's set to default.

## 4. Internal Working
- Instructor: So the first question is asking us how many service accounts exist in the default namespace?
- So I'll do a kubectl get and then we'll do service account.
- We just deployed the dashboard application, inspect the deployment, what is the image used by the deployment?
- So I'll do a kubectl get deployment, and then I'll do a kubectl describe deployment web-dashboard.
- And we wanna go under pod template, under containers, and then for the web-dashboard, we could see this is the name of the container.
- And this is just saying wait for the deployment to be ready.
- And then you can access the dashboard application by selecting this button right here.
- So we'll hit OK here and we'll go to the next question, saying what is the state of the dashboard?
- And the next question is asking at what location is this service account credentials available within the pod?
- Next question is asking us the application needs a service account with the right permissions to be created to authenticate to Kubernetes.
- Create a new service account named dashboard-sa.
- So to do that, we just need to run one single command and that's going to be kubectl create serviceaccount.

## 5. Key Objects / Fields / Relationships
- Instructor: So the first question is asking us how many service accounts exist in the default namespace?
- So I'll do a kubectl get and then we'll do service account.
- I'm just gonna do sa for short and we can see in the default namespace, we've got two total service accounts, one called default, one called dev.
- Now, it's asking us what is the secret token used by the default service account?
- So to get this information, we'll go to kubectl and we'll do a describe of the default service account.
- We just deployed the dashboard application, inspect the deployment, what is the image used by the deployment?
- So I'll do a kubectl get deployment, and then I'll do a kubectl describe deployment web-dashboard.
- And we wanna go under pod template, under containers, and then for the web-dashboard, we could see this is the name of the container.
- And this is just saying wait for the deployment to be ready.
- Have the pod details loaded successfully?

## 6. YAML Deep Dive
- We just deployed the dashboard application, inspect the deployment, what is the image used by the deployment?
- More specifically, it's using the default service account.
- So now it's saying inspect the dashboard application pod and identify the service account mounted on it.
- So what we're gonna do is we're going to edit the deployment configuration for that specific deployment.
- And then I'll do get deployment and I'm gonna grab the web-dashboard and I'm gonna pipe it to a YAML file and I'll just call this dashboard.yaml and then we'll go to the dashboard.yaml file.
- And to specify this service account, we wanna go under the spec for the pod.
- So that's gonna be not the first spec but the second one 'cause this is a deployment.
- And under here, we just specify serviceAccountName and then the service account we wanna give it.
- We'll save this and then I'll do a kubectl apply -f dashboard.yaml.
- The default service account comes with a lot of limitations, so if you have specific access requirements we must create a custom service account.

## 7. kubectl / command usage
- So I'll do a kubectl get and then we'll do service account.
- So to get this information, we'll go to kubectl and we'll do a describe of the default service account.
- So I'll do a kubectl get deployment, and then I'll do a kubectl describe deployment web-dashboard.
- So we'll do a kubectl get pod and I'm gonna do a kubectl describe and we'll describe that pod and I forgot the word pod.
- So to do that, we just need to run one single command and that's going to be kubectl create serviceaccount.
- So to create a token, we have to run the command kubectl create token and then we're gonna create a token for the dashboard-sa service account.
- So here I'm gonna do a kubectl.
- We'll save this and then I'll do a kubectl apply -f dashboard.yaml.
- That's just because the first deployment wasn't created using the apply command.
- So if you have ever authenticated to an API using a curl command or something that you probably know of, the tokens that are passed through as a bearer token in the header of the call.

## 8. Real-world scenarios
- We just deployed the dashboard application, inspect the deployment, what is the image used by the deployment?
- So I'll do a kubectl get deployment, and then I'll do a kubectl describe deployment web-dashboard.
- And this is just saying wait for the deployment to be ready.
- And the next question is asking at what location is this service account credentials available within the pod?
- And now if we do load dashboard, we could see that we're able to load all of the pods that's running on our cluster.
- So what we're gonna do is we're going to edit the deployment configuration for that specific deployment.
- And then I'll do get deployment and I'm gonna grab the web-dashboard and I'm gonna pipe it to a YAML file and I'll just call this dashboard.yaml and then we'll go to the dashboard.yaml file.
- So that's gonna be not the first spec but the second one 'cause this is a deployment.
- That's just because the first deployment wasn't created using the apply command.
- So we've got kubctl get deployment.

## 9. Pitfalls and misunderstandings
- Don't worry about the warning.
- Now, if you don't want a token to be automatically created and mounted inside the pod for the service account, you may add the auto mount Service account token key to false like this.
- You don't have to provide it manually.
- But we don't want all of them to have the same level of access as us.
- For example, we don't want the developers to have access to modify our cluster configuration, like adding or deleting nodes or the storage or networking configurations.
- If you don't specify this option, it is set to always allow by default.
- You don't have to have a high end system or access to cloud platforms or worry about cloud costs to gain practice.
- Our labs are unique, as in, we don't provide a blank environment and give you instructions to copy and paste.
- As this is a beginner's course, we do not deep dive into technical details.
- Now, you don't have to be an expert application developer for this course and there's no real coding or application development involved in either of this course or the certification itself.

## 10. Troubleshooting angle
- So there's an error saying pods is forbidden.
- So it's telling us to get an access token and enter it in the UI dashboard and see if that basically fixes the issue.
- So this excerpt from the Kubernetes Enhancement Proposal for creating bound service account tokens describes this form of JWT to be having some security and scalability related issues.
- Moreover, each JWT requires a separate secret object per service account, which results in scalability issues.
- In the earlier lectures, when we discussed about certificates, we discussed that the Cubelets should be part of the system nodes group and have a name prefixed with system node.
- In the earlier lectures, when we discussed about certificates, we discussed that the Cubelets should be part of the system nodes group and have a name prefixed with system node, so any requests coming from a user with the name system node and part...
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...
- So there's an error it's saying pods is forbidden, user block cannot list resources pods in the api group.

## 11. CKA / CKAD relevance
- For example, a monitoring application like Prometheus uses a service account to poll the Kubernetes API for performance metrics.
- The second example I've built a simple Kubernetes dashboard application named my Kubernetes Dashboard.
- For example, in this simple example using Curl, you could provide the bearer token as an authorization header while making a Rest call to the Kubernetes API.
- However, as part of the Kubernetes for the application developers exam curriculum, you only need to know how to work with service accounts.
- For example, a monitoring application like Prometheus uses a service account to pull the Kubernetes API for performance metrics.
- Let's take an example.
- For example, we can have our custom Kubernetes dashboard application, or the Prometheus application deployed on the Kubernetes cluster itself.
- For example, we have a simple pod definition file that creates a pod using my custom Kubernetes dashboard image.
- If you do have multiple ones configured, the modes are set using the authorization mode option on the kube API server.
- You may provide a comma separated list of multiple modes that you wish to use.

## 12. Source Contributions
- Matched Global Concepts:
  - Lab Solution_ Service Accounts (match score: 2, notes: 74)
  - Service Accounts (match score: 2, notes: 181)
  - Authorization (match score: 2, notes: 143)
  - Introduction (match score: 2, notes: 55)
  - Kubernetes Series of Courses (match score: 2, notes: 29)
  - Solution_ Service Account (match score: 2, notes: 67)
  - The Kubernetes Trilogy (match score: 2, notes: 27)
  - Multiple Schedulers (match score: 2, notes: 105)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 01_Introduction: 27 note entries
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 105 note entries
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 221 note entries
  - certified-kubernetes-application-developer / 01_Introduction: 59 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 172 note entries
  - certified-kubernetes-application-developer / 09_Security: 72 note entries
  - learn-kubernetes / 01_Introduction: 25 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 1 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 2 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 9 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 10 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 11 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 13 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 14 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 16 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 171_Lab Solution_ Service Accounts.extraction.md | Entry 20 | Type Troubleshooting

