# Extraction: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS)

---

## Entry 1
Type: Implementation Step  

Content:
In this demo, we're going to create an ECS cluster, which is Amazon's managed Kubernetes service known as Elastic Kubernetes Service.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
And before we begin, there are a set of prerequisites to be configured, such as having an AWS account.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
So if you're new to AWS, then check out this link to get free access.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
You must already have installed the kubectl utility, which we have already done, so that's not required.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
Also, you must have some basic AWS knowledge to perform some basic operations, such as configuring a cluster role for ECS and an IAM role for node group.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Um, a VPC and an EC2 key pair which will be used to SSH to the worker nodes if you have to.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
So the step by step instructions are available in this link.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
So you must have the aws cli installed and have the AWS CLI credentials configured.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
And we already have the kubectl utility installed.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So we're going to skip that.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
And you must have uh created the IAM role for the EKS cluster and a VPC if required.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Or you can use the default one.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
So we will start from this step here, which is of creating an Amazon EKS cluster.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So these are the basic AWS configurations.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Um so we will not spend time on that.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Instead we will dive into creating the Kubernetes cluster.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
So we've already configured all of the prerequisites required on our system.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So to provision an EKS cluster once you're logged into your AWS account go to services.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Now the easiest way to look up things here is to search for EKS within the search window and click on EKS.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
So first thing to do is to name our cluster.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Exam Tip  

Content:
So I'm going to use the name example voting app.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And we will leave the Kubernetes version at 1.16 as default.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
And we must have created a cluster service role.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
So select the role created for the EKS cluster here and then click on next.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
In the networking section We're going for the default VPC, and this is the only VPC that we have in this region.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So one thing to notice here is that we're going with the US West two region which is Oregon two.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
And we're making use of all the default subnets.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
And click on next.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
And again click on next.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
And this is just a review page.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
So you can review and click on create.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So this can take quite some time.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
And after ten minutes.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
So let's just wait for this cluster to be created.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 36
Type: Concept  

Content:
So now our cluster is active and it has got the active check mark here.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
So the next thing to do is to add a node group which is basically a group of worker nodes.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Right.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 39
Type: Implementation Step  

Content:
So we have created a Kubernetes cluster.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
But there are no worker nodes as of now.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
So that's the next step to do.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
So if you go to the compute section just below you'll see an option to add a node node group.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
And let's assign a name for this such as demo workers.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
And we select the EKS Case node role.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
So this is another role that we created as a prerequisite for subnets.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
We select all the default subnets for now.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Of course in your environment you must choose those that are more relevant for you.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
And next up I've got a key that is also created so that we can SSH to worker nodes as part of the prerequisites.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
So this key was created earlier.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Warning/Pitfall  

Content:
Now um you don't really need this unless you are really, uh unless you really want to ssh to the worker nodes.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
Right.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 52
Type: Concept  

Content:
So everything else looks good.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
Um, so we will click on next.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
And next we set the compute configuration.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
And this is basically what images will be used for the worker nodes and their size the disk size etc..

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So I will leave these at the defaults for now.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
Then I'm going to click on next.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
And here's the auto scaling groups where we specify the minimum number of nodes in the cluster.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
The maximum number of nodes and the desired size.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So we will leave the default values here.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Implementation Step  

Content:
And next we will review the selected Configurations and then click on create.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So again this can take a few minutes.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
So let's wait for that to finish.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
Now let's check the status of the node group.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
And we see that there are two nodes which are EC2 instances.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
And our node groups are active.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
So the next step for us is to go to the terminal and set up the kubectl utility to access this cluster.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So run the kubectl version command and verify that it's working.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Implementation Step  

Content:
But currently the kubectl utility is configured to work with our local minikube cluster.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Implementation Step  

Content:
So the aws cli has a command to configure kubectl to work with the remote cluster we provisioned.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
So for this we must first have the AWS cli installed and configured to work with our AWS account.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
So the instructions to install aws CLI are available in the documentation.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
So we have that already installed on our system.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
So we're just going to skip that.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Warning/Pitfall  

