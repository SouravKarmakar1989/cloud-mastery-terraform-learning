# Extraction: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 180_Managing Directories

---

## Entry 1
Type: Concept  

Content:
(bright music) Instructor: Up to this point, we've only taken a look at the absolute basics of a kustomization.yaml file, and we haven't really explored many of the different features and functionalities the tool brings to the table.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
However, even with our current limited knowledge of kustomize, we can already do some really cool and powerful things with it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Exam Tip  

Content:
One example of this is managing Kubernetes manifests that are spread across multiple directories.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Exam Tip  

Content:
So let's take a look an example of this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Exam Tip  

Content:
In this example, we have a K8s directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
And inside this directory we have four different yaml files.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Implementation Step  

Content:
We have our API deployment YAML file, we've got a service YAML file for our API.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
And then we have the same exact thing for our database.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Implementation Step  

Content:
We've got a deployment for our database as well as a service object for our database.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Implementation Step  

Content:
And when it comes to deploying all of our Kubernetes configs that reside in our K8s directory, we would just go into that directory, the K8s directory, and we would just do a kubectl apply.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Concept  

Content:
Pretty straightforward, nothing special, Kustomize doesn't even come into play here, this is just standard Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Now let's say over time the number of YAML files that we have has grown.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Concept  

Content:
Maybe we have 20, 30, 50 YAML files and it's starting to get a little messy and we want to organize it a little bit more.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Implementation Step  

Content:
And then we decide to then move things into sub directories.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Implementation Step  

Content:
So now our API related configs, so that API deployment YAML file and API service YAML file gets moved under a API subdirectory and all of the deployment and service configurations for the database get moved under a database subdirectory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Implementation Step  

Content:
So, how exactly do we apply our configs now?

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
Well, we can't just go under our K8s directory and do a kubectl apply.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
We actually have to go into each one of these sub directories.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
And so what that would look like is you'd do a kubectl apply -f and then go under K8s/api/ and that's going to deploy the deployment YAML file for the API as well as the service YAML file for the API.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
And we're gonna have to do the same thing for the database directory now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Implementation Step  

Content:
So we go onto the database directory, do a kubectl apply, and that's going to deploy the two YAML files under the database subdirectory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 22
Type: Implementation Step  

Content:
And this is fine, however, as we grow out the number of directories or sub directories that we have, it's gonna start to become a little bit of a pain having to go into each subdirectory and doing a kubectl apply.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
Because then every time we make changes, every time we want to apply our configs or delete our configs, we'd have to go inside each one of our sub directories and make sure we run that command inside each subdirectory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
And we'd also have to configure our CI/CD pipeline to go inside each one of them and do the same exact thing.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
And things start to get messy at that point.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 26
Type: Concept  

Content:
This is where Kustomize comes into play.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
So we can create a kustomization.yaml file in the root of our K8s directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
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
And inside this YAML file or the Kustomization.yaml file, we're going to list out all of the resources we wanted to import.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
So we're gonna provide the relative path from the kustomization.yaml file to all of the specific deployment and service.yaml files within the API and database directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So now, Kustomize is made aware of all of the different Kubernetes configs that we wanted to import.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
And so when it comes to actually applying these configurations, it's going to be a lot simpler because it's just going to be one command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 32
Type: Implementation Step  

Content:
We just do a kustomize build K8s and then pipe it into kubectl apply -f.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
And so now, we no longer have to actually go into each one of the sub directories, we just run this within the root of the K8s directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
It's going to pull that kustomization.yaml file and the kustomization.yaml file has the path to all of the individual YAML files we wanna deploy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
And if you wanna do this natively with kubectl, you can always do a kubectl apply -k k8s.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 36
Type: Troubleshooting  

Content:
So, kustomize has helped us address the issue of splitting all of our configs into separate directories.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
We now no longer have to go inside each one of the different sub directories.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Concept  

Content:
However, with the way we've done it, it's not exactly a perfect solution.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 39
Type: Concept  

Content:
Let's say the number of directories grows, right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
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
Instead of just having two directories, we now have four total.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 41
Type: Concept  

Content:
So we've got the API, the database, one for the cache, and one for Kafka as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Concept  

Content:
And so now our kustomization.yaml file, the list of resources is going to start to get fairly long.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So it's going to import all the resources from the API directory, all the resources from the database directory, all the resources from the cache directory, as well as all the resources from the Kafka directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
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
And so it's gonna start to get really cluttered, really messy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 45
Type: Concept  

Content:
You're gonna have a kustomization.yaml file with basically hundreds of resources getting imported.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
And although that is technically a valid solution, I think we have a better way of handling this using Kustomize.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So what we can actually do is we can add in a separate kustomization.yaml file within each one of the sub directories.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Concept  

Content:
And what we're gonna do inside the subdirectory, kustomization.yaml file is we'll list all of the YAML files within that directory and import that inside that specific kustomization.yaml file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So within this YAML file in the database directory, it's going to import all of the YAML files that reside in the database directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
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
And we're gonna do the same thing for all of the three other sub directories, the API directory, the cash directory, and the Kafka directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
They'll only import the Kubernetes configs for that specific directory and then in the root kustomization.yaml file, all we'll do is we'll provide a path to all of the different directories that we want included.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
So, when we do that, when we specify either the API directory or the database directory inside that root kustomization.yaml file, it's going to go into that subdirectory and it's gonna look for a kustomization.yaml file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
And it's gonna take a look at all the resources that it imports, and the root kustomization.yaml file is going to import all of those.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 54
Type: Concept  

Content:
So now we've kind of better structured our configurations by having a separate kustomization.yaml file inside each subdirectory so that we can keep our root kustomization.yaml file as clean and neat as possible.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
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
And once again, to apply these configs, we just run kustomize build K8s and then pipe that into kubectl apply -f.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
It's just one command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 57
Type: Implementation Step  

Content:
It's gonna deploy all of the resources across all of the sub directories, and we can always do a kubectl apply - k k8s.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 180_Managing Directories
- File: 180_Managing Directories.txt
- Topic: Managing Directories
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
