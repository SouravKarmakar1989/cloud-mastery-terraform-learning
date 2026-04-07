# Extraction: certified-kubernetes-application-developer / 10_Helm Fundamentals / 173_Solution_ Helm Concepts

---

## Entry 1
Type: Concept  

Content:
Instructor: In this video, I'm going to walk you through the solutions for the Helm lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Exam Tip  

Content:
The first question is asking which command is used to search for a wordpress helm chart package from the Artifact Hub?

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
To do that, we would run helm search hub and the name of the chart.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
So in this case, it's going to be a wordpress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
And that's going to give all the results.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So, helm search hub wordpress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
The next question is telling us to add a bitnami helm chart repository in the controlplane node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Exam Tip  

Content:
And to do that, we can run a helm repo add bitnami, and then we're going to give the URL right here. "Which command is used to search for the joomla package from the added repository?" It's going to be helm search repo joomla. "What is the app version of joomla in the bitnami helm repository?" So the app version is 4.1.5. "Which chart version can you see for the joomla package in the bitnami helm repository?" That's going to be 13.2.16.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
Next question is asking, "How many helm repositories are added in the controlplane node?" To find that out, we'll do helm repo list.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
That's going to list out all the repositories.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
And we can see there are three total.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Best Practice  

Content:
For the next question, we have to install drupal helm chart from the bitnami repository, and the release name should be bravo.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And to do that, we'll do helm install.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
Then we'll provide the release name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
And the chart is going to be bitnami/drupal.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
And after that's run, we can do a helm list to see if it was installed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Exam Tip  

Content:
And we can see bravo. "Which command is used to list the packages installed using helm?" That's going to be helm list. "Uninstall the drupal helm package which we installed earlier." And so all we have to do is helm uninstall bravo.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Exam Tip  

Content:
For the next question, we have to download the bitnami apache package under the /root directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Exam Tip  

Content:
And it's telling us to not install the package, just download it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
And to do that, we'll do a helm pull --untar bitnami/apache.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
The next question is saying, "Inspect the file values.yaml and make changes so that there are two replicas of the webserver running and the HTTP is exposed on nodeport 30080." And if you want, you can take a look at the documentation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So, I'm going to move into the /apache directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
And I'm going to open up the values.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And so we want to find where the replicas are defined.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So I'm going to do a / to search, and I'll search for replica.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
And so we can see replicaCount.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
And I'm going to set that to be 2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
And the next thing we want to search for is nodePort.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
And we can see nodePorts here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
And I'm going to change the HTTP port to be 30080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
And I'm going to hit OK.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Exam Tip  

Content:
And then after that, after we make those changes, we have to install the apache from the downloaded helm package and give it a release name of mywebapp.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
And to do that, we'll do a helm install.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
Give it the name mywebapp.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
And then the current directory because we're already in the /apache directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
And we'll run the validation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
And the final question is just saying that you can take a look at the Apache page by clicking on this link right here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
And so that's going to wrap up the Helm lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 173_Solution_ Helm Concepts
- File: 173_Solution_ Helm Concepts.txt
- Topic: Solution_ Helm Concepts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