Content:
Now if you don't have the AWS cli installed then you follow the relevant, um, steps in the documentation, uh, for your operating system.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Implementation Step  

Content:
So once installed, the documentation page, uh, we have an AWS command to configure.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
Uh kubeconfig.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
It's called, uh, update dash kubeconfig command.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Exam Tip  

Content:
So we copy, uh, this whole command and we paste it in our terminal, and we specify the name of the cluster we created, which is example voting app.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Best Practice  

Content:
So once run, we see that the Kubeconfig um is configured in our home directory under the folder kube to verify if it's working as expected, run the kubectl get nodes command, and we should see the two worker nodes that are provisioned on AWS with their status and version of 1.16.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
So that's a proof that, um, we are connecting to the right Kubernetes cluster and that the Kubeconfig setup, uh, actually worked.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
So as with, um, any managed service, you cannot see the master nodes here.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Warning/Pitfall  

Content:
The master nodes do not host any applications or workloads.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
You cannot SSH to the master nodes or even access them because in managed Kubernetes services, the master nodes are maintained by the service provider.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
Now any kubectl commands we run would be targeting the remote cluster on AWS.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Best Practice  

Content:
So now we should be good to move ahead with our application deployment.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
So just as before we will go to our GitHub repo.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
And I'm going to clone it again.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
And so I'm going to run git git clone voting app command.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Exam Tip  

Content:
And once downloaded I'm going to go into the example voting app.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
And under the CSS specifications directory.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Implementation Step  

Content:
If I run the LS command I see all the deployment definition files as well as the service definition files.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Implementation Step  

Content:
So now let's get started and create these resources.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Implementation Step  

Content:
So first I'll create the voting app deployment.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Implementation Step  

Content:
So kubectl create command and specify the voting app deployment file and followed by the service.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Implementation Step  

Content:
And then we will create the Redice deployment.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Implementation Step  

Content:
And then the Redice service.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Implementation Step  

Content:
Followed by the Postgres deployment.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
And the Postgres service.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Implementation Step  

Content:
And next we create our worker deployment.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Implementation Step  

Content:
And finally we create the result app deployment and the result app service.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Implementation Step  

Content:
So that's all of the objects and they've all been created.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Implementation Step  

Content:
So let's check the status using the kubectl get deployments command.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Implementation Step  

Content:
And we can see that we have most of our services that are up except for the worker which is still in process of being deployed.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
And we have two load balancer type services.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
And we also see the public IP and other public URL with which we can access them.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Implementation Step  

Content:
So let's wait for our worker app to be deployed.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Implementation Step  

Content:
And once that is done, we will go ahead and access the applications using the load balancer IP address, so the service has already interacted or made a call to the load balancer and created a load balancer on on the AWS environment.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
And this is the IP or the URL for that.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Implementation Step  

Content:
Now all of our pods are up and running, and all of our deployments have one out of one ready pods, which is what we expect.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
So let's view the voting service using the load balancer.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
And I'm going to open it up in a web browser.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
So I'll paste the URL and hit enter.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
And here we go.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
So we have our voting application which is accessible from our public external load balancer and the external IP.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
So I'm going to make a selection here.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
And to validate that let me copy and paste the external IP or the URL for my result app.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
And here we see the the results as expected.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
So let's change the vote.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Concept  

Content:
And we verify that the Result reflects that change.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Implementation Step  

Content:
So this was a quick and easy deployment for our voting application on AKS.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Concept  

Content:
Once you're done, make sure that you go back and clean up anything that you've done to save cost.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Implementation Step  

Content:
So make sure to delete the AKS cluster and any applications that you have deployed on that.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Concept  

Content:
All right.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 125
Type: Implementation Step  

Content:
Thanks for your time and I will see you in the next demo.

Source:
- Course: learn-kubernetes
- Module: 09_Kubernetes on Cloud
- Lecture: 053_Kubernetes on AWS (EKS)
- File: 053_Kubernetes on AWS (EKS).txt
- Topic: Kubernetes on AWS (EKS)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
