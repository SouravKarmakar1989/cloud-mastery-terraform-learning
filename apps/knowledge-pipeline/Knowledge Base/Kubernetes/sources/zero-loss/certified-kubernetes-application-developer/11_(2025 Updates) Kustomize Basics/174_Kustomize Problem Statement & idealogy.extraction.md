# Extraction: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy

---

## Entry 1
Type: Implementation Step  

Content:
(upbeat music) Instructor: Before we get started taking a look at what is Kustomize and how to use it, I wanna start off by going over what problems it tries to address and why it was ultimately created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Exam Tip  

Content:
So let's take a look at a simple example.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Implementation Step  

Content:
In this case, we have this nginx deployment YAML file where we're going to deploy one single nginx pod in this case.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Exam Tip  

Content:
And let's say that we have multiple environments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Implementation Step  

Content:
We're gonna have one for development, which is developing on our local machine, one for staging, and then ultimately one for our production environment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 6
Type: Implementation Step  

Content:
And let's say that we want to customize our deployment so that it behaves a little bit differently in each one of our environments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
And specifically in this case, let's say we wanna modify the replicas on a per-environment basis so that in our development environment, we're developing on our local machine, which is not very powerful.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
We just wanna have one replica.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
In our staging, we might have two to three.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
And then in our production, which is gonna be handling a lot of traffic, maybe we want 5 to 10.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
So how do we actually go about modifying the different configurations on a per-environment basis? 'Cause right now, we just have one nginx deployment YAML file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
And so it's going to deploy one replica across all of our environments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Implementation Step  

Content:
One of the simplest solutions to this problem is to create three separate directories, one for each environment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So we have one for development, one for staging, one for production.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
And what we want to do is we want to have all of the Kubernetes configs for each environment within their respective folder.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
So we're essentially duplicating the configs across all of the three different environments and then just modifying the attributes on a per-environment basis so that we can have different replicas for each environment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
And so what this is gonna look like is, in the deployment file in the dev folder, we're going to make sure that the replicas is set to 1, and in the staging folder the replicas will be set to 2, and in the production the replicas is gonna be set to 5.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So you could see it's the exact same config that we're essentially copying in the three different folders.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
We're just updating the specific parameters that we want updated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
And in this case, it's just the replicas.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
And then to actually, you know, push these configs or these changes out, we can just do a kubectl apply and just specify the specific environment directory that we're using.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
So if we're gonna do development, we just specify development and you can see the 1 nginx pod gets created 'cause we specified the 1 replica.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
And then if we do the same thing for staging, we'll see that it'll create the two nginx pods in this case.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 24
Type: Concept  

Content:
Now, this is a perfectly fine solution.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
It'll work.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Troubleshooting  

Content:
There's no issues, there's no limitations with the solution.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
However, I will say that it is not the most optimal solution and it's certainly not the most scalable solution.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Concept  

Content:
And the reason I say this is because imagine if we start to expand our Kubernetes environment, so we start creating more resources.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
And so let's say we wanna create a new service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Implementation Step  

Content:
We create a service.yml file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Warning/Pitfall  

Content:
Well, now when we create a service.yml file, we have to remember to copy it to all three directories, because we don't want it to be missing from one of our environments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So now you could see that copying all of these files is going to be a little bit more tedious.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
And anytime you wanna make any kind of change to one of your files, you have to make sure you do it in all of your environments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Concept  

Content:
And if you got five environments, you have to make sure you do it in all three directories.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
And really, it's going to be only a matter of time before either you or one of your teammates forgets to copy or change something in all of the directories, and then you're gonna have a mismatch in configs across your different environments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
And so that's why I would ultimately not recommend this solution.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 37
Type: Implementation Step  

Content:
It may work for very small deployments, but as the number of resources that you have continues to grow, it's going to be harder and harder to maintain this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
And this is one of the main reasons why Kustomize was created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 39
Type: Troubleshooting  

Content:
We need a better solution to addressing this issue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Concept  

Content:
How do we make it so that we can customize each one of our environments without having to duplicate all of our code, right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
We wanna treat this just like regular application code where we're not repeating everything more than once.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Troubleshooting  

Content:
So let's take a look at how Kustomize addresses this issue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 43
Type: Concept  

Content:
And I do wanna really reiterate what is the underlying problem.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 44
Type: Concept  

Content:
And that is that we want a way to reuse our Kubernetes configs and only modify what needs to be changed on a per-environment basis.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Warning/Pitfall  

Content:
What we don't wanna do is copy all of our configs across each and every environment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Concept  

