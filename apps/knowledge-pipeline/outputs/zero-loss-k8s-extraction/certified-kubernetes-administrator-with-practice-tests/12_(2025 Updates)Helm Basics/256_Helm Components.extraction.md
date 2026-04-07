# Extraction: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 256_Helm Components

---

## Entry 1
Type: Concept  

Content:
Instructor: Let's look at the different components of Helm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Command  

Command:
```bash
Helm has multiple components we'll be working with, so let's take a look at its general structure, concepts, and the pieces we'll be working with.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So we have the Helm command line utility on our local system that we will be using to perform Helm actions such as installing a chart, upgrading, rollback, et cetera.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
Charts are a collection of files, and they contain all the instructions that Helm needs to know to be able to create the collection of objects that you need in your Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
By using charts and adding the objects according to these specific instructions in the charts, Helm, in a way, installs applications into your cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
When a chart is applied to your cluster, a release is created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
A release is a single installation of an application using a Helm chart.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Exam Tip  

Content:
Within each release, you can have multiple revisions, and each revision is like a snapshot of the application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
Every time a change is made to the applications, such as an upgrade of the image or change of replicas or configuration objects, a new revision is created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Now, just like how we can find all kinds of images on Docker hub or Vagrant boxes on the Vagrant Cloud, if you're familiar with that, you know, we can find Helm charts in a public repository.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
We can easily download publicly available charts for various applications, and these are readily available and we can use them to deploy applications on our cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
And finally, to keep track of what it did in our cluster, such as the releases that it installed, the charts used, revision states and so on, Helm will need a place to save this data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
This data is known as metadata, and that is data about data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Now, it wouldn't be too useful if Helm would save this on our local computer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
If another person would need to work with our releases through Helm, they would need a copy of this data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
So instead, Helm does the smart thing and saves this metadata directly in our Kubernetes cluster as Kubernetes secrets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
This way, the data survives, and as long as the Kubernetes cluster survives and everyone from our team can access it, so they can do Helm upgrades or whatever it is that they want to do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
So Helm will always know about everything it did in this cluster and will be able to keep track of every action, every step of the way, since it always has its metadata available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Now, let's look at each of these in a bit more detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
Charts are a collection of files, and they contain all the instructions that Helm needs to know to be able to create the collection of objects that you need in your Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
By using these charts and adding the objects according to that specific instructions, is how, as we discussed, Helm installs applications into your cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Now, I'll be using two applications throughout this course to explain concepts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
First is a simple Hello World application, which is a simple NGINX-based web server and a service to expose it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And the other would be a WordPress site, which is slightly more complex.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Now, the simple web server will help you understand the concepts in the simplest form.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Exam Tip  

Content:
The WordPress example will help you understand its real life usage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Exam Tip  

Content:
For example, in this simple Hello World application, we have two objects, a deployment and a service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Best Practice  

Content:
And most of these you should be able to relate to what you learned in the Kubernetes course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
It's a standard deployment object that deploys pods of an image and a service that exposes it as a node port service, for instance.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
However, you might notice the image name and replicas are specified in a different form.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
This is called templating.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
The values that go here are part of another file called as the values.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Now in a Helm chart, we'll often be interacting with a special file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
You see, most of the time we won't need to build the charts ourselves.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
We have hundreds of them already available to download in the public repository.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Exam Tip  

Content:
But what we'll almost always need to do or want to do is configure the package that we installed through that chart.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
The values.yaml file is where the configurable values are stored, and most of the time, this is the only file you'll have to modify to customize the deployment of the application for your needs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
This is like the settings file or the inputs file for the Helm chart.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
The charts are way more complicated for a WordPress application with so many files and very complex templating.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
And we will look more into templating and get into the details about these charts later in this course, but for now, we'll stick with simple charts to understand the basics.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
Now, when a chart is applied to your cluster, a release is created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
Now we could ask ourselves why the need for an additional item?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
Why can't we just say we installed a chart to Kubernetes?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
Now in the command helm install my-site bitnami wordpress, we used the chart at Bitnami WordPress and named the release my-site.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So why not just use a shorter command like helm install bitnami wordpress and be done with it?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
Without specifying a release name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Exam Tip  

Content:
Well, one simple reason why it makes more sense to have releases based on charts is that we can install multiple releases based on the same chart.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
So we can launch a second WordPress website with a command such as helm install my-SECOND-site bitnami wordpress.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
And since there are two different releases, they can be tracked separately and changed independently.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
Even though they're based on the same chart as releases, they're two entirely different entities.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
Now, this can be useful in a lot of scenarios.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Exam Tip  

Content:
For example, you can have a release for a WordPress website that your customers use and another release for a WordPress website that is only visible to your internal team of developers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
There they can experiment and add new features without breaking the main website.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Best Practice  

Content:
And since the two releases are based on the same chart, once they get something working correctly on the development site, they can transfer it to the main website since it should work exactly the same way as the two websites are basically clones and built the same way.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Exam Tip  

Content:
Now we saw an example of a very basic chart developed in Helm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Exam Tip  

Content:
And earlier we saw an example of a chart to deploy a WordPress application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
And what if we want to deploy a new chart, say, for deploying Redis or Prometheus, for instance?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Thousands of charts are readily available at different Helm repositories across the world.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
There are different providers who are hosting Helm repositories such as AppsCode, Community Operators, TrueCharts, Bitnami, et cetera.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Warning/Pitfall  

Content:
And you don't have to go to each of these repositories to search for charts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
All of these repositories have listed their charts in a single location known as the Helm Hub or Artifact Hub, as it is also known now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So at Artifacthub.io, you'll find charts that you can use right away.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Exam Tip  

Content:
As of this recording, there are over 6,300 packages available there, and you may search for the chart you're looking for or browse through available ones, and sometimes the charts are actually published by the actual developers of that project.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So you'll see the official or verified publisher badges in such cases, and it's preferable you use those when available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
We'll see more about installing charts from repositories in the upcoming videos and labs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
Well, that's all for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 67
Type: Implementation Step  

Content:
I'll see you in the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 256_Helm Components
- File: 256_Helm Components.txt
- Topic: Helm Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
