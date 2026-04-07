# Extraction: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE)

---

## Entry 1
Type: Implementation Step  

Content:
In this demo, we're going to deploy our application on the Google Kubernetes Engine on Google Cloud Platform.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So as a prerequisite, you must have access to the Google Cloud account.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
Google provides a 12 month free trial with a credit of $1 300.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Best Practice  

Content:
And that should be sufficient to follow this demo.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Warning/Pitfall  

Content:
So if you don't have access to Google Cloud already, use this link and sign up.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
And of course, uh, some basic, um, understanding of working with the Google Cloud environment and the shell are required so that you can set up all the prerequisites.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So we won't be going into that.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Exam Tip  

Content:
Once logged in to the GCP console, we have a project that we have created by the name example voting app.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
So to start with GKE click on the navigation menu on the top left corner.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
And under the compute section click on Kubernetes Engine.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
Once you're in this page click on Create Cluster.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Best Practice  

Content:
So this should load the Kubernetes cluster creation interface.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
So the first thing that you have to do is change, uh, the name here.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Exam Tip  

Content:
So we'll we will name it example voting app.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
We will leave the default values um and for location type and the zone uh we will leave it as, as it is, the master version is the Kubernetes version, which we could either set to a static version or select a release channel to automatically upgrade the Kubernetes versions when new versions are made available on GKE.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
Otherwise, um, if you set it to static, then you, uh, upgrade manually.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Uh, we talk about cluster upgrades in detail in the course.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
For now, let's leave it at the default, and you may choose another version by clicking on this, um, drop down link.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
Now you can make additional changes to the worker nodes, um, that have to be configured so you can make change to the type of virtual machine to be used, the size, etc..

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Um, but we are just going to stick with the defaults for now.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
So we will proceed with creating the cluster, so click on create to begin the creation process.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And remember this can take anywhere between 5 to 10 minutes.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So let's just wait and give it some time to complete.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
You may click on the refresh button to refresh the status.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
All right so now the cluster has been set up.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
Now you can see that by the green check mark next to the cluster name.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
And the easiest way to connect to the cluster is by making use of this connect button right here.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So this will give us the command to connect to the cluster using the cloud shell.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So let's click on that.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 30
Type: Best Practice  

Content:
And on the lower half of the screen the Google Cloud Shell should open up.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
And I'm just going to increase it all the way to the top to make some space.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So this is the command that will enable kubectl to be able to talk to the GKE cluster.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So in Cloud Shell you already have the kubectl utility installed.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
So um all you need to do is run this command to set up, um, Connectivity to the GKE cluster, so it will set up the Kubeconfig and any other required configuration.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Once that is done, we are ready.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So we now clear the screen and if you run the kubectl get nodes command, we can see that we have three worker nodes which are in ready state.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
It's running version 1.11.14.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
And it was set up about 1 to 2 minutes ago.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
So our next task is to get the YAML files for deployments and services that we created earlier.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So to do that we'll open up our GitHub repository where all these files have been committed.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So here we have the GitHub repository.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
And within the Its specifications directory we have all the deployment and service definition files.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
So let's first clone the repository onto the Google Cloud Shell.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So I'm going to run git clone and paste the URL that was copied to the clipboard.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
And let's run git clone command and paste the URL to download the repository.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Exam Tip  

Content:
Now I'm going to CD into the example voting app directory.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
And in here I'm going to the CD specification directory.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
And if I run ls we see all the YAML definition files.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So let's check the changes that we have made to the voting app and the result app services.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
So we made a small change to the services because we are deploying these on the cloud environments.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
Um earlier we discussed about a service type of load balancer where the native load balancer on the cloud is deployed when we create a service.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
So in here we have changed the type of service to load balancer instead of Nodeport.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
And we have done the same for result app service as well.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
So now uh let's start creating these objects.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
So we will start with the kubectl create dash f command.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
And we'll start with the voting deployment itself.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
And then we will deploy the service for voting app.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
Next let's deploy the Redis deployment followed by the service.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
Next we will do the Postgres deployment followed by the Postgres service.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
And now we can do the worker app deployment.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Implementation Step  

Content:
And finally let's create the deployment for the result app as well as the result service.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
Now you can also create all of these at once two by just specifying a wild card instead of each file name.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Implementation Step  

Content:
So you could just do a kubectl create and f and then a dot to just create all of them at once.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
So now we have created all the objects that are needed for this application to run.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
So let's verify that by running the kubectl get deployments command services command.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
Again see that most of the objects have been created with the exception of the worker app which is still being deployed.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
I can see that they are ready.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Warning/Pitfall  

Content:
And we can also see that our load balancers, um, do not have an external IP yet, so they are still in a pending state.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
So at this stage, um, the Kubernetes service is in fact working with the native load balancer.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
So it sent a call to the native load balancer to provision a load balancer on on the Google Cloud Platform.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
So once the load balancer is provisioned and we get the load balancer, um, external URL and IP, it will be populated here.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
So let's give it a couple of minutes.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Implementation Step  

Content:
Um and then check this command again.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
Now we can see that all the five deployments are ready.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
And they have, uh, one out of one pod which are in a running state.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
And we also have our two load balancers with the two external IPS available.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
So everything has been set up as needed.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
And before we test the application, let's check the load balancer configuration.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
So if we click on um services and the ingress tab on the left, we can see that we have two services which are of type cluster IP which are the internal services of DB for Postgres and the other one for Redis.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
And we have two front end services which are making use of the external load balancer.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
And here are the external um, the endpoints, the um the URL that we can use to access the application.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Best Practice  

Content:
If you'd like to see more details, you can click on any of these and this should give you more details about the service in general.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
Um, the load balancer, the internal cluster IP, the load balancer IP, and the load balancer URL.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
And you can see that for all of them the status is okay.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
So now we can test the application.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
So let's uh get the link here.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
So we're going to open up a new uh tab in the browser.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
And uh it will redirect us to the external load balancer IP here.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
And this is our voting application.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
Similarly let's open up the results app in a new tab as well.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
And we will now cast a vote.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
And we see that the result page is updated with the uh, percentage of votes.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
Uh, let's try another vote.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Implementation Step  

Content:
And then we see that this has been updated as well.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Implementation Step  

Content:
So that's a quick and short demo for deploying Kubernetes clusters on GCP.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Implementation Step  

Content:
And I will see you in the next one.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 051_Kubernetes on GCP (GKE)
- File: 051_Kubernetes on GCP (GKE).txt
- Topic: Kubernetes on GCP (GKE)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