Content:
That is just not a scalable solution.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 47
Type: Concept  

Content:
So the way that Kustomize handles this is that Kustomize has two key terms that you have to understand.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Implementation Step  

Content:
There's your base, or your base config, and then you have your overlays.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So what are these two things?

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 50
Type: Concept  

Content:
Well, base config is kind of exactly what it sounds like.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 51
Type: Concept  

Content:
Your base config represents config that's going to be identical across all of your environments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 52
Type: Concept  

Content:
So any resources or configs that you know will be the same across all your environments, you put it in your base config.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 53
Type: Concept  

Content:
Your base config also represents default values.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
So you could provide default values across all of your environments and you can then overwrite them later on.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 55
Type: Implementation Step  

Content:
So here we've got the same nginx deployment file that we had in the previous slides.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 56
Type: Concept  

Content:
And in this case, I've set the replicas to 1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 57
Type: Concept  

Content:
So this is my base config.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Concept  

Content:
This is gonna be the default across all of my environments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 59
Type: Warning/Pitfall  

Content:
Now, we already know we don't want it to be 1 in staging and production, and we only want it to be 1 in development, but we'll worry about that in a second.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
So the next term that I mentioned was overlays.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 61
Type: Operational Insight  

Content:
So the overlays allow us to customize the behavior on a per-environment basis.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
So we can create an overlay for each one of our three environments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 63
Type: Concept  

Content:
And here we can specify all of the properties or parameters that we want to overwrite or change from the base config.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 64
Type: Concept  

Content:
So we are only interested in replicas at the moment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 65
Type: Concept  

Content:
So I have specified in the overlays, I wanna change the replicas to these specific values in each one of the environments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 66
Type: Concept  

Content:
So in the development environment, I mean, there's no need for this overlay, because the default's already set to 1, so there's nothing to be need to change.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
But for staging, we wanna overwrite the default of 1 and change it to 2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 68
Type: Implementation Step  

Content:
So we have an overlay for staging, and then for production, we are then going to override it to a value of 5.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
And so that is the base and overlay relationship within Kustomize.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 70
Type: Concept  

Content:
When you're using Kustomize, your folder structure is going to follow a very similar pattern.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 71
Type: Concept  

Content:
You're going to have a base directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 72
Type: Concept  

Content:
The base directory, once again, is going to contain all of your base configurations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 73
Type: Implementation Step  

Content:
So all of your Kubernetes resources, all of your configs that are going to be pretty similar across all of your deployments, you're gonna wanna put them there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 74
Type: Implementation Step  

Content:
And then you're gonna have a separate folder for overlays.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 75
Type: Concept  

Content:
And within the overlays folder, you're gonna have a different folder for each one of your environments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 76
Type: Best Practice  

Content:
And each one of these environments are going to have the values that you want to overwrite and change from the base config, as well as any new resources that should only be added exclusively for that specific environment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
And so the workflow is going to look like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 78
Type: Concept  

Content:
You're gonna have your base configs, you're gonna have your overlays.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 79
Type: Implementation Step  

Content:
Kustomize is going to take both of them, and it's going to create the final Kubernetes manifest that we can then apply to our Kubernetes cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Warning/Pitfall  

Content:
The great part about Kustomize is it actually comes built in with kubectl, so you don't have to install any other packages.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 81
Type: Concept  

Content:
However, as we cover in some of the later lectures, you may still want to install Kustomize, because the one that comes shipped with kubectl is not always the latest version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Warning/Pitfall  

Content:
With Kustomize, we're not actually making use of any sort of templating system like we do in Helm, and that's nice, because we don't actually have to learn a templating language.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
All we have to do is just define our base configs and then specify our overlays and what we want to change in the overlays.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
And that keeps things very simple.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 85
Type: Concept  

Content:
We're using standard YML files.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
All of it's very readable, whereas some of the more complex Helm charts, they become very difficult to read because of that templating system.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 87
Type: Concept  

Content:
And because every artifact that Kustomize uses is plain YAML, it can still be used, validated, and processed as nothing more than just plain YAML.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 88
Type: Concept  

Content:
There's no special syntax, there's no special templating language.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 89
Type: Concept  

Content:
It's all just plain YAML.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 90
Type: Concept  

Content:
And I think that's one of the nicest part about Kustomize, is that Kustomize is all about simplicity and it tries to keep it as such.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 174_Kustomize Problem Statement & idealogy
- File: 174_Kustomize Problem Statement & idealogy.txt
- Topic: Kustomize Problem Statement & idealogy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
