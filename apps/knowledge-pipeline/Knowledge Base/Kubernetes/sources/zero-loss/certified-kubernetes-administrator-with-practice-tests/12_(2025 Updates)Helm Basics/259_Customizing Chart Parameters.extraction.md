# Extraction: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 259_Customizing Chart Parameters

---

## Entry 1
Type: Concept  

Content:
Instructor: Let us now look at how to customize chart parameters while installing a chart.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
When we installed WordPress, we installed everything with its default value.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
But we may not want to do that at all times.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Exam Tip  

Content:
For example, the block has a default name called User's Blog.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
We may not want our WordPress site to have this name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
So how did it get this name in the first place?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
The WordPress application deployed by the deployment.yaml file has a WordPress blog name value set as environment variable, and it picks the value from the values.yaml file which has it set to User's Blog.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So that's where the value is being picked from.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
Now, when we install the WordPress application with a helm chart, we did it with a single helm install command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
Now, this command pulls the chart and deploys the application instantly, so there is no window for us to modify the value in values.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
One way we could modify some of the default values is by passing in a command line parameter along with the helm install command using the set option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
With the set option, you can pass in any field from the values.yaml file and set a value for it in the command line.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Exam Tip  

Content:
This can be used multiple times to pass multiple parameters to the command line to customize the deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Exam Tip  

Content:
So here we customize the WordPress blog name property to helm tutorials and the user email to john@example.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
And these override the values set in the values.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
Now, if there are too many of these values, then another option is to move these to our own custom values.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
So here we create a file named customvalues.yaml, and we then move the variables inside this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
Since this is a yaml file, we replaced the equal sign with the colon, and we then pass in this file using the values option like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
So dash dash values customvalues.yaml So this is going to now pick the values from this custom.values file, and then override the values in the default values.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
And finally, what if we really want to modify the built-in values.yaml file itself instead of using the command line option or the custom values file?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So instead of running the helm install command, we will break it up into two commands.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
First, we pull the chart using the helm pull command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
Now, this will pull the chart in an archived form or compressed form, and then you will have to unarchive or uncompress it, or you could have helm uncompress it by running the helm pull command with the dash dash untar option in the command line.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
Now, this creates a directory named WordPress.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Under this, you will see all the files that are part of the chart, and there is the values.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
We can then open and edit this file in any text editor.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
And then once we are ready, we run the helm install command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
But instead of specifying the WordPress chart name, now, we specify the path to the local WordPress directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So the ./ here indicates current directory, and it picks the chart from the WordPress directory, which is under the current directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So when you run the helm install command, you can specify a release name followed by the chart name, which is on the chart repository, or if you have a local chart on your local file system in a particular directory, you can specify the path to that directory as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
Well, that's all for now, and I'll see you in the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 259_Customizing Chart Parameters
- File: 259_Customizing Chart Parameters.txt
- Topic: Customizing Chart Parameters
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
