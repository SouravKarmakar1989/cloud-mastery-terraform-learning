# Extraction: certified-kubernetes-application-developer / 10_Helm Fundamentals / 171_Helm Concepts

---

## Entry 1
Type: Concept  

Content:
-: Let us now understand the helm concepts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So back to our WordPress application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
We have now discussed about the challenges.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Let us now see how Helm solves these challenges using charts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
Here are the yaml files that we plan to use.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
We have the deployment dot yaml the secret dot yaml tv dot yaml, PVC dot yaml and the service dot yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
Now each with its own definition to deploy a component of the WordPress application on Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Now we know that some of these have values that might change between different environments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
Well, users may prefer to use a different version of the WordPress image that is used to deploy the WordPress application or different size of disc.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
And of course, the WordPress admin password is going to be different as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
So the first step is to convert these files into templates where these values become variables.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
The two curly braces indicates that these are variables and that the values specified within our variable names which will be used to fetch these values from another place.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So what is that other place where these values are fetched from?

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
These values are stored in a file named Values dot yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
These, this file has the image storage and password encoded variables defined with the values We want these to have.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
This way anyone who wants to deploy this application can customize their deployment by simply changing the values from the single file called Values dot yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
So a combination of templates plus values dot yaml gives us the final version of definition files that can be used to deploy the application on the Kubernetes cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
Together the templates and the values file forms a helm chart.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Exam Tip  

Content:
A single helm chart may be used to deploy a simple application like WordPress in our example and it'll have all the necessary template files for different services as well as the values file with the variables.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
It also has a chart dot yaml file that has information about the chart itself, such as the name of the chart the charts version, a description of what the chart is some keywords associated with the application and information about the ERs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
Now you can create your own chart for your own application or you can explore existing charts from the artifact hub@artifacthub.io and look for charts uploaded by other users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
This hub is called as a repository that stores helm charts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
As of this recording, there are over 5,700 charts available.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
Search for a chart for the application you're trying to deploy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
You -: Can either search using this web interface or you can search using the command helm search followed by hub to indicate that you wish to search the Artifact Hub.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
The artifact hub is the community driven chart repository but there are other repositories as well such as the Bit nami Helm repository.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
To search for charts in other repositories you must first add a repository to your local helm setup.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
For this run the command Helm repo add to add the bit NAMI repository with the link to the Bitnami charts repository.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
Then search the repository using the helm search repo command instead of the search hub command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
And you can list existing repos using the helm repo list command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
Now, once you find the chart the next step is to install the chart on your cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
For this run, the helm install command followed by a release name and the chart name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Exam Tip  

Content:
Now, when this command is run the helm chart package is downloaded from the repository and extracted and installed locally.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
So each installation of a chart is called a release and each release has a release name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
So that's the release name that you specify within the helm installed command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Exam Tip  

Content:
For example, you can install the same application using the same chart multiple times on a Kubernetes cluster by running the helm Install command multiple times and each time you run the helm install command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
A release is created and each release is completely independent of each other.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Let's proceed to some additional helm commands.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Exam Tip  

Content:
To list installed packages, run the helm list command to uninstall packages, run the helm uninstall command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
Now, we saw that we could use the helm install command to download and install a helm chart, but if we only need to download it and not install it, then run the helm pool command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Now use the dash UN option because the chart is normally downloaded in a TAR archive format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
The Antar option will extract its contents after downloading it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
Now once extracted, you can find the contents of the chart.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
When you list the files under the extracted folder it's gonna be in the name, same name of the chart and you may open and edit the values dot yaml file to change any values that if required.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Now, once the changes are made install the local chart using the Helm Install Command but by specifying the path to that particular directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So that is all that we will be discussing about Helm in this course.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
There's so much to learn about Helm so it requires an entire course of its own.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
So we are working on an entire course on Helm for beginners and we'll be releasing that soon.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So watch out for that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Exam Tip  

Content:
From an exam perspective we have already covered what is required for you to know.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
So head over to the labs and practice working on help.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 171_Helm Concepts
- File: 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
