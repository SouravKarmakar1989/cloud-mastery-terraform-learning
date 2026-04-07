# Extraction: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 257_Helm Charts

---

## Entry 1
Type: Concept  

Content:
Lecturer: Let's talk a bit more about Helm Charts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Command  

Command:
```bash
Helm is rather an easy to use command line tool.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
You just tell it to install this, uninstall that, upgrade something, roll back to a previous state and so on.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
And it proceeds to do all the heavy lifting behind the scenes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
It's basically an automation tool where we, the human operators, specify our desired end result, the destination, and then it doesn't matter if 5, 10, 20, or 50 actions are necessary to achieve that end result, to get to that destination, Helm will go through all the required steps without bothering us with the details.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Warning/Pitfall  

Content:
But since in the command line, we don't give this tool a lot of info except, "Hey, I want this installed." How does it know how to achieve this goal?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Command  

Command:
```bash
Helm knows how to do its job with the help of what are called charts.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Charts are like an instruction manual for it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
By reading and interpreting their contents, it then knows exactly what it has to do to fulfill as user's request.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
As far as the human operators are concerned, charts are just a bunch of text files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Each specific file named in a specific way has a well-defined purpose.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Exam Tip  

Content:
For example, as discussed before, in the values.yaml file, we'll find parameters that we can pass to the chart so that everything gets installed with a configuration options set as we desire.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Exam Tip  

Content:
Now, we saw this simple example earlier.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
In this case, we have two objects, a deployment and a service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
And it's a standard deployment that deploys parts of an image and a service that exposes it as a node port service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
However, you might notice the image name and replicas are specified in a different form.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
This is called templating.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
The values that go here are part of the values.yam file, and we will look into templating itself in more detail later in this course and how to form these values.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So the two files are templates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
These are customized using the values from the values.yaml file to create the final version of files required to deploy the application on the Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Apart from the values.yaml file, every chart also has a chart.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
This contains information about the chart itself, such as the chart API version, which could be either V1 or V2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
There's also an app version, which is used to specify the version of the application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
And then we have the name of the chart, a description, type of chart, et cetera.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
And these are just a few of the many properties a chart.yaml file has.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
So that's what we will look at next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Exam Tip  

Content:
So let's look at the chart.yaml file of this WordPress site as an example to understand it better.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
The API version is the API version of the chart.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Now, when Helm 2 was around, this field did not exist.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
And when Helm 3 was introduced, it came with the additional features that introduced changes in the yaml file, which were not present earlier.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Exam Tip  

Content:
For example, the dependencies section and the type fields that you see here were not available in Helm 2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So Helm 3 needed a way to differentiate between charts built in the past and charts built for Helm 3.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
And so this field was first introduced by Helm 3.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
With this field, Helm 3 can now differentiate between old charts built for Helm 2 and new charts built specifically for Helm 3.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
So old charts will either not have this value set at all, or if you build a chart specifically for Helm 2 today, then it would need to be set to V1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
And all charts built for Helm 3 will have this value set to V2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
So let's say you build a chart with the API version set to V2, but use it on Helm 2, then Helm 2 will not even consider this field, and will simply ignore any additional fields that were not only available for Helm 3, resulting in unexpected results.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
So bottom line is if you are developing a chart going forward, just make sure that you set this to V2 because you're most likely going to write charts for Helm 3.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
And if you're looking at a chart that does not have this value set, then it is very likely that the chart was built for Helm 2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
Okay, so next is the app version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Now the app version is a version of the application that's inside of this chart.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
So in this case, the application is WordPress.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
So this refers to the version of WordPress that this chart will deploy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
This field is for informational purposes only, and then there is version, which is the version of the chart itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
So every chart must have its own version, and this is independent of the version of the app that this chart will deploy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
This helps in tracking changes to the chart itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
The next is the name of the chart, which is set to WordPress, followed by a description.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
And the next is type.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So there are two types of charts, application and library.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
So application is the default type, which is all the charts that we create for deploying applications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
And library is the type of chart that provides utilities that help in building charts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
So we'll discuss more about that later.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
The next are dependencies.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
So the WordPress application is a two tier application that has the WordPress server and a database server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Exam Tip  

Content:
The database in this example is a MariaDB database.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So MariaDB has its own Helm charts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So we could simply add it as a dependency to our application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Warning/Pitfall  

Content:
This way we don't have to merge the manifest files of MariaDB or any other database into this particular chart.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
And then there is a list of keywords associated with this project.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
This can be helpful when searching for this chart in a public chart repository.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Implementation Step  

Content:
And then there is maintainers section, which is information about the maintainers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
And there are optional fields like Home and Icon that are used to share a URL of the homepage of the project and a URL to an icon.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
So a chart directory has the following structure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
It has a templates directory that has the template files that we just talked about.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
It also has the values.yaml and the chart.yaml file we just talked about.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
And apart from these, there may also be a license file that has the chart license information, a readme file that has information about the chart in a human readable form.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
And there could also be a charts directory that has other charts that this chart is dependent upon.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
And we will talk about chart dependency later in this course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
Well, that's all for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 70
Type: Implementation Step  

Content:
I'll see you in the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 257_Helm Charts
- File: 257_Helm Charts.txt
- Topic: Helm Charts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
