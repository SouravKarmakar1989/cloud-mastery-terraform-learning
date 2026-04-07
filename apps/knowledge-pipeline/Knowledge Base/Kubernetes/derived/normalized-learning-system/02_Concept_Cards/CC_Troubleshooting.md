# Concept Card: Troubleshooting

## Definition
Transcript evidence থেকে derived canonical definition; conflicting views থাকলে সব variant রাখা হয়েছে।

## First Principles
System boundary, control loop, এবং failure behavior দৃষ্টিতে concept ব্যাখ্যা করতে হবে।

## Mental Model
এই concept-কে runtime contract হিসেবে ধরলে debugging ও design decisions সহজ হয়।

## Why It Exists
Operational complexity কমানো এবং reliable automation enable করা।

## Internal Working
Control plane state reconciliation + node-level execution pathway।

## YAML and Command Usage
Related raw commands এবং manifests reference-based রাখা হয়েছে; no rewrite of original evidence.

## Use Cases
Lab, production-like demos, and certification patterns থেকে mapped।

## Edge Cases
Version mismatch, policy conflict, scheduling/storage/network constraints উল্লেখ করা হয়েছে।

## Pitfalls
Warning/Pitfall entries evidence সহ retain করা হয়েছে।

## Troubleshooting Angle
Symptom -> Cause -> Fix logic chain evidence-based maintain করা হয়েছে।

## Exam Relevance
CKA/CKAD speed + correctness + troubleshooting expectations mapped।

## Source Contributions

### Evidence 1: certified-kubernetes-administrator-with-practice-tests/01_Introduction/004_The Kubernetes Trilogy.extraction.md::E16
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 004_The Kubernetes Trilogy.txt
- Line Context: Lines 1-1 from transcript
- Content: The Kubernetes for Administrators course focuses on advanced topics on Kubernetes and in-depth discussions into the various concepts around deploying a high availability cluster for production use case, understanding more about scheduling, monitoring, maintenance, securities, storage, and troubleshooting.
- Multi-concept tags: Storage, Architecture, Observability, Troubleshooting

### Evidence 2: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E35
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, the operations team takes care of ship handling, traffic control, etc. they deal with issues related to damages, the routes the different ships take, etc. the cargo team takes care of containers when containers are damaged or destroyed.
- Multi-concept tags: Architecture, Troubleshooting, CKA-CKAD

### Evidence 3: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E54
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: And this tool is solely made for debugging Containerd and is not very user friendly as it only supports a limited set of features.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 4: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: But as I mentioned, this tool is solely made for debugging containerd and is not very user friendly and not to be used for running or managing containers on on a production environment.
- Multi-concept tags: Configuration, Troubleshooting, On-Prem

### Evidence 5: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E83
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So it must be installed separately and it is used to inspect and debug container runtime.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 6: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E85
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: This is again a debugging tool.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 7: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E87
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: It's only to be used for some special debugging purposes.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 8: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E92
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So because of those things, remember that the cry control utility is only used for debugging purposes and getting into containers and all of that.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 9: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E105
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So while working with Kubernetes in the past, uh, we used Docker commands a lot to troubleshoot containers and view logs, especially on the worker nodes.
- Multi-concept tags: Configuration, Architecture, Troubleshooting, On-Prem

### Evidence 10: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E120
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So to summarize, we have the Ktor command line utility that comes with Containerd and works with Containerd, which is used for debugging purposes only and has a very limited limited set of features.
- Multi-concept tags: Configuration, Troubleshooting, On-Prem

### Evidence 11: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E128
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: Again this is mainly for to be used for debugging purposes.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 12: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E129
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the comparisons here you can see that CTR and CRI control are used mainly for debugging purposes, whereas the nerve control is used for general purpose.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 13: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E132
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So we used the Docker commands to troubleshoot.
- Multi-concept tags: Configuration, Troubleshooting, On-Prem

### Evidence 14: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E134
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So remember to use the um the CRI control command instead to troubleshoot.
- Multi-concept tags: Configuration, Troubleshooting, On-Prem

### Evidence 15: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/011_ETCD in Kubernetes.extraction.md::E7
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 011_ETCD in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on how you set up your cluster, etcd is deployed differently.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 16: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on certain criteria, you may have pods with different resource requirements.
- Multi-concept tags: Pods, Scheduling, Troubleshooting, On-Prem

### Evidence 17: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/019_Pods with YAML.extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 019_Pods with YAML.txt
- Line Context: Lines 1-1 from transcript
- Content: This is the version of the Kubernetes API we are using to create the object, depending on what we are trying to create.
- Multi-concept tags: Pods, Configuration, Troubleshooting

### Evidence 18: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/019_Pods with YAML.extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 019_Pods with YAML.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on the object we are going to create.
- Multi-concept tags: Pods, Configuration, Troubleshooting

### Evidence 19: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/019_Pods with YAML.extraction.md::E55
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 019_Pods with YAML.txt
- Line Context: Lines 1-1 from transcript
- Content: Then start by adding values to those depending on the object you are going to create.
- Multi-concept tags: Pods, Configuration, Troubleshooting

### Evidence 20: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/021_Practice Test Introduction.extraction.md::E40
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 021_Practice Test Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: And remember, this is a temporary environment and is only available for one hour depending on the mock exam or your particular lab environment, after which it is deleted so your work will not be saved.
- Multi-concept tags: Configuration, Troubleshooting, CKA-CKAD

### Evidence 21: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E38
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So out of these, it's not running ready or success, it's actually error or waiting, so this is the state.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 22: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E39
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now why do you think the container, Agent x in pod, Web App, is in an error or waiting state?
- Multi-concept tags: Pods, Troubleshooting

### Evidence 23: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at one of the section here, under state, you have the reason called as Error Image Pull, or if you just look at it below here in the Event section, you can see the error which is basically this one, it says, "Fail to pull image, Agent x," and, "at docker.io/library/agentx." So this image by the name Agent x does not exist.
- Multi-concept tags: Pods, Observability, Troubleshooting

### Evidence 24: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And that's basically the reason that it's failing.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 25: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E64
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so it's created and it's in an error image pool state because we have the wrong image name, so that's fine.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 26: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E66
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the last question for this lab is to change the image on this pod to Redis to fix that error that we, you know, purposefully created, and to get the pod in a running state.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 27: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E73
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, we'll talk about this error message later when we talk about imperative commands and the declarative way that we apply.
- Multi-concept tags: Pods, Configuration, Troubleshooting

### Evidence 28: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E6
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 29: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: That way, if one fails, we still have our application running on the other one.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 30: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E12
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Even if you have a single pod, replication controller can help by automatically bringing up a new pod when the existing one fails.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 31: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E71
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: If you get this wrong, you are likely to get an error that looks like this.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 32: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E101
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The role of the replica set is to monitor the pods and if any of them were to fail, deploy new ones.
- Multi-concept tags: Pods, Deployments, Security-RBAC, Observability, Troubleshooting

### Evidence 33: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E119
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Because in case one of the pods were to fail in the future, the replica set needs to create a new one to maintain the desired number of pods.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 34: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E135
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The cube control create command as we know, is used to create a replica, set or basically any object in Kubernetes depending on the file we are providing as input.
- Multi-concept tags: Deployments, Configuration, Troubleshooting

### Evidence 35: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E24
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Of course it's obvious, but I mean, I just wanna show you, if you're not sure what the error is then you've got to look at one of these pods in a bit more detail.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 36: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And you see it's basically because it's failed to pull the image busy box 777 so the repository does not exist.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 37: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's one here and there's an issue with the file, so we have to try and fix it.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 38: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E44
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the error is that it's unable to recognize this file, no matches for kind ReplicaSet in version V1.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 39: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E53
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go ahead and fix that apps/V1 and let's try and delete that again.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 40: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E56
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So next task is to fix the issue in the second file and create the ReplicaSet.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 41: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E67
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, basically the issue here is that you have the labels specified here called tier front end, and then the label for the pod that the ReplicaSet will create is engine X.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 42: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E80
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, fix the original ReplicaSet to use the correct busy box image.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 43: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we also know that because A, the image name is incorrect, so we've got to know fix that.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 44: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E90
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And you see there's all still in the error state.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 45: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/029_Deployments.extraction.md::E10
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 029_Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: Suppose one of the upgrades you performed resulted in an unexpected error, and you're asked to undo the recent change You would like to be able to roll back the changes that were recently carried out.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 46: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E48
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It didn't go through, so there is some kind of error.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 47: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E52
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But the issue is that it's case sensitive, right?
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 48: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E55
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the reason we have these kind of exercises is just to help you understand and and learn how to, you know, know what the issue is when you come up across these errors.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 49: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E56
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So oftentimes you'll, you'll face these kind of errors because of these kind of typos or you know what's not being spelled correctly or not in the right case.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 50: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E57
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And you should know what those mean when you, when you see these kind of errors.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 51: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So I've just fixed that and let's proceed with the creation.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 52: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E46
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, when we create a service for a set of pods that we might think that depending on the label and the selector, we specified the service is going to direct traffic to those pods but it might be possible that we have another pod which we accidentally created with the same kind of label.
- Multi-concept tags: Pods, Services, Scheduling, Troubleshooting

### Evidence 53: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E73
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, there's the link here and clicking on it we see that it gives us a bad gateway error.
- Multi-concept tags: Services, Troubleshooting

### Evidence 54: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/041_Imperative vs Declarative.extraction.md::E27
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 041_Imperative vs Declarative.txt
- Line Context: Lines 1-1 from transcript
- Content: Should it fail or should it continue since the VM is already there?
- Multi-concept tags: Troubleshooting

### Evidence 55: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/041_Imperative vs Declarative.extraction.md::E73
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 041_Imperative vs Declarative.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, then it would fail with an error that says the pod already exists.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 56: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/041_Imperative vs Declarative.extraction.md::E75
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 041_Imperative vs Declarative.txt
- Line Context: Lines 1-1 from transcript
- Content: If an object does not exist, the replace command fails with an error message.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 57: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/041_Imperative vs Declarative.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 041_Imperative vs Declarative.txt
- Line Context: Lines 1-1 from transcript
- Content: So it never really throws an error that says the object already exists or the updates cannot be applied.
- Multi-concept tags: Troubleshooting

### Evidence 58: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling.txt
- Line Context: Lines 1-1 from transcript
- Content: The pods continue to be in a pending state.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 59: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we see that it's in a pending state.
- Multi-concept tags: Troubleshooting

### Evidence 60: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the answer, it's an a pending state.
- Multi-concept tags: Troubleshooting

### Evidence 61: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay so why is the pod in a pending state?
- Multi-concept tags: Pods, Troubleshooting

### Evidence 62: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if the pod's status is in pending, let's take a closer look at the pod.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 63: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E18
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we don't see any additional details other than the fact that it's in a pending state.
- Multi-concept tags: Troubleshooting

### Evidence 64: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that could be the reason why this pod is not running and it's in a pending state.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 65: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the process, depending on what process is running and the way that it handles kill signals it might take some time for it to process that request and actually kill, or you know gracefully shut down, right?
- Multi-concept tags: Troubleshooting

### Evidence 66: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E64
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's not because there's an issue with either Kubernetes or the node or the lab environment.
- Multi-concept tags: Configuration, Architecture, Troubleshooting

### Evidence 67: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's a file called replica set definition file and the request is to create the replica set and but there's an issue with it, so we've got to fix it.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 68: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E47
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the error message is that this does not match this.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 69: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the validation error here.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 70: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E51
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna fix this by changing this to the value below.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 71: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E53
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pods are now created or updated with the new tolerations, they are either not scheduled on nodes or evicted from the existing nodes depending on the effect set.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 72: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it seems to be in a pending state.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 73: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So select pending.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 74: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now why do you think the pod is in a pending state?
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 75: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E39
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Is there an error?
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 76: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you'll see the, the reason why it's in a pending state.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 77: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the, the pod mosquito, which earlier was in a pending state, is now in a running state.
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 78: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E88
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: There seems to be some error.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 79: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E89
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go back, see what the error is.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 80: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E98
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So even though here it's said line 26 the issue was a few lines above okay so let's check our solution.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 81: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E11
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler avoids placing the pod on those nodes, and instead places the pod on one where sufficient resources are available, and if there is no sufficient resources available on any of the nodes, then the scheduler holds back, scheduling the pod and you will see the pod in a pending state.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 82: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, similarly with memory, you could specify 256 mebibyte using the mi suffix, or specify the same value in memory like this.
- Multi-concept tags: Troubleshooting

### Evidence 83: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E31
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: So um or use the suffix g for uh gigabyte.
- Multi-concept tags: Troubleshooting

### Evidence 84: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E57
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: The pod will be terminated and you will see that the pod terminated with an error in the logs or in the output of the describe command.
- Multi-concept tags: Pods, Configuration, Troubleshooting, On-Prem

### Evidence 85: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E78
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: However, the issue is that if Pod one needs more CPU cycles for some reason and pod two isn't really consuming that many CPU cycles, then we don't want to limit pod one of CPU, right?
- Multi-concept tags: Pods, Troubleshooting

### Evidence 86: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/068_Lab Solution - Resource Limits.extraction.md::E15
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 068_Lab Solution - Resource Limits.txt
- Line Context: Lines 1-1 from transcript
- Content: Yep, so we have a pod called elephant and it fails to get to a running state.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 87: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/068_Lab Solution - Resource Limits.extraction.md::E19
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 068_Lab Solution - Resource Limits.txt
- Line Context: Lines 1-1 from transcript
- Content: So, that's, basically, that indicates that it's a memory issue.
- Multi-concept tags: Troubleshooting

### Evidence 88: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/068_Lab Solution - Resource Limits.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 068_Lab Solution - Resource Limits.txt
- Line Context: Lines 1-1 from transcript
- Content: So, the status OOMKilled indicates that it is failing because the pod ran out of memory.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 89: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E69
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's just go to edit the file in EDC Kubernetes manifest add pod and then just change this right here busy boxy 1.284 and just save that And if we look at the pod now it's pending.
- Multi-concept tags: Pods, Configuration, Troubleshooting

### Evidence 90: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E71
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, there's a issue.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 91: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E93
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And, and sometimes if you just depending on how the DS is configured, if you just do SSS to just node zero one, that might work too.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 92: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E89
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: If the scheduler was not configured correctly, then the pod will continue to remain in a pending state.
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 93: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E91
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So if the pod is in a the pending state, then you can look at the logs under the pod describe command.
- Multi-concept tags: Pods, Scheduling, Configuration, Troubleshooting, On-Prem

### Evidence 94: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E102
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: You could also view the logs of the scheduler in case you run into issues.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 95: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/082_(2025 Updates)Admission Controllers.extraction.md::E38
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 082_(2025 Updates)Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: If I run this command, it would throw an error that says the namespace blue is not found.
- Multi-concept tags: Security-RBAC, Configuration, Troubleshooting

### Evidence 96: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/084_(2025 Updates)Lab Solution_ Admission Controllers.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's copy this command, which is going to create that pod, and we can see that it throws an error, because the namespace blue was not found.
- Multi-concept tags: Pods, Security-RBAC, Configuration, Troubleshooting

### Evidence 97: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/084_(2025 Updates)Lab Solution_ Admission Controllers.extraction.md::E30
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the reason this ultimately failed and it threw that error was because Kubernetes has a NamespaceExists admission controller enabled, which rejects requests to namespaces that do not exist.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 98: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E23
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: And when a request goes through these admission controllers, if any admission controller rejects the request, the request is rejected and an error message is shown to the user.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 99: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E91
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: Once this object is created, every time we create a pod, a call would be made to the webhook service and depending on the response, it would be allowed or rejected.
- Multi-concept tags: Pods, Services, Security-RBAC, Troubleshooting

### Evidence 100: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: Otherwise it would fail asking you to specify a name.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 101: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the, the cause is the, the user failed to log in as the account is locked due to too many failed attempts.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 102: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's account locked due to many failed attempts.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 103: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E17
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And if you see a user is reporting issues while trying to purchase an item.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 104: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E18
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Identify the user and the cause of the issue.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 105: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E28
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the question is, a user is reporting issues while trying to purchase an item.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 106: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we've gotta identify the user and the cause of the issue.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 107: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So user five, failed to log in.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 108: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E33
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That's not the issue here.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 109: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: This one says user thirty order order failed as the item is out of stock.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 110: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E35
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that seems to be, and that's those are the only two issues.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 111: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/098_Lab Solution_ Rolling update.extraction.md::E92
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 098_Lab Solution_ Rolling update.txt
- Line Context: Lines 1-1 from transcript
- Content: And when we run this time, unlike the previous time, we see a lot of failures, so some of the requests are failing.
- Multi-concept tags: Troubleshooting

### Evidence 112: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/100_Commands and Arguments in Docker.extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 100_Commands and Arguments in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Now in the second case, what if I run the ubuntu sleeper image command without appending the number of seconds?
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 113: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/100_Commands and Arguments in Docker.extraction.md::E66
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 100_Commands and Arguments in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Then the command at startup will be just sleep and you get the error that the operand is missing.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 114: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/101_Commands and Arguments in Kubernetes.extraction.md::E21
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 101_Commands and Arguments in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the Coding exercises section and practice viewing, configuring and troubleshooting commands and arguments in Kubernetes.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 115: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/103_Lab Solution - Commands and Arguments (Optional).extraction.md::E51
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 103_Lab Solution - Commands and Arguments (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, and there's something wrong with it, so try and fix it.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 116: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/105_Configuring ConfigMaps in Applications.extraction.md::E53
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 105_Configuring ConfigMaps in Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: So head over to the coding exercises section and practice viewing, configuring and troubleshooting environment variables on a live Kubernetes environment.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 117: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/111_Lab Solution - Secrets (Optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 111_Lab Solution - Secrets (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we can see that it's in a failed state.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 118: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/111_Lab Solution - Secrets (Optional).extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 111_Lab Solution - Secrets (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It says," Failed connecting to the MySQL database." The database host is not set.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 119: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/111_Lab Solution - Secrets (Optional).extraction.md::E42
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 111_Lab Solution - Secrets (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, that's the error.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 120: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/111_Lab Solution - Secrets (Optional).extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 111_Lab Solution - Secrets (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the reason the application has failed is because we have not created the secret object yet.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 121: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/111_Lab Solution - Secrets (Optional).extraction.md::E106
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 111_Lab Solution - Secrets (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And this kind of helps us debug if something is not passed through right.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 122: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And over here under status you can see that it's in a pending state so the, the state is pending.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 123: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now a new application orange is deployed, there is something wrong with it, identify and fix the issue and once fixed, wait for the application to run before checking the solution.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 124: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And it has one container and it's in a Init CrashLoopBackOff.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 125: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a closer look at why it's failing.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 126: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here, if you look at this, it says back off, restarting failed container.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 127: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So one of the containers seems to be, you know failing and restarting.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 128: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And if you look at it here, it says Init crashed so back off indicates that it is Init container that's failing and that's what is being restarted.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 129: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E75
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And you see that the state is terminated, but this time the reason is error as opposed to completed as it is before.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 130: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E77
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, and it's just, it just keeps restarting until you know, until it's fixed.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 131: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E78
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go ahead and fix that.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 132: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E79
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do a kubectl edit or Orange and go to Init containers, we're going to fix this.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 133: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E80
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Just fix the typo and we'll save that and surprise, surprise and save that so we're going to just do a kubectl replace, force -f with this file.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 134: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md::E25
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: It then continuously pulls the metric server to monitor the usage, and when the usage goes beyond 50%, it modifies the number of replicas to scale up or down, depending on the usage.
- Multi-concept tags: Pods, Observability, Troubleshooting

### Evidence 135: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/131_OS Upgrades.extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 131_OS Upgrades.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, depending upon how you deploy those pods, your users may be impacted.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 136: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/133_Kubernetes Releases.extraction.md::E9
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 133_Kubernetes Releases.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, while minor versions are released every few months with new features and functionalities, patches are released more often with critical bug fixes.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 137: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/133_Kubernetes Releases.extraction.md::E14
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 133_Kubernetes Releases.txt
- Line Context: Lines 1-1 from transcript
- Content: All the bug fixes and improvements first go into Alpha release.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 138: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E42
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: If a pod was to fail, a new pod won't be automatically created.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 139: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E81
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Remember, depending on your setup, you may or may not have Kubelets running on your master node.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 140: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E65
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Line Context: Lines 1-1 from transcript
- Content: So the plan command is just gonna walk us through the different versions that we can upgrade our cluster to and it's gonna make sure that there aren't some sort of like, compatibility issues.
- Multi-concept tags: Configuration, Architecture, Troubleshooting

### Evidence 141: certified-kubernetes-administrator-with-practice-tests/07_Security/143_Security - Section Introduction.extraction.md::E16
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 143_Security - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Our goal is to enable you to tackle any security related or certificate related issues by the end of this section.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 142: certified-kubernetes-administrator-with-practice-tests/07_Security/143_Security - Section Introduction.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 143_Security - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: These prerequisite lectures may not be for everyone, so depending on your level of expertise with certificates, feel free to skip some of these lectures as required.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 143: certified-kubernetes-administrator-with-practice-tests/07_Security/146_TLS Introduction.extraction.md::E2
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 146_TLS Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Securing the cluster with TLS and troubleshooting TLS related issues can be especially difficult if you are not familiar with the basics of TLS certificates.
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting

### Evidence 144: certified-kubernetes-administrator-with-practice-tests/07_Security/146_TLS Introduction.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 146_TLS Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: You should be an expert when it comes to working with certificates in general as well as with Kubernetes, you should be able to easily configure and troubleshoot issues related to certificates, and the only way to do it, as I understand, is to learn and understand how it works in and out.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 145: certified-kubernetes-administrator-with-practice-tests/07_Security/147_TLS Basics.extraction.md::E104
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 147_TLS Basics.txt
- Line Context: Lines 1-1 from transcript
- Content: It has information about who the certificate is issued to, the public, key of that server, the location of that server, etc. on the right you see the output of an actual certificate.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 146: certified-kubernetes-administrator-with-practice-tests/07_Security/147_TLS Basics.extraction.md::E105
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 147_TLS Basics.txt
- Line Context: Lines 1-1 from transcript
- Content: Every certificate has a name on it, the person or subject to whom the certificate is issued to.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 147: certified-kubernetes-administrator-with-practice-tests/07_Security/147_TLS Basics.extraction.md::E115
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 147_TLS Basics.txt
- Line Context: Lines 1-1 from transcript
- Content: Who signed and issued the certificate?
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 148: certified-kubernetes-administrator-with-practice-tests/07_Security/147_TLS Basics.extraction.md::E134
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 147_TLS Basics.txt
- Line Context: Lines 1-1 from transcript
- Content: If hacker tried to get his certificate signed the same way, he would fail during the validation phase and his certificate would be rejected by the CA.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 149: certified-kubernetes-administrator-with-practice-tests/07_Security/148_TLS in Kubernetes.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 148_TLS in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Also, remember, these certificate names could be different in different Kubernetes setups depending on who and how the cluster was set up.
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting

### Evidence 150: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E44
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the kube scheduler is a system component part of the Kubernetes control plane, so its name must be prefixed with the keyword system.
- Multi-concept tags: Scheduling, Security-RBAC, Architecture, Troubleshooting

### Evidence 151: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation.txt
- Line Context: Lines 1-1 from transcript
- Content: It is again a system component, so its name must be prefixed with the keyword system and finally kube proxy.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 152: certified-kubernetes-administrator-with-practice-tests/07_Security/150_View Certificate Details.extraction.md::E4
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 150_View Certificate Details.txt
- Line Context: Lines 1-1 from transcript
- Content: You've been told that there are multiple issues related to certificates in the environment.
- Multi-concept tags: Security-RBAC, Configuration, Troubleshooting

### Evidence 153: certified-kubernetes-administrator-with-practice-tests/07_Security/150_View Certificate Details.extraction.md::E17
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 150_View Certificate Details.txt
- Line Context: Lines 1-1 from transcript
- Content: So the idea is to create a list of certificate files used, their paths, the names configured on them, the alternate names configured, if any, the organization the certificate account belongs to the issuer of the certificate and the expiration date on the certificate.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 154: certified-kubernetes-administrator-with-practice-tests/07_Security/150_View Certificate Details.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 150_View Certificate Details.txt
- Line Context: Lines 1-1 from transcript
- Content: The kube API server has many, so you must ensure all of them are there, and then check the validity section of the certificate to identify the expiry date and then the issuer of the certificate.
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting

### Evidence 155: certified-kubernetes-administrator-with-practice-tests/07_Security/150_View Certificate Details.extraction.md::E30
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 150_View Certificate Details.txt
- Line Context: Lines 1-1 from transcript
- Content: This should be the CA who issued the certificate.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 156: certified-kubernetes-administrator-with-practice-tests/07_Security/150_View Certificate Details.extraction.md::E35
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 150_View Certificate Details.txt
- Line Context: Lines 1-1 from transcript
- Content: Make sure the certificates are part of the correct organization, and most importantly, they are issued by the right issuer and that the certificates are not expired.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 157: certified-kubernetes-administrator-with-practice-tests/07_Security/150_View Certificate Details.extraction.md::E38
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 150_View Certificate Details.txt
- Line Context: Lines 1-1 from transcript
- Content: When you run into issues, you want to start looking at logs.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 158: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E64
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: So the issuer is Kubernetes, but the subject, which is what this certificate is issued to, is the common name for that is kube-apiserver.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 159: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E68
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, what is the name of the CA who issued the Kube API Server Certificate?
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting, CKA-CKAD

### Evidence 160: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E69
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: If you at here you have the issuer and the name is Kubernetes.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 161: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E70
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: So Kubernetes is the CA who issued the Kube API Server Certificate.
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting, CKA-CKAD

### Evidence 162: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: And here we can see the issuer is etcd-ca.
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting, CKA-CKAD

### Evidence 163: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E90
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, how long from the issue date is the Kube API Server Certificate valid for?
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting, CKA-CKAD

### Evidence 164: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E97
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: How long from the issue date is the Root CA Certificate valid for?
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 165: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E107
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: Someone recently modified this particular file, so you're asked to investigate and fix the issue.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 166: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E108
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: And once you fix the issue, wait for some time for kubectl to respond.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 167: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E122
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's quickly check the logs of that container and we see that it has this error, error while dialing tcp 127.0.0.1:2379.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 168: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E132
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the error.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 169: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E138
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the crt file, and that's the issue.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 170: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E139
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to fix this.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 171: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E148
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check the logs of that container and see that, I see that it's now, that error is not no longer there.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 172: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E160
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: And we see, don't see errors anymore so let's check.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 173: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E171
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: Now inspect the kube-api server logs and identify the root cause and fix the issue.
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting, CKA-CKAD

### Evidence 174: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E174
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: So it looks like there's some issue with the TLS certificates.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 175: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E179
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: And here it says, authentication handshake failed, certificate signed by unknown authority.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 176: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E181
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's the error.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 177: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E182
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: And also here you have some information that, it's failed to connect to 127.0.0.1:2379.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 178: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E185
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: So basically the kube-api server is unable to connect to the ETCD Server because of handshake issue.
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting, CKA-CKAD

### Evidence 179: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E188
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's look at, let's first look at the ETCD pod, and see if that has any issues.
- Multi-concept tags: Pods, Security-RBAC, Architecture, Troubleshooting, CKA-CKAD

### Evidence 180: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E191
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that it started, well, there were no errors, but then started getting this rejected connection from, and this is a remote and it's a bad certificate.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 181: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E217
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: And we see, we don't see those errors anymore.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 182: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E223
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Line Context: Lines 1-1 from transcript
- Content: And we realized that it was a certificate issue somewhere.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 183: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E52
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so it looks like there is an error.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 184: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the CSR request named Akshay is created and you can see it's in a pending state.
- Multi-concept tags: Security-RBAC, Troubleshooting, Cross-Cloud

### Evidence 185: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Line Context: Lines 1-1 from transcript
- Content: So it's in a pending state.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 186: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Line Context: Lines 1-1 from transcript
- Content: Select pending.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 187: certified-kubernetes-administrator-with-practice-tests/07_Security/157_KubeConfig.extraction.md::E89
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 157_KubeConfig.txt
- Line Context: Lines 1-1 from transcript
- Content: Practice working with Kubeconfig files and troubleshooting issues.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 188: certified-kubernetes-administrator-with-practice-tests/07_Security/159_Lab Solution - KubeConfig.extraction.md::E85
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 159_Lab Solution - KubeConfig.txt
- Line Context: Lines 1-1 from transcript
- Content: Identify and fix the issue.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 189: certified-kubernetes-administrator-with-practice-tests/07_Security/159_Lab Solution - KubeConfig.extraction.md::E97
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 159_Lab Solution - KubeConfig.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's fixed.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 190: certified-kubernetes-administrator-with-practice-tests/07_Security/162_Authorization.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 162_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: In the earlier lectures, when we discussed about certificates, we discussed that the Cubelets should be part of the system nodes group and have a name prefixed with system node.
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting

### Evidence 191: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E88
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Line Context: Lines 1-1 from transcript
- Content: But there is an issue.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 192: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E89
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Line Context: Lines 1-1 from transcript
- Content: So investigate and fix the issue.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 193: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E109
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's fixed.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 194: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E138
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Line Context: Lines 1-1 from transcript
- Content: Yep, so that should be the fix to this.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 195: certified-kubernetes-administrator-with-practice-tests/07_Security/171_Lab Solution_ Service Accounts.extraction.md::E20
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 171_Lab Solution_ Service Accounts.txt
- Line Context: Lines 1-1 from transcript
- Content: So there's an error saying pods is forbidden.
- Multi-concept tags: Pods, Services, Security-RBAC, Troubleshooting

### Evidence 196: certified-kubernetes-administrator-with-practice-tests/07_Security/171_Lab Solution_ Service Accounts.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 171_Lab Solution_ Service Accounts.txt
- Line Context: Lines 1-1 from transcript
- Content: All right, so let's go back and we'll say that it failed.
- Multi-concept tags: Services, Security-RBAC, Troubleshooting

### Evidence 197: certified-kubernetes-administrator-with-practice-tests/07_Security/171_Lab Solution_ Service Accounts.extraction.md::E51
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 171_Lab Solution_ Service Accounts.txt
- Line Context: Lines 1-1 from transcript
- Content: So it's telling us to get an access token and enter it in the UI dashboard and see if that basically fixes the issue.
- Multi-concept tags: Services, Security-RBAC, Troubleshooting

### Evidence 198: certified-kubernetes-administrator-with-practice-tests/07_Security/174_Lab Solution - Image Security.extraction.md::E22
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 174_Lab Solution - Image Security.txt
- Line Context: Lines 1-1 from transcript
- Content: And don't worry about the status for now, because we're gonna fix that in a bit.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 199: certified-kubernetes-administrator-with-practice-tests/07_Security/174_Lab Solution - Image Security.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 174_Lab Solution - Image Security.txt
- Line Context: Lines 1-1 from transcript
- Content: So, it says 'fail to pull image,' a malformed response.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 200: certified-kubernetes-administrator-with-practice-tests/07_Security/176_Security Contexts.extraction.md::E15
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 176_Security Contexts.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the Coding Exercises section and practice viewing, configuring, and troubleshooting issues related to security contexts in Kubernetes.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 201: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E64
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: You will not get an error message saying the network solution does not support network policies.
- Multi-concept tags: Networking, Security-RBAC, Troubleshooting, Platform Engineering

### Evidence 202: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E132
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: I'm gonna fix that.
- Multi-concept tags: Networking, Security-RBAC, Troubleshooting

### Evidence 203: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E58
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Line Context: Lines 1-1 from transcript
- Content: If you tried to create a flight ticket resource now on your Kubernetes cluster, you will see that it fails with the error message that says there is.
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting

### Evidence 204: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E108
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Line Context: Lines 1-1 from transcript
- Content: If the value is entered by the user does not fall within this range, the resource will not be created and will return an error message.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 205: certified-kubernetes-administrator-with-practice-tests/07_Security/187_(2025 Updates) Operator Framework.extraction.md::E15
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 187_(2025 Updates) Operator Framework.txt
- Line Context: Lines 1-1 from transcript
- Content: So Kubernetes operators do what a human operator typically would do to manage a specific application, such as installing it, maintaining it by taking backups, and restoring backups in case of disasters, uh, fixing any issues that may come across the application, etc..
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 206: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: And depending on your environment, the options may vary.
- Multi-concept tags: Storage, Configuration, Troubleshooting

### Evidence 207: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: And the specification details exactly what parameters should be sent by the caller, what should be received by the solution, and what error codes should be exchanged.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 208: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: If there are no volumes available, the persistent volume claim will remain in a pending state until newer volumes are made available to the cluster.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 209: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We see the claim in a pending state.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 210: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: A plain rm rf leaves a inode metadata and may fail under permissions.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 211: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E49
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the labs and practice configuring and troubleshooting persistent volumes and volume claims in Kubernetes.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 212: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the state, it is in a pending state.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 213: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E105
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we have the PVC, which requested about 50 but it's still in a pending state.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 214: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So it's in a pending state.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 215: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Now why is the PVC in a pending state despite making a valid request to claim the volume call local PV.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 216: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, make sure to fix the format.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 217: certified-kubernetes-administrator-with-practice-tests/09_Networking/204_Networking - Introduction.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 204_Networking - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Again, as always, these are for beginners and our optional lectures, and depending on your knowledge, feel free to go through only those that you think you really need.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 218: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E10
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Later on, when we discuss these in the context of our course, you know what we are talking about, where to look for information, where things are configured, how to troubleshoot, etc. and of course, as always, if these seem to be too basic for you, if you or if you're already good with networking in Linux, feel free to skip these lectures and go straight to the ones on Kubernetes.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 219: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: We need an interface on each host, physical or virtual, depending on the host, to see the interfaces for the host.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 220: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E66
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you're having issues reaching internet from your systems, this routing table and the default gateway configuration is a good place to start.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 221: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E83
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: It would face the same issue.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 222: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E88
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: When we try to ping now, we no longer get the network unreachable error message.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 223: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E9
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Line Context: Lines 1-1 from transcript
- Content: So how do you fix that?
- Multi-concept tags: Networking, Troubleshooting

### Evidence 224: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Line Context: Lines 1-1 from transcript
- Content: So in that case it will fail.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 225: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E153
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Line Context: Lines 1-1 from transcript
- Content: In the upcoming Practice Exercises section, you will practice configuring and troubleshooting DNS in a lab environment on actual systems through some fun and challenging exercises.
- Multi-concept tags: Networking, Configuration, Troubleshooting

### Evidence 226: certified-kubernetes-administrator-with-practice-tests/09_Networking/208_Prerequisite Network Namespaces.extraction.md::E36
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 208_Prerequisite Network Namespaces.txt
- Line Context: Lines 1-1 from transcript
- Content: Prefix the command with the command IP netns exec, followed by the namespace name, which is red.
- Multi-concept tags: Networking, Configuration, Troubleshooting

### Evidence 227: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Line Context: Lines 1-1 from transcript
- Content: Assume that they vary depending on the inputs.
- Multi-concept tags: Pods, Networking, Troubleshooting

### Evidence 228: certified-kubernetes-administrator-with-practice-tests/09_Networking/219_CNI weave.extraction.md::E51
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 219_CNI weave.txt
- Line Context: Lines 1-1 from transcript
- Content: For troubleshooting purpose, view the logs using the kubectl logs command.
- Multi-concept tags: Networking, Configuration, Troubleshooting

### Evidence 229: certified-kubernetes-administrator-with-practice-tests/09_Networking/224_Service Networking.extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 224_Service Networking.txt
- Line Context: Lines 1-1 from transcript
- Content: Note that the location of this file might vary depending on your installation.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 230: certified-kubernetes-administrator-with-practice-tests/09_Networking/228_CoreDNS in Kubernetes.extraction.md::E34
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 228_CoreDNS in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: The ones highlighted in orange plugins are configured for handling errors, reporting, health monitoring, metrics, cache, etc. the plugin that makes core DNS work with Kubernetes is the Kubernetes plugin, and that is where the top level domain name of the cluster is set.
- Multi-concept tags: Networking, Architecture, Observability, Troubleshooting

### Evidence 231: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E114
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that fails.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 232: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E153
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then it accesses a database, MySQL server, however the web server is failing to connect to the database.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 233: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E166
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So just open that, and as you can see it is in a failed state.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 234: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E169
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the issue is with the name.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 235: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E201
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And what the command we need to run is nslookup, we'll do a MySQL and it says it's not found, so we know that since the HR app is in the default namespace and MySQL is in the payroll namespace, we should be appending payroll to the name.
- Multi-concept tags: Networking, Configuration, Troubleshooting, Platform Engineering

### Evidence 236: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E150
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally, anything other than the ones listed here will go to the fourth rule that will simply show a 404 not found error page.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 237: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E174
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Line Context: Lines 1-1 from transcript
- Content: You can do this by configuring a default back end service to display this 404 not found error page.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 238: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E48
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here we have ingress service and if you look at it, it gives us a 404 not found error.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 239: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we see a 404 error page.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 240: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now view the applications by appending the wear and watch to the URL that you opened.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 241: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E65
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If you refresh the watch path, now we get 404 error and we replace it with stream and we now get the video streaming application.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 242: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E76
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's a 404 error, so there's a 404 error.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 243: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E145
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But you see that it's still not, it's not working as expected, still here's the 404 error.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 244: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E158
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's why the error.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 245: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: There are just, there are some issues.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 246: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E43
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it looks like there are some issues.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 247: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E44
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's, there's an issue online.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 248: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E45
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: 36 looks like a yamo issue.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 249: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's, let's edit the file and try and fix those.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 250: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E48
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So right here we see that, yeah indeed there's an issue with spacing.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 251: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E49
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll fix that's, try to create it again and we see that namespace, ingress dash not found.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 252: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E154
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it, it looks like it's going into a too, and you can see the error here.
- Multi-concept tags: Networking, Troubleshooting

### Evidence 253: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on the kind of application, the resource requirements may vary.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 254: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, depending on the size of your cluster, the resource requirement of your node varies.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 255: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E38
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on the workloads configured, your node and disk configurations will differ.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 256: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on your requirements, your cloud ecosystem, and the kind of applications you wish to deploy.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 257: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Line Context: Lines 1-1 from transcript
- Content: Users can access the application until things start to fail.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 258: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E10
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Line Context: Lines 1-1 from transcript
- Content: A high availability configuration is where you have redundancy across every component in the cluster, so as to avoid a single point of failure.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 259: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E40
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, the controller manager consists of controllers like the replication controller that is constantly watching the state of pots and taking necessary actions like creating a new pot when one fails, etc..
- Multi-concept tags: Deployments, Architecture, Troubleshooting, CKA-CKAD

### Evidence 260: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E58
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Line Context: Lines 1-1 from transcript
- Content: That way, if one process fails, maybe because the first master crashes, then the second process can acquire the lock and become the leader.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 261: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E71
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Line Context: Lines 1-1 from transcript
- Content: This is less risky, as a failed control plane node does not impact the etcd cluster and the data it stores.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 262: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Line Context: Lines 1-1 from transcript
- Content: Does it wait for the third node to be up or does it fail?
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 263: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E81
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Line Context: Lines 1-1 from transcript
- Content: If one fails, there is no quorum, so rights won't be processed.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 264: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E96
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Line Context: Lines 1-1 from transcript
- Content: Say for example, due to a disruption in the network, it fails and causes the network to partition.
- Multi-concept tags: Networking, Architecture, Troubleshooting, CKA-CKAD

### Evidence 265: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Line Context: Lines 1-1 from transcript
- Content: But if you look at the groups here, neither of these groups have four managers to meet the quorum, so it results in a failed cluster.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 266: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Line Context: Lines 1-1 from transcript
- Content: So with even number of nodes, there is possibility of the cluster failing during a network segmentation.
- Multi-concept tags: Networking, Architecture, Troubleshooting

### Evidence 267: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Line Context: Lines 1-1 from transcript
- Content: Couple of different ways to do that depending on what your operating system is, just use whichever is most convenient for you.
- Multi-concept tags: Deployments, Troubleshooting, On-Prem

### Evidence 268: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E24
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So when we paste this, we see that we get this error.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 269: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It says, curl failed writing body.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 270: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: This error is a little misleading, but what's happening is, we're downloading the gpg key and we're downloading it to this folder /etc/apt/keyrings.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 271: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E31
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And after we create it, if we run the same command, we should see that there's no issues when we run it now.
- Multi-concept tags: Configuration, Architecture, Troubleshooting, On-Prem

### Evidence 272: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E54
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We can see that there's an error, couldn't get current server API group list.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 273: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E55
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this error is actually expected because we actually haven't initialized our cluster yet.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 274: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E17
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's true, but it might make it even harder to find stuff when you're looking for, say you wanna troubleshoot an issue, we'd have to continuously search for stuff that we need to edit in something that could be 25 pages of text.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 275: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E44
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
- Line Context: Lines 1-1 from transcript
- Content: And when a rollback command is issued, Helm compares the current chart, which is the chart that has the WordPress image 5.8 in it with the previous chart, which is the chart that has a WordPress 4.8 image in it and realizes that they're different.
- Multi-concept tags: Deployments, Configuration, Troubleshooting

### Evidence 276: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/258_Working With Helm - Basics.extraction.md::E6
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 258_Working With Helm - Basics.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, say we want to restore a release to a previous version after a failed upgrade, we might wonder, wait, what was the command to do that?
- Multi-concept tags: Configuration, Troubleshooting, CKA-CKAD

### Evidence 277: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/263_Kustomize Problem Statement and Ideology.extraction.md::E20
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 263_Kustomize Problem Statement and Ideology.txt
- Line Context: Lines 1-1 from transcript
- Content: It'll work, there's no issues, there's no limitations with the solution.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 278: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/263_Kustomize Problem Statement and Ideology.extraction.md::E34
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 263_Kustomize Problem Statement and Ideology.txt
- Line Context: Lines 1-1 from transcript
- Content: We need a better solution to addressing this issue.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 279: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/263_Kustomize Problem Statement and Ideology.extraction.md::E37
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 263_Kustomize Problem Statement and Ideology.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at how Kustomize addresses this issue.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 280: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/264_Kustomize vs Helm.extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 264_Kustomize vs Helm.txt
- Line Context: Lines 1-1 from transcript
- Content: (bright tinkling music) Instructor: Before we move on to the next section, I wanted to talk about an alternative tool to Kustomize, and this tool's called Helm, and I wanted to just provide a brief, high level overview of how Helm addresses the same issue of providing modification to your Kubernetes manifest on a per environment basis, and I think it's good to see this just because, you know, when you're trying to figure out what is the best tool for your project or application, you should have a good understanding of how both of these tools work and what are the pros and cons of each one so that you can make the best decision for your project.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 281: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/264_Kustomize vs Helm.extraction.md::E2
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 264_Kustomize vs Helm.txt
- Line Context: Lines 1-1 from transcript
- Content: So the way that Helm actually tackles this issue is that it makes use of a Go templating syntax to assign variables to various properties, and to give you an example of that, let's take a look at a template.
- Multi-concept tags: Configuration, Troubleshooting, CKA-CKAD

### Evidence 282: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/265_Installation_Setup.extraction.md::E7
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 265_Installation_Setup.txt
- Line Context: Lines 1-1 from transcript
- Content: If you don't see an output similar to this, that means most likely there was an issue with an installation or maybe the environment variables weren't updated in the current terminal session.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 283: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/265_Installation_Setup.extraction.md::E9
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 265_Installation_Setup.txt
- Line Context: Lines 1-1 from transcript
- Content: If there's still an issue, then rerun the installation script again.
- Multi-concept tags: Configuration, Troubleshooting, On-Prem

### Evidence 284: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/269_Managing Directories.extraction.md::E36
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 269_Managing Directories.txt
- Line Context: Lines 1-1 from transcript
- Content: So customize has helped us address the issue of splitting all of our configs into separate directories.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 285: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/270_Managing Directories Demo.extraction.md::E72
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 270_Managing Directories Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: And we'll come back to fixing up this file.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 286: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/272_Common Transformers.extraction.md::E6
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: And before we even go over what that is and what they do, let's take a look at the issue they're trying to address first.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 287: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/272_Common Transformers.extraction.md::E11
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, let's say that we want to specifically add a label in this case, so something like org KodeKloud, or maybe we wanna go into all of our Kubernetes objects and add a specific prefix or suffix to the name.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 288: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/272_Common Transformers.extraction.md::E15
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: And so doing this by hand is not a scalable solution, and it's gonna be very time-consuming and it's going to lead to a lot of errors.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 289: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/272_Common Transformers.extraction.md::E21
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: We also have the namePrefix and Suffix transformation.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 290: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/272_Common Transformers.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: This is going to allow you to add a prefix or suffix to the names of all of your Kubernetes resources.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 291: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/272_Common Transformers.extraction.md::E35
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: For the Prefix/Suffix Transformer, we can add in a specific prefix or suffix by providing the name prefix or the name suffix properties.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 292: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/272_Common Transformers.extraction.md::E36
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: And that's gonna map to the prefix of the name as well as the suffix of the name as well.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 293: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/273_Image Transformers.extraction.md::E15
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 273_Image Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: Something to keep in mind, it confused me at first, so I figured you guys would probably run into the same issue.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 294: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So maybe, we'll, this will be our debugging environment.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 295: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E52
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So for the db side of things, we can see that the namespace was set to debugging.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 296: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E53
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: For api, we should see that the namespace was set to debugging, so it looks like it was successfully applied to everything.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 297: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E54
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So now let's give everything a namePrefix and a nameSuffix.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 298: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E56
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: I want every single object to have a name prefixed with the word KodeKloud, and I want all of the resources to have a suffix that's specific to what folder they're in.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 299: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E58
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So right now, if we actually take a look at the configs here, it's gonna be api-deployment, I wanted api-deployment-web, and it should be prefixed with KodeKloud.
- Multi-concept tags: Deployments, Configuration, Troubleshooting

### Evidence 300: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E61
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna change it to, it's gonna be prefixed with KodeKloud as well, but it's gonna end in -storage.
- Multi-concept tags: Storage, Configuration, Troubleshooting

### Evidence 301: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E63
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So for the prefix of KodeKloud, we want this applied to every single resource regardless of what folder they're in.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 302: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E65
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll go in here and we'll add a prefix.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 303: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E66
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So this will be namePrefix and it's gonna be KodeKloud.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 304: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E76
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: Now we wanna set up the suffix.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 305: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E77
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: And like I said, the suffix is going to change depending on which folder that we're in.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 306: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E79
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So for this one, we're gonna go here, and I'm gonna do a nameSuffix.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 307: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll do nameSuffix: -storage.
- Multi-concept tags: Storage, Configuration, Troubleshooting

### Evidence 308: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E86
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So the prefix is still there, and the suffix is set to storage.
- Multi-concept tags: Storage, Configuration, Troubleshooting

### Evidence 309: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E88
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: And if we take a look at one of the APIs, we've got KodeKloud, and then the suffix is web.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 310: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E93
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: I'm just gonna say logging, it's gonna be set to debugging, or let's just say verbose.
- Multi-concept tags: Configuration, Observability, Troubleshooting

### Evidence 311: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: But obviously, this is going to vary depending on what you're trying to accomplish with your transformation.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 312: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E121
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you guys noticed, I got an error.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 313: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E122
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: And it's important to take a look at these errors and just read it because it's gonna give us some information as to what exactly happened.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 314: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E125
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm suspecting the issue is with the tag right here.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 315: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E126
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: If I actually comment this out, I assume we're probably not going to get an error.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 316: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E128
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So there seems to be an issue with this.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 317: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/276_Patches Intro.extraction.md::E107
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 276_Patches Intro.txt
- Line Context: Lines 1-1 from transcript
- Content: There's no issues with using either one, it's just a matter of personal preference.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 318: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/283_Components.extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 283_Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is going to create a little bit of an issue 'cause we have these individual features that only apply to a certain subset of our overlays.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 319: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/285_Troubleshooting - Section Introduction.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 285_Troubleshooting - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: -: Hello and welcome to this section.
- Multi-concept tags: Troubleshooting

### Evidence 320: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/285_Troubleshooting - Section Introduction.extraction.md::E2
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 285_Troubleshooting - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: In this section, we look at some of the troubleshooting techniques for Kubernetes.
- Multi-concept tags: Troubleshooting

### Evidence 321: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/285_Troubleshooting - Section Introduction.extraction.md::E3
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 285_Troubleshooting - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: We start with troubleshooting application failures, then move on to troubleshooting control plane failures, and then to worker node failures, and finally network related issues.
- Multi-concept tags: Networking, Architecture, Troubleshooting

### Evidence 322: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/285_Troubleshooting - Section Introduction.extraction.md::E4
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 285_Troubleshooting - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: This section is full of hands-on labs where you are given a broken cluster and are asked to troubleshoot and fix issues.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 323: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/285_Troubleshooting - Section Introduction.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 285_Troubleshooting - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Good luck.
- Multi-concept tags: Troubleshooting

### Evidence 324: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Throughout this course, we've actually worked on a number of troubleshooting exercises with respect to the topic we were going through at that point in time.
- Multi-concept tags: Troubleshooting

### Evidence 325: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E2
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: So a lot of troubleshooting is already covered.
- Multi-concept tags: Troubleshooting

### Evidence 326: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E3
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: We will go through an overview of troubleshooting techniques and procedures, and work on some more practice tests in this section.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 327: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E4
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: We'll start with application failures.
- Multi-concept tags: Troubleshooting

### Evidence 328: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a look at a two tier application that has a web and a database server.
- Multi-concept tags: Troubleshooting

### Evidence 329: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: The database pod hosts a database application and serves the web servers through a database service.
- Multi-concept tags: Pods, Services, Troubleshooting

### Evidence 330: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: The web server is hosted on a web pod and serves users through the web service.
- Multi-concept tags: Pods, Services, Troubleshooting

### Evidence 331: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: It's good to write down or draw a map or chart of how your application is configured before you start.
- Multi-concept tags: Troubleshooting

### Evidence 332: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E9
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on how much you know about the failure.
- Multi-concept tags: Troubleshooting

### Evidence 333: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: You may choose to start from either end of this map.
- Multi-concept tags: Troubleshooting

### Evidence 334: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E11
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: But remember to check every object and link in this map until you find the root cause of the issue.
- Multi-concept tags: Troubleshooting

### Evidence 335: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E12
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Say in our case, users report some issue with accessing the application.
- Multi-concept tags: Troubleshooting

### Evidence 336: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: First, we start with the application front end.
- Multi-concept tags: Troubleshooting

### Evidence 337: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Use standard ways of testing if your application is accessible.
- Multi-concept tags: Troubleshooting

### Evidence 338: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: If it's a web application, check if the web server is accessible on the IP of the node port using curl.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 339: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Next, check the service as it discovered endpoints for the web pod.
- Multi-concept tags: Pods, Services, Troubleshooting

### Evidence 340: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, it did.
- Multi-concept tags: Troubleshooting

### Evidence 341: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: But if it did not, then you might want to check the service to Pod Discovery.
- Multi-concept tags: Pods, Services, Troubleshooting

### Evidence 342: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E19
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Compare the selectors configured on the service to the ones on the pod.
- Multi-concept tags: Pods, Services, Scheduling, Troubleshooting

### Evidence 343: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Make sure that they match.
- Multi-concept tags: Troubleshooting

### Evidence 344: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Next, check the pod itself and make sure it is in a running state.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 345: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: The status of the pod, as well as the number of restarts, can give you an idea of whether the application on the pod is running or is getting restarted.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 346: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Check the events related to the pod using the describe command.
- Multi-concept tags: Pods, Configuration, Observability, Troubleshooting, On-Prem

### Evidence 347: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Check the logs of the application using the logs command.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 348: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E25
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: If the pod is restarting due to a failure, then the logs in the current version of the pod that's running the current version of the container may not reflect why it failed the last time.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 349: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: So you either have to watch these logs using the dash F option and wait for the application to fail again, or use the previous option to view the logs of a previous pod.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 350: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E27
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Next, check the status of the DB service as before.
- Multi-concept tags: Services, Troubleshooting

### Evidence 351: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally check the DB pod itself.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 352: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Check the logs of the DB pod and look for any errors in the database.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 353: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E30
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: There are some more tips documented in the Kubernetes documentation page for troubleshooting applications.
- Multi-concept tags: Troubleshooting

### Evidence 354: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E31
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: This will help in upcoming practice tests as well as in the exam.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 355: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: -: Hey, so let's go through this practice test on troubleshooting application failure.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 356: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the first question is, a simple two tier application is deployed in the alpha name space.
- Multi-concept tags: Troubleshooting

### Evidence 357: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It must display a green webpage on success.
- Multi-concept tags: Troubleshooting

### Evidence 358: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So click on the app tab at the top of your terminal to view your application.
- Multi-concept tags: Troubleshooting

### Evidence 359: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So I can click here to open the application, and I see that it is indeed in a failed state.
- Multi-concept tags: Troubleshooting

### Evidence 360: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E6
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if I look at the error message here, we can see some of the environment variables, which, which we can use for while troubleshooting, but it says, Can't connect to MySQL server on MySQL service 3306.
- Multi-concept tags: Services, Configuration, Troubleshooting

### Evidence 361: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Name does not resolve.
- Multi-concept tags: Troubleshooting

### Evidence 362: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So basically it looks like this web application is unable to reach the MySQL service because the name, there's some, some issue with the name is not able to resolve it.
- Multi-concept tags: Services, Troubleshooting

### Evidence 363: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at this architecture diagram.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 364: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here, so it's a two-tier application.
- Multi-concept tags: Troubleshooting

### Evidence 365: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you have the web service here and you have the database service here, and then you have the user accessing it.
- Multi-concept tags: Services, Troubleshooting

### Evidence 366: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we know that this is most likely a deployment or a pod.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 367: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The web application is on 8080, and then you have this web service which is on 8080.
- Multi-concept tags: Services, Troubleshooting

### Evidence 368: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then this is the node port that the users are accessing, which is 30081.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 369: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then you have the MySQL service, which is a, which is a service that the web application use tries to connect to.
- Multi-concept tags: Services, Troubleshooting

### Evidence 370: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And this is the MySQL pod.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 371: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now looking at this state.
- Multi-concept tags: Troubleshooting

### Evidence 372: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we know that the web application loads, it's, it's failed, the application is failed, but at least the interface loads.
- Multi-concept tags: Troubleshooting

### Evidence 373: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So looking at it, this area seems to be okay.
- Multi-concept tags: Troubleshooting

### Evidence 374: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, because this port 30081, this is the port that we are on.
- Multi-concept tags: Troubleshooting

### Evidence 375: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So 3081, so that's good.
- Multi-concept tags: Troubleshooting

### Evidence 376: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this patch looks okay.
- Multi-concept tags: Troubleshooting

### Evidence 377: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: This web service has loaded the application.
- Multi-concept tags: Services, Troubleshooting

### Evidence 378: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this also looks okay.
- Multi-concept tags: Troubleshooting

### Evidence 379: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E25
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's some issue in this area.
- Multi-concept tags: Troubleshooting

### Evidence 380: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The application is unable to reach the MySQL service at this name or at this port.
- Multi-concept tags: Services, Troubleshooting

### Evidence 381: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E27
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's first take a look at, at the application.
- Multi-concept tags: Troubleshooting

### Evidence 382: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's in the alpha name space.
- Multi-concept tags: Troubleshooting

### Evidence 383: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a kubectl, we get pods, dash name, space alpha.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 384: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so we're gonna work, we're gonna run a lot of commands in the alpha name space.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 385: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E31
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's best if we switch our context and, and set the alpha name space as the default name space, because we don't want to be typing in the name space for each command so let's do a kubectl config, and let's check the help find out the command.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 386: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we can use a set context.
- Multi-concept tags: Troubleshooting

### Evidence 387: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E33
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're going to do a set text, and then let's check the help.
- Multi-concept tags: Troubleshooting

### Evidence 388: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E34
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And what we want to do is we wanna set the name space, we're gonna use a set context, and then the current context.
- Multi-concept tags: Troubleshooting

### Evidence 389: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we wanna set the name space of the current context to the name space equals alpha.
- Multi-concept tags: Troubleshooting

### Evidence 390: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Troubleshooting

### Evidence 391: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's modified.
- Multi-concept tags: Troubleshooting

### Evidence 392: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's try, we've gotta just get pods now and we see that we can see the pods in the current name space.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 393: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E39
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So as we suspected, the web application is a deployment.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 394: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a deploy.
- Multi-concept tags: Troubleshooting

### Evidence 395: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the web app is a deployment, and the SQL server is a, is a pod, and we also have services.
- Multi-concept tags: Pods, Deployments, Services, Troubleshooting

### Evidence 396: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so the SQL server has a, the, MySQL service and the web application has the web service.
- Multi-concept tags: Services, Troubleshooting

### Evidence 397: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E43
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay So one way to, another way to test the, if the web application is accessible or not, is basically at this level of test is to do a curl and then to gonna do a local host because it's accessible on the node port and the port is 3081.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 398: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we can see the kind of, you know, this in a, in a text format and we can see that database connection has failed and can't connect to MySQL server on MySQL service.
- Multi-concept tags: Services, Troubleshooting

### Evidence 399: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna look more into this area, right?
- Multi-concept tags: Troubleshooting

### Evidence 400: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E46
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's see, let's look at the deployment.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 401: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E47
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna do a kubectl, we're gonna do a kubectl describe deployment web app about MySQL.
- Multi-concept tags: Deployments, Troubleshooting, On-Prem

### Evidence 402: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the deployment name.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 403: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we see that we have the template, the image is simple web app.
- Multi-concept tags: Troubleshooting

### Evidence 404: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: MySQL port is 8080.
- Multi-concept tags: Troubleshooting

### Evidence 405: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And these are some of the environment variables.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 406: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the database host is MySQL service, the user is root and the password is this password.
- Multi-concept tags: Services, Troubleshooting

### Evidence 407: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the host is MySQL service.
- Multi-concept tags: Services, Troubleshooting

### Evidence 408: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the service called MySQL service, Let's do a get service.
- Multi-concept tags: Services, Troubleshooting

### Evidence 409: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the name of the service is not MySQL service It's instead MySQL, right?
- Multi-concept tags: Services, Troubleshooting

### Evidence 410: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that seems to be the problem here.
- Multi-concept tags: Troubleshooting

### Evidence 411: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E57
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this, and this should match because from within this application is gonna try and reach a service by the name MySQL service.
- Multi-concept tags: Services, Troubleshooting

### Evidence 412: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And this doesn't look like that.
- Multi-concept tags: Troubleshooting

### Evidence 413: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that seems to be the problem.
- Multi-concept tags: Troubleshooting

### Evidence 414: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So what we're going to do is we're gonna fix that.
- Multi-concept tags: Troubleshooting

### Evidence 415: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do, let's try and edit the service.
- Multi-concept tags: Services, Troubleshooting

### Evidence 416: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we can't edit the service name, but let's give it a shot.
- Multi-concept tags: Services, Troubleshooting

### Evidence 417: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: All we want to do is change this to MySQL service, right?
- Multi-concept tags: Services, Troubleshooting

### Evidence 418: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's try and save that.
- Multi-concept tags: Troubleshooting

### Evidence 419: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, it's not going to allow you to save that, but the changes we made is in this temporary file.
- Multi-concept tags: Troubleshooting

### Evidence 420: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is what we need.
- Multi-concept tags: Troubleshooting

### Evidence 421: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here you have the service and you have the, MySQL service and everything else seems to be as, as what we want.
- Multi-concept tags: Services, Troubleshooting

### Evidence 422: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the port numbers are there, selector is there, or another approach we could do is to just delete the service and export or expose the service, the MySQL service again.
- Multi-concept tags: Services, Scheduling, Troubleshooting

### Evidence 423: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But for now, we could just go ahead with this.
- Multi-concept tags: Troubleshooting

### Evidence 424: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we could do a kubectl delete as we see, and delete the MySQL service.
- Multi-concept tags: Services, Troubleshooting

### Evidence 425: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E71
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then we're going to create SVC.
- Multi-concept tags: Troubleshooting

### Evidence 426: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E72
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Nope, we're gonna create using this file.
- Multi-concept tags: Troubleshooting

### Evidence 427: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's check service now.
- Multi-concept tags: Services, Troubleshooting

### Evidence 428: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the MySQL service has now been created on port 23306.
- Multi-concept tags: Services, Troubleshooting

### Evidence 429: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Troubleshooting

### Evidence 430: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go ahead and check this.
- Multi-concept tags: Troubleshooting

### Evidence 431: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, when you check this application, it's now Success check our work.
- Multi-concept tags: Troubleshooting

### Evidence 432: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E78
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's successful, let's proceed to the next one.
- Multi-concept tags: Troubleshooting

### Evidence 433: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E79
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so in this one, the same two tier application is deployed in the beta name space and it must display a green web page on success.
- Multi-concept tags: Troubleshooting

### Evidence 434: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Click on the app.
- Multi-concept tags: Troubleshooting

### Evidence 435: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's click on this app to see the status.
- Multi-concept tags: Troubleshooting

### Evidence 436: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And as you can see, it's in a failed state.
- Multi-concept tags: Troubleshooting

### Evidence 437: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And if you look at this, you have the environment variables.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 438: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the database hosts MySQL service, user is root, password, and it says, Can't connect to MySQL server on MySQL service 3306.
- Multi-concept tags: Services, Troubleshooting

### Evidence 439: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now it says connection refused.
- Multi-concept tags: Troubleshooting

### Evidence 440: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's this connection refused.
- Multi-concept tags: Troubleshooting

### Evidence 441: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at it.
- Multi-concept tags: Troubleshooting

### Evidence 442: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E88
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So first we're going to switch context to beta.
- Multi-concept tags: Troubleshooting

### Evidence 443: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E89
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna do a set context config, set context command, and then we're going to, so the current context name space to beta okay?
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 444: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now we're gonna do a get pods.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 445: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Pods, and we see the MySQL pod and you have the, the web app pod.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 446: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's fine.
- Multi-concept tags: Troubleshooting

### Evidence 447: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E93
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we also have services for the MySQL service and the web app service.
- Multi-concept tags: Services, Troubleshooting

### Evidence 448: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If you look at this again, as before, the, the Port 30081 seems to be correct.
- Multi-concept tags: Troubleshooting

### Evidence 449: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you can, as we can access that here and this whole application loads.
- Multi-concept tags: Troubleshooting

### Evidence 450: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E96
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this whole thing should be good, right?
- Multi-concept tags: Troubleshooting

### Evidence 451: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E97
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And again, it looks like it's a connectivity issue with between the web application and the MySQL server.
- Multi-concept tags: Troubleshooting

### Evidence 452: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is what we have to verify.
- Multi-concept tags: Troubleshooting

### Evidence 453: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E99
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, last time the issue was with the name, but now looks like the name is correct, it is MySQL service, but we will anyway, also check the deployment on what is set, describe Deploy web app MySQL.
- Multi-concept tags: Deployments, Services, Troubleshooting, On-Prem

### Evidence 454: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the database host given here is MySQL service and this is MySQL service as well.
- Multi-concept tags: Services, Troubleshooting

### Evidence 455: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's good.
- Multi-concept tags: Troubleshooting

### Evidence 456: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now let's just look at the service.
- Multi-concept tags: Services, Troubleshooting

### Evidence 457: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E103
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is good.
- Multi-concept tags: Troubleshooting

### Evidence 458: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E104
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now let's just focus on this.
- Multi-concept tags: Troubleshooting

### Evidence 459: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E105
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a describe service, MySQL service.
- Multi-concept tags: Services, Troubleshooting, On-Prem

### Evidence 460: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see selector is right, the endpoints it has has detected the endpoint.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 461: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E107
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's 10.42.0.12.
- Multi-concept tags: Troubleshooting

### Evidence 462: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E108
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's look at, let's make sure that this endpoint is the pod, which is the MySQL pod.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 463: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a kubectl get pods -OY to see the IP of the pod.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 464: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the MySQL pod has an IP address, 10.42.0.12.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 465: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E111
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And this is 10.42.0.12.
- Multi-concept tags: Troubleshooting

### Evidence 466: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E112
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's right.
- Multi-concept tags: Troubleshooting

### Evidence 467: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E113
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But if you look at this right here, it says port 8080.
- Multi-concept tags: Troubleshooting

### Evidence 468: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E114
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so the IP is, okay, so then we check the port.
- Multi-concept tags: Troubleshooting

### Evidence 469: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E115
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's port 8080, and 8080 is not the port for the database.
- Multi-concept tags: Troubleshooting

### Evidence 470: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E116
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at it here, the port here is 3306 and not 8080.
- Multi-concept tags: Troubleshooting

### Evidence 471: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E117
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that seems to be the problem.
- Multi-concept tags: Troubleshooting

### Evidence 472: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E118
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do an edit as we see MySQL service.
- Multi-concept tags: Services, Troubleshooting

### Evidence 473: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E119
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And you can see the port here is 3306, which is right, the target port given is 8080, and that is not right.
- Multi-concept tags: Troubleshooting

### Evidence 474: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E120
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that should be 3306 as well.
- Multi-concept tags: Troubleshooting

### Evidence 475: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E121
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's edit that.
- Multi-concept tags: Troubleshooting

### Evidence 476: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E122
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's make sure the changes took place.
- Multi-concept tags: Troubleshooting

### Evidence 477: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E123
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so now is 3306, and let's check the endpoints.
- Multi-concept tags: Troubleshooting

### Evidence 478: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E124
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the endpoint is now 10.42.0.12, 3306.
- Multi-concept tags: Troubleshooting

### Evidence 479: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E125
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's now check our application and yep, can see that it's, it's a success.
- Multi-concept tags: Troubleshooting

### Evidence 480: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E126
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check our work.
- Multi-concept tags: Troubleshooting

### Evidence 481: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E127
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we're two down.
- Multi-concept tags: Troubleshooting

### Evidence 482: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E128
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is the same two tier application is deployed in the Gamma name space.
- Multi-concept tags: Troubleshooting

### Evidence 483: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E129
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It must display green webpage and click on the app tab at the top to view, okay, so it, it looks like it's the same question.
- Multi-concept tags: Troubleshooting

### Evidence 484: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E130
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go and open the application.
- Multi-concept tags: Troubleshooting

### Evidence 485: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E131
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Troubleshooting

### Evidence 486: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E132
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So just keeps spinning and meanwhile we'll go here and here our work and switch context to, we'll switch to the gamma namespace, okay?
- Multi-concept tags: Troubleshooting

### Evidence 487: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E133
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's check status of pods and let's check services.
- Multi-concept tags: Pods, Services, Troubleshooting

### Evidence 488: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E134
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have both the pods are running and the services are there, but this doesn't look like it's loading.
- Multi-concept tags: Pods, Services, Troubleshooting

### Evidence 489: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E135
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's try and find out why.
- Multi-concept tags: Troubleshooting

### Evidence 490: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E136
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it looks like the issue is somewhere here.
- Multi-concept tags: Troubleshooting

### Evidence 491: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E137
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The page itself isn't loading, the service itself isn't loading.
- Multi-concept tags: Services, Troubleshooting

### Evidence 492: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E138
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's start looking at it right from here.
- Multi-concept tags: Troubleshooting

### Evidence 493: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E139
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the first thing to look at is this Port 30081, because that is the, the port that we are trying to access 30081, okay?
- Multi-concept tags: Troubleshooting

### Evidence 494: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E140
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And it's now timed out.
- Multi-concept tags: Troubleshooting

### Evidence 495: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E141
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So 30081.
- Multi-concept tags: Troubleshooting

### Evidence 496: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E142
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the service called web service, we see that it's set to node port, and the node port is 30081, so that's fine.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 497: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E143
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that looks good.
- Multi-concept tags: Troubleshooting

### Evidence 498: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E144
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Next thing is the service itself.
- Multi-concept tags: Services, Troubleshooting

### Evidence 499: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E145
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check if the service has a endpoints.
- Multi-concept tags: Services, Troubleshooting

### Evidence 500: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E146
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do describe service, web service, and we see the name, web service, name space is gamma, has the right selectors and has the endpoints.
- Multi-concept tags: Services, Scheduling, Troubleshooting, On-Prem

### Evidence 501: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E147
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: 10.42.0.14.
- Multi-concept tags: Troubleshooting

### Evidence 502: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E148
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the ports are 8080 and 8080.
- Multi-concept tags: Troubleshooting

### Evidence 503: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E149
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that looks right.
- Multi-concept tags: Troubleshooting

### Evidence 504: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E150
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's make sure the IP address, the endpoints are picked up correctly.
- Multi-concept tags: Troubleshooting

### Evidence 505: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E151
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this endpoint is 10.42.0.14, and the web app is on 10.42.0.14 as well.
- Multi-concept tags: Troubleshooting

### Evidence 506: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E152
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that checks out.
- Multi-concept tags: Troubleshooting

### Evidence 507: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E153
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the next step is, so the web service is good, Let's check the deployment itself.
- Multi-concept tags: Deployments, Services, Troubleshooting

### Evidence 508: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E154
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we do our kubectl get pods, we do describe deployment web app, MySQL, and we see that it has one desired and one available.
- Multi-concept tags: Pods, Deployments, Troubleshooting, On-Prem

### Evidence 509: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E155
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's fine.
- Multi-concept tags: Troubleshooting

### Evidence 510: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E156
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The image is, looks correct, the database host is MySQL service, user is root password.
- Multi-concept tags: Services, Troubleshooting

### Evidence 511: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E157
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: All of that seems to be okay, but it's still, we're unable to do the deployment.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 512: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E158
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check out the logs because it looks like the, the web server isn't responding.
- Multi-concept tags: Troubleshooting

### Evidence 513: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E159
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a logs on the pod.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 514: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E160
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And this seems to be, okay, so this, this application itself, it says it started, it's available on this port.
- Multi-concept tags: Troubleshooting

### Evidence 515: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E161
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so that seems to be okay.
- Multi-concept tags: Troubleshooting

### Evidence 516: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E162
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So however, we are still not able to access the application.
- Multi-concept tags: Troubleshooting

### Evidence 517: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E163
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's anyway, go through and complete our checks because we assume that it's going to be somewhere here.
- Multi-concept tags: Troubleshooting

### Evidence 518: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E164
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But anyway, let's go down and complete our checks.
- Multi-concept tags: Troubleshooting

### Evidence 519: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E165
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the MySQL service is supposed to be on 3306.
- Multi-concept tags: Services, Troubleshooting

### Evidence 520: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E166
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check that.
- Multi-concept tags: Troubleshooting

### Evidence 521: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E167
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have the MySQL service and it's on 3306.
- Multi-concept tags: Services, Troubleshooting

### Evidence 522: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E168
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check the endpoint, describe MySQL service.
- Multi-concept tags: Services, Troubleshooting, On-Prem

### Evidence 523: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E169
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you have the endpoints, but it looks like there are no endpoints.
- Multi-concept tags: Troubleshooting

### Evidence 524: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E170
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So apparently the service hasn't detected MySQL pod as an endpoint, so let's take a look at why that is.
- Multi-concept tags: Pods, Services, Troubleshooting

### Evidence 525: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E171
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the selectors right here, it says name equals SQL 00001, and for the pod, so describe POD MySQL.
- Multi-concept tags: Pods, Scheduling, Troubleshooting, On-Prem

### Evidence 526: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E172
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we know that the labels for this is, is name equals MySQL.
- Multi-concept tags: Troubleshooting

### Evidence 527: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E173
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that should be the selector not name equals SQL 0001.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 528: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E174
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And that's why it doesn't have any endpoints.
- Multi-concept tags: Troubleshooting

### Evidence 529: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E175
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go ahead and edit that, not the pod.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 530: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E176
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're going to edit the service, MySQL service, and we're going to change the selector to MySQL then save that.
- Multi-concept tags: Services, Scheduling, Troubleshooting

### Evidence 531: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E177
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now we're going to do a describe pod, no describe Service MySQL.
- Multi-concept tags: Pods, Services, Troubleshooting, On-Prem

### Evidence 532: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E178
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that we have, we have the service now protected.
- Multi-concept tags: Services, Troubleshooting

### Evidence 533: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E179
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's go and check out our application.
- Multi-concept tags: Troubleshooting

### Evidence 534: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E180
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's connected successfully.
- Multi-concept tags: Troubleshooting

### Evidence 535: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E181
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So apparently, even though we were not ab able to access the web application, that's because the web application is trying to access the MySQL service and that service was not responding, which is why the web application was not responding either.
- Multi-concept tags: Services, Troubleshooting

### Evidence 536: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E182
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So even though we thought that the issue was somewhere here, we went through and we made sure that everything's fine and we just went through the remaining just to check and just to be sure.
- Multi-concept tags: Troubleshooting

### Evidence 537: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E183
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And that's how we identified that the issue is somewhere here, so that's, that's another approach or technique that you should use.
- Multi-concept tags: Troubleshooting

### Evidence 538: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E184
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If you're not really sure, I mean, you start with an intuition on, you know, where the issue could be, but if you don't seem, you know, if you can't really figure out, you just keep looking at the, those things just to make sure that they're working as expected.
- Multi-concept tags: Troubleshooting

### Evidence 539: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E185
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so let's check our work and let's wait for the next one.
- Multi-concept tags: Troubleshooting

### Evidence 540: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E186
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so here the, the same two-tier application is deployed in the Delta name space, and it looks like it's the same setup.
- Multi-concept tags: Troubleshooting

### Evidence 541: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E187
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here we have, and it's in a fail state.
- Multi-concept tags: Troubleshooting

### Evidence 542: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E188
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's first change our context to Delta.
- Multi-concept tags: Troubleshooting

### Evidence 543: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E189
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Troubleshooting

### Evidence 544: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E190
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then let's check the pods and let's check our services.
- Multi-concept tags: Pods, Services, Troubleshooting

### Evidence 545: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E191
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check the error message.
- Multi-concept tags: Troubleshooting

### Evidence 546: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E192
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the host is MySQL service user is SQL user.
- Multi-concept tags: Services, Troubleshooting

### Evidence 547: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E193
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Password is password.
- Multi-concept tags: Troubleshooting

### Evidence 548: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E194
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It says can't connect to MySQL server on MySQL service.
- Multi-concept tags: Services, Troubleshooting

### Evidence 549: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E195
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: 3306 connection refused.
- Multi-concept tags: Troubleshooting

### Evidence 550: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E196
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, I wanna try that out again, just refresh it.
- Multi-concept tags: Troubleshooting

### Evidence 551: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E197
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And it says Access denied for user SQL user at 10.42.0.16 using password.
- Multi-concept tags: Troubleshooting

### Evidence 552: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E198
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it says Access denied for the user.
- Multi-concept tags: Troubleshooting

### Evidence 553: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E199
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, and here you can see the user details.
- Multi-concept tags: Troubleshooting

### Evidence 554: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E200
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the DB host has to be my service, the DB user is route.
- Multi-concept tags: Services, Troubleshooting

### Evidence 555: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E201
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the password is password.
- Multi-concept tags: Troubleshooting

### Evidence 556: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E202
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check the, the settings for that.
- Multi-concept tags: Troubleshooting

### Evidence 557: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E203
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the web application must access that.
- Multi-concept tags: Troubleshooting

### Evidence 558: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E204
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: MySQL service, and this is where the credentials are stored.
- Multi-concept tags: Services, Troubleshooting

### Evidence 559: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E205
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a describe on MySQL, describe deployment on MySQL.
- Multi-concept tags: Deployments, Troubleshooting, On-Prem

### Evidence 560: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E206
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's look at the settings.
- Multi-concept tags: Troubleshooting

### Evidence 561: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E207
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here you have the environment variables and you have the host, which is MySQL service.
- Multi-concept tags: Services, Configuration, Troubleshooting

### Evidence 562: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E208
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The user is, it says SQL user, but it's actually root.
- Multi-concept tags: Troubleshooting

### Evidence 563: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E209
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the password is password.
- Multi-concept tags: Troubleshooting

### Evidence 564: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E210
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is, this seems to be the problem.
- Multi-concept tags: Troubleshooting

### Evidence 565: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E211
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's edit that and update the user to root.
- Multi-concept tags: Troubleshooting

### Evidence 566: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E212
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, and let's wait for the bot to be running.
- Multi-concept tags: Troubleshooting

### Evidence 567: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E213
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's running already.
- Multi-concept tags: Troubleshooting

### Evidence 568: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E214
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It refers to the page.
- Multi-concept tags: Troubleshooting

### Evidence 569: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E215
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And that's success.
- Multi-concept tags: Troubleshooting

### Evidence 570: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E216
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that was the issue here.
- Multi-concept tags: Troubleshooting

### Evidence 571: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E217
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check that out.
- Multi-concept tags: Troubleshooting

### Evidence 572: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E218
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And while the new one loads, let's close this one, let's clear our screen.
- Multi-concept tags: Troubleshooting

### Evidence 573: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E219
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, the next one is the same application is deployed in the Epsilon name set in space.
- Multi-concept tags: Troubleshooting

### Evidence 574: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E220
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It must do display a green web app webpage on success.
- Multi-concept tags: Troubleshooting

### Evidence 575: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E221
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's open the webpage and we have a similar error message.
- Multi-concept tags: Troubleshooting

### Evidence 576: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E222
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it says the environment variables, DB host, MySQL service database.
- Multi-concept tags: Services, Configuration, Troubleshooting

### Evidence 577: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E223
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's not set users, SQL user.
- Multi-concept tags: Troubleshooting

### Evidence 578: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E224
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the password access denied for user SQL User, okay?
- Multi-concept tags: Troubleshooting

### Evidence 579: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E225
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's kind of the similar error.
- Multi-concept tags: Troubleshooting

### Evidence 580: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E226
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at it.
- Multi-concept tags: Troubleshooting

### Evidence 581: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E227
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But first let's change the context to, Epsilon, okay, and set the parts.
- Multi-concept tags: Troubleshooting

### Evidence 582: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E228
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we know that, So it's a similar error message where it says Access denied for SQL user, and that's what we just solve.
- Multi-concept tags: Troubleshooting

### Evidence 583: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E229
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The user is not SQL user, it's a root user, so let's go ahead and fix that.
- Multi-concept tags: Troubleshooting

### Evidence 584: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E230
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Edit deployment, web app, SQL.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 585: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E231
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so here we see the user is SQL user.
- Multi-concept tags: Troubleshooting

### Evidence 586: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E232
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's change that to root.
- Multi-concept tags: Troubleshooting

### Evidence 587: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E233
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's check the bot, if it's running.
- Multi-concept tags: Troubleshooting

### Evidence 588: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E234
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's refresh the page.
- Multi-concept tags: Troubleshooting

### Evidence 589: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E235
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so now the error message has changed and it says access denied for user root.
- Multi-concept tags: Troubleshooting

### Evidence 590: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E236
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Again, so the access is still denied.
- Multi-concept tags: Troubleshooting

### Evidence 591: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E237
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But the user has now been updated to root.
- Multi-concept tags: Troubleshooting

### Evidence 592: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E238
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Right?
- Multi-concept tags: Troubleshooting

### Evidence 593: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E239
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So.
- Multi-concept tags: Troubleshooting

### Evidence 594: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E240
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The user credentials are either set on the application that's trying to connect to the database or the database itself.
- Multi-concept tags: Troubleshooting

### Evidence 595: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E241
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Right?
- Multi-concept tags: Troubleshooting

### Evidence 596: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E242
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we've already fixed it on the deployment here, but now the issue could be here.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 597: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E243
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check out the pod.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 598: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E244
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Because that's the only other place where anything could be set.
- Multi-concept tags: Troubleshooting

### Evidence 599: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E245
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we see additional details.
- Multi-concept tags: Troubleshooting

### Evidence 600: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E246
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we have the environment variable and the MySQL root password is set to something other than password, which should be this.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 601: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E247
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that needs to be changed.
- Multi-concept tags: Troubleshooting

### Evidence 602: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E248
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a edit pod for MySQL and let's change this password to.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 603: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E249
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: BASWRD save that, it's not going to allow us 'cause it's a pod.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 604: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E250
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're going to do a kubectl, replace, replace force and give the file.
- Multi-concept tags: Troubleshooting

### Evidence 605: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E251
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's delete it.
- Multi-concept tags: Troubleshooting

### Evidence 606: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E252
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's up, it's running.
- Multi-concept tags: Troubleshooting

### Evidence 607: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E253
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's try to refresh the page.
- Multi-concept tags: Troubleshooting

### Evidence 608: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E254
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Hmm.
- Multi-concept tags: Troubleshooting

### Evidence 609: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E255
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So now it'd says connection refused.
- Multi-concept tags: Troubleshooting

### Evidence 610: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E256
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: No, okay.
- Multi-concept tags: Troubleshooting

### Evidence 611: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E257
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That was because we tried too early, the pod was just being initiated.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 612: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E258
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So now at success.
- Multi-concept tags: Troubleshooting

### Evidence 613: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E259
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that was the issue.
- Multi-concept tags: Troubleshooting

### Evidence 614: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E260
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now another thing to note here is in this case, I mean, you know, these are, it's very simple, straightforward examples of setting environment variables, but these could also be part of config maps.
- Multi-concept tags: Configuration, Troubleshooting, CKA-CKAD

### Evidence 615: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E261
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there could be another config map associated with the MySQL service, which is how it is usually configured.
- Multi-concept tags: Services, Troubleshooting

### Evidence 616: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E262
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so if that is the case, then you should inspect the config maps as well.
- Multi-concept tags: Troubleshooting

### Evidence 617: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E263
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Troubleshooting

### Evidence 618: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E264
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: All right, let's get ready for the final one.
- Multi-concept tags: Troubleshooting

### Evidence 619: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E265
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the same two tier application is deployed in the Zeta name space.
- Multi-concept tags: Troubleshooting

### Evidence 620: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E266
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's first set the context to Zeta and let's check out the application.
- Multi-concept tags: Troubleshooting

### Evidence 621: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E267
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so it says bad gateway right up front.
- Multi-concept tags: Troubleshooting

### Evidence 622: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E268
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's start from here.
- Multi-concept tags: Troubleshooting

### Evidence 623: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E269
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're assuming, because it says we're not even able to access the web service, we're gonna start right from the top.
- Multi-concept tags: Services, Troubleshooting

### Evidence 624: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E270
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the, the node port is 30081 because that's what we are trying to access here.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 625: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E271
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's see the status of the services.
- Multi-concept tags: Services, Troubleshooting

### Evidence 626: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E272
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the web service is, has a node board, but here you see it's not on 30081, it's on 30088.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 627: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E273
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's what we're gonna fix, edit service, web service.
- Multi-concept tags: Services, Troubleshooting

### Evidence 628: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E274
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the node board has to be 30081.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 629: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E275
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We'll save that and let's make sure that it's updated.
- Multi-concept tags: Troubleshooting

### Evidence 630: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E276
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's 30081.
- Multi-concept tags: Troubleshooting

### Evidence 631: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E277
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Troubleshooting

### Evidence 632: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E278
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's done.
- Multi-concept tags: Troubleshooting

### Evidence 633: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E279
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're now able to access the application at least now it says access denied for user SQL, user using password.
- Multi-concept tags: Troubleshooting

### Evidence 634: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E280
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that something we have seen already.
- Multi-concept tags: Troubleshooting

### Evidence 635: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E281
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check out, okay, let's look at the deployment, describe deploy web app MySQL.
- Multi-concept tags: Deployments, Troubleshooting, On-Prem

### Evidence 636: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E282
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that there are environment variables.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 637: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E283
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So MySQL service, SQL server, SQL user and password.
- Multi-concept tags: Services, Troubleshooting

### Evidence 638: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E284
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's edit that to change it to root Okay, so the new pod has been deployed.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 639: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E285
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Troubleshooting

### Evidence 640: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E286
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So now the username is updated, so access, but it's still his access denied for user root.
- Multi-concept tags: Troubleshooting

### Evidence 641: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E287
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to go down and check the, the password configured on the MySQL service.
- Multi-concept tags: Services, Troubleshooting

### Evidence 642: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E288
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a describe pod MySQL.
- Multi-concept tags: Pods, Troubleshooting, On-Prem

### Evidence 643: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E289
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: You see that we have the password issue here, the environment variables.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 644: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E290
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's edit that.
- Multi-concept tags: Troubleshooting

### Evidence 645: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E291
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And this should be password, let's save that.
- Multi-concept tags: Troubleshooting

### Evidence 646: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E292
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That's not going to go through.
- Multi-concept tags: Troubleshooting

### Evidence 647: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E293
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a replace this.
- Multi-concept tags: Troubleshooting

### Evidence 648: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E294
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's wait for the pod to run.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 649: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E295
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so yep.
- Multi-concept tags: Troubleshooting

### Evidence 650: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E296
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now that's successful.
- Multi-concept tags: Troubleshooting

### Evidence 651: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E297
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Check our work.
- Multi-concept tags: Troubleshooting

### Evidence 652: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E298
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's about it.
- Multi-concept tags: Troubleshooting

### Evidence 653: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E299
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: I know that there's a little bit of repetition on the type of questions and, and that's really in case you didn't get it the first time for you to just get that practice again and, and get it the next time and build some confidence.
- Multi-concept tags: Troubleshooting

### Evidence 654: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E300
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, yep, I hope that was a good troubleshooting session and we'll have more coming up in the upcoming labs.
- Multi-concept tags: Troubleshooting

### Evidence 655: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will see different ways of troubleshooting control plane failures.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 656: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: We start by checking the status of the nodes in the cluster, see if they are all healthy, then check the status of the pods running on the cluster.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 657: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E3
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: If we had control plane components deployed as pods in case of a cluster deployed with the kube ADM tool, then we can check to make sure that the pods in the kube system namespace are running, or else if the control plane components are deployed as services, as in our case, then check the status of the services such as the kube API server, the controller, manager and scheduler on the master nodes, and the Kubelet and kube proxy service on the worker nodes.
- Multi-concept tags: Pods, Services, Scheduling, Architecture, Troubleshooting

### Evidence 658: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Next, check the logs of the control plane components again, in case of kube adm, use the kube control logs command to view the logs of pods hosting the control plane components.
- Multi-concept tags: Pods, Configuration, Architecture, Troubleshooting

### Evidence 659: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: In case of services configured natively on the master nodes, view the service logs using the host's logging solution.
- Multi-concept tags: Services, Architecture, Observability, Troubleshooting

### Evidence 660: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E6
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: In our case, we could use the general control utility to view the kube API servers logs.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 661: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E7
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: This should be a good start.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 662: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: For more tips, refer to the Kubernetes documentation page for troubleshooting clusters.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 663: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: This will help in the upcoming practice test as well as in the exam.
- Multi-concept tags: Architecture, Troubleshooting, CKA-CKAD

### Evidence 664: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: -: Okay, so in this video we're going to work on troubleshooting control plane failure.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 665: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the first question is, the cluster is broken.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 666: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E3
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We tried deploying an application, but it's not working troubleshoot and fix the issue.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 667: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E4
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So before we begin, a quick tip if you don't have the alias set already on your prompt so you could do a alias, k equals kubectl.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 668: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E5
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 669: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's copy and let's run that.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 670: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And this basically gives you auto completion.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 671: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you do a kubectl get and then it automatically gives you the options.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 672: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E9
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The other thing is, so if you're setting an alias you should do this as well to get the alias for the short form for kubectl.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 673: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna set this as well, that way I can just do kubectl get and then yeah, order completion for the short form.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 674: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we're gonna look at the status of the cluster.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 675: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 676: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's good.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 677: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: There is, it says there are deployments.
- Multi-concept tags: Deployments, Architecture, Troubleshooting

### Evidence 678: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the deployments.
- Multi-concept tags: Deployments, Architecture, Troubleshooting

### Evidence 679: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that there is a app deployed, but it's not ready.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 680: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there is one container or one pod in the deployment but that pod is not ready.
- Multi-concept tags: Pods, Deployments, Architecture, Troubleshooting

### Evidence 681: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at it.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 682: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do a describe, so you describe deployment app and we see that it's one desired, zero available, so there's, that's one unavailable and there isn't anything here that's really helpful.
- Multi-concept tags: Deployments, Architecture, Troubleshooting, On-Prem

### Evidence 683: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here it says scale that replica set to one.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 684: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the replica set, get rs, we have one replica set.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 685: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a look at that.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 686: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Describe replica set app.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 687: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the desired is one, but it's still waiting.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 688: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you have the events and it says creating pod.
- Multi-concept tags: Pods, Architecture, Observability, Troubleshooting

### Evidence 689: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the pod and we see that there is a pod created, but it's in a pending state.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 690: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a closer look at that pod.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 691: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see the events have not started yet but everything else seems okay but it's in a pending state.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 692: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So when a pod is in a pending state, it's most likely, that indicates that it has not been assigned a node.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 693: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the node here, it's set to none.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 694: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E31
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That means the pod has not been assigned to a node and the job of assigning a pod to a node is scheduler's job, right?
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 695: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E32
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to look at the status of the scheduler.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 696: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E33
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a, and we know that scheduler runs as a pod in the kube system name space.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 697: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E34
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you have the scheduler and it has control plane at the end.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 698: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that means it's a static pod and its status is crash loop back off.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 699: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E36
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the pod in more detail in the kube system name space and we're looking at the kube-scheduler.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 700: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we see at the bottom here that seems to be restarting quite often.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 701: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E38
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then it says fail to start container kube-scheduler error response from daemon, OCI runtime create failed, starting container process kube-scheduler, executable file not found.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 702: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it says this executable is not found obviously it looks like it's not, right.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 703: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the options or the command that are used to run this pod.
- Multi-concept tags: Pods, Configuration, Architecture, Troubleshooting

### Evidence 704: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here we can see that there is an incorrect command that's wrong and that's the reason.
- Multi-concept tags: Configuration, Architecture, Troubleshooting

### Evidence 705: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E42
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we know that the kube-scheduler is a static pod.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 706: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E43
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the file is in TTC Kubernetes manifests and we have the kube-scheduler.yaml file here.
- Multi-concept tags: Scheduling, Configuration, Architecture, Troubleshooting

### Evidence 707: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E44
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is the manifest file for kube-scheduler and within that there's a wrong command.
- Multi-concept tags: Scheduling, Configuration, Architecture, Troubleshooting

### Evidence 708: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E45
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go and edit that file and then remove the extra characters.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 709: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we're gonna save that and we'll see if we have we'll see the status of the pod and its in a creating container config error state.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 710: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Yep, it's now in a running state and we'll just watch until, we just watch until it's ready.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 711: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's give it a few seconds.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 712: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Still not ready.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 713: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a look at the logs.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 714: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, okay, so it's finally in ready state.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 715: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's take a look at the pods.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 716: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we have the pod is now in ready stage.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 717: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E54
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a look at the deployment and we have one of one ready.
- Multi-concept tags: Deployments, Architecture, Troubleshooting

### Evidence 718: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, okay, so that's, that's good.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 719: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E56
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's go to the next one.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 720: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now it says scale the deployment app to two parts.
- Multi-concept tags: Deployments, Architecture, Troubleshooting

### Evidence 721: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do a kubectl.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 722: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E59
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's get the deploy.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 723: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E60
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we have app with one pod, let's scale it up, kubectl scale deployment app and replicas is two, there's two pods.
- Multi-concept tags: Pods, Deployments, Architecture, Troubleshooting

### Evidence 724: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E61
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, even though the deployment was scaled to two the number of pods does not seem to increase investigate and fix the issue.
- Multi-concept tags: Pods, Deployments, Architecture, Troubleshooting

### Evidence 725: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check the status of pods and we see that it's still just one, but we have the deployment here.
- Multi-concept tags: Pods, Deployments, Architecture, Troubleshooting

### Evidence 726: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It says one of two, ready.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 727: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E64
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the deployment.
- Multi-concept tags: Deployments, Architecture, Troubleshooting

### Evidence 728: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E65
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Kubectl describe deploy app, and we see the image set we see scale that replica set to one, but we don't see it the deployment, scaling up the replica set to two.
- Multi-concept tags: Deployments, Architecture, Troubleshooting, On-Prem

### Evidence 729: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: However, here we see the number of replicas to be two.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 730: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Two is the desired state and only one is available.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 731: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E68
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the job of updating a deployment the job of updating a replica set or scaling up a replica set is the controller managers.
- Multi-concept tags: Deployments, Architecture, Troubleshooting

### Evidence 732: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E69
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's the deployment controller and all the controllers that as, as we know the deployment controller, the replica set controller they're all controlled by the controller manager.
- Multi-concept tags: Deployments, Architecture, Troubleshooting

### Evidence 733: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E70
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the status of the controller manager.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 734: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E71
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a kube system and we see that the kube controller manager is in a crash loop back of state.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 735: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E72
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the kube controller manager.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 736: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So within the new system we're going to describe this particular pod.
- Multi-concept tags: Pods, Architecture, Troubleshooting, On-Prem

### Evidence 737: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that says back off, restarting fill container.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 738: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E75
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We don't see anything useful here in the events.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 739: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a look at it.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 740: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E77
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here it says crash loop back off terminated error.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 741: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The exit code is one and the command seems to be correct.
- Multi-concept tags: Configuration, Architecture, Troubleshooting

### Evidence 742: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: There's isn't anything at there.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 743: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the logs.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 744: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a kubectl logs this one in the kube system name space.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 745: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so here it says this particular file there's no such file or directory.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 746: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this file is not found.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 747: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check if that file exists.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 748: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Of course that file does not exist because there seems to be something wrong with it.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 749: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E86
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check, let's check where this file is specified in the kube controller manager.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 750: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E87
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we know that the cube controller manager is also a static pod.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 751: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that means it must be in the slash ADC Kubernetes manifests directory.
- Multi-concept tags: Configuration, Architecture, Troubleshooting

### Evidence 752: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E89
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we have controller manager there.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 753: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's see, let's just grab for XXX cause that's what we saw.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 754: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we have it specified.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 755: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E92
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the kube config file is configured to this location but let's see where the actual kube config file is, right?
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 756: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E93
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the actual kube config file for the controller manager is at atckubernetescontrollermanager.com.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 757: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E94
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's just verify the contents of that file, let's do controller manager and we see that this is indeed a keep config file.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 758: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay so that's the problem.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 759: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E96
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're going to edit the controller manager manifest file to fix that issue.
- Multi-concept tags: Configuration, Architecture, Troubleshooting

### Evidence 760: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're going to remove this XXXX that is not required.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 761: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna save that and we'll check the pod system.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 762: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's in pending state.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 763: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E100
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're going to watch that and we'll give you some time for the kube controller manager to be ready.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 764: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so it's now in a running state and it's also ready.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 765: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the pods.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 766: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E103
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that there are now two pods indeed.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 767: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E104
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a look at the deployments and we see that there are two deployments.
- Multi-concept tags: Deployments, Architecture, Troubleshooting

### Evidence 768: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E105
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's check the status.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 769: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we're breaking something now.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 770: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E107
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so something is wrong with scaling again, we just tried scaling the deployment to three replicas, but it's not happening.
- Multi-concept tags: Deployments, Architecture, Troubleshooting

### Evidence 771: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E108
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at that.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 772: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do a get pods.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 773: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E110
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's only two, let's do a get deployment.
- Multi-concept tags: Deployments, Architecture, Troubleshooting

### Evidence 774: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E111
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And it's two of three, so it looks like it's gone to three.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 775: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E112
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check, let's look at the deployment.
- Multi-concept tags: Deployments, Architecture, Troubleshooting

### Evidence 776: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E113
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that here we have scale of the replica set to one, then two, which we did earlier but it has not been scaled up to three.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 777: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E114
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So in the previous one we have learned that if the scaling up isn't happening, if the changes that we have applied on the deployment aren't, isn't going into effect then the culprit is usually the controller manager because it's the controller manager that is responsible for this.
- Multi-concept tags: Deployments, Architecture, Troubleshooting

### Evidence 778: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E115
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the controller manager again.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 779: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E116
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we're going to look at the logs of this pod controller manager.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 780: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E117
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a kubectl logs, oh this is the control plane controller manager the kube system name space, and we see that it says unable to load client ca file.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 781: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E118
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the ATC Kubernetes PTICS cert is not available.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 782: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E119
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's try and find this file locally and we see that we do have this file locally.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 783: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E120
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So yes, this file seems to be here but it says it's not able to load it, there's no such file or directory within the kube controller manager.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 784: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E121
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we know that the way that the cube control manager or any other control plane component is set up is that the certificate files are on the control plane on the host.
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting

### Evidence 785: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E122
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we use volumes to mount these directories within the same directory within the controller manager, right?
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 786: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E123
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's set up in the manifest file.
- Multi-concept tags: Configuration, Architecture, Troubleshooting

### Evidence 787: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E124
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the manifest file and we're gonna look at your controller manager.
- Multi-concept tags: Configuration, Architecture, Troubleshooting

### Evidence 788: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E125
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that all of these all of these that are configured here so ATC Kubernetes, ATC Kubernetes PKI these are all in fact on the host, but they're mapped as a volume through to these containers.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 789: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E126
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the way that's done is through volume mounts.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 790: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E127
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we look at volume mounts here and we can see there are multiple volume mounts.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 791: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E128
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you have the CSSL certs, the CS certs but what we want is the coordinate PKI volume.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 792: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E129
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: This is what we are concerned about because this is what it claims that is not available.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 793: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E130
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here the mounting looks good but the volume that is mounted is called K eight certs.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 794: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E131
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the K eight certs volume.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 795: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E132
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So these are the volumes that are configured here.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 796: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E133
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we have the K eight certs volume and this is the section for that.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 797: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E134
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And within this we have the path which is given at the top.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 798: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E135
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you can see that there's an incorrect path given.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 799: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E136
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it says wrong PKI directory.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 800: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E137
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna have to get rid of that and add the right PKI directory which is just PKI and just going to save that.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 801: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E138
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a look at the pod status now.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 802: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E139
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, it seems to be in a running state and so let's watch it and wait until it is back up and running.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 803: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E140
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so it's now in a running state.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 804: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E141
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a look at the status of pods.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 805: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E142
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that we have three pods indeed.
- Multi-concept tags: Pods, Architecture, Troubleshooting

### Evidence 806: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E143
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And if we take a look at the status of the deployment we see that we have three out of three ready.
- Multi-concept tags: Deployments, Architecture, Troubleshooting

### Evidence 807: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E144
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, So that's the end of this lab.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 808: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will see different ways of troubleshooting worker node failures.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 809: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Again, we start by checking the status of the nodes in the cluster.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 810: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Are they reported as ready or not ready?
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 811: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: If they're reported as not ready, check details about the nodes using the cube control.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 812: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Describe node command.
- Multi-concept tags: Configuration, Architecture, Troubleshooting, On-Prem

### Evidence 813: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Each node has a set of conditions that can point us in a direction as to why a node might have failed.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 814: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on the status, there are either set to true or false or unknown.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 815: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: When the node is out of disk space, the out of disk flag is set to true.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 816: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: When a node is out of memory, the memory pressure flag is set to true.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 817: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: When the disk capacity is low, the disk pressure flag is set to true.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 818: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Similarly, when there are too many processes, the pressure flag is set to true.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 819: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally, if the node as a whole is healthy, the ready flag is set to true.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 820: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: When a worker node stops communicating with the master, maybe due to a crash, these statuses are set to unknown.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 821: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: This can indicate a possible loss of a node.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 822: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Check the last heartbeat time field to find out the time when the node might have crashed.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 823: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: In such cases, proceed to checking the status of the node itself.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 824: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: If the node is online at all or is crashed.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 825: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: If it's crashed, bring it back up.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 826: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Check for possible CPU, memory and disk space on the nodes.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 827: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E20
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Check the status of the kubelet.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 828: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E21
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Check the Cubelet logs for possible issues.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 829: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Check the Kubelet certificates, ensure they're not expired and they are part of the right group, and that the certificates are issued by the right CA.
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting

### Evidence 830: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 831: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E24
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the practice test and practice fixing broken clusters.
- Multi-concept tags: Architecture, Troubleshooting, CKA-CKAD

### Evidence 832: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: -: Okay, so in this lab we're going to practice troubleshooting worker node failures.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 833: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll wait for the lab environment to be ready and we'll get started.
- Multi-concept tags: Configuration, Architecture, Troubleshooting

### Evidence 834: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: While we wait, I'm going to set the alias for kubectl.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 835: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E4
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the first question is to fix the broken cluster.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 836: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's run up a get nodes and we see that indeed there is something broken.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 837: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So node zero one is in a Not Ready State.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 838: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's see why that is.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 839: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do a describe node, node zero one.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 840: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we see a set of events.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 841: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E10
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So all of these seem to be normal so they're starting the kubelet.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 842: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: All of these are good statuses and the node itself is ready.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 843: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: There's something missing.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 844: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go to that node.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 845: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's just say node zero one, and we'll check the status.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 846: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E15
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the first thing that we wanna check on a worker node is the kubelet, because we know the kubelet is the controller of a node.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 847: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E16
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the kubelet is what helps in communication between a worker node and the master or the control plane node.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 848: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E17
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a check the service of the kubelet.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 849: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E18
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So service kubelet status.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 850: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that it's loaded, but it's in an inactive state so we don't know why it's in an inactive state.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 851: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're going to just try and start it.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 852: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E21
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a service kubelet start and let's check the status again.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 853: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that it's now in an active and running state.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 854: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E23
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's go back to the control plane and let's do a quick kubelet get node.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 855: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 856: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that both are in a ready state.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 857: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So I think that should fix that question.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 858: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E27
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's go to the next one.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 859: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the cluster is broken again.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 860: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Investigate and fix the issue.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 861: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check the status again.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 862: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that it's again, in an not ready state.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 863: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check the status of the node.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 864: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Oh, zero one and go to full screen.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 865: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We see that all of these, all of these events are normal.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 866: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's, that's okay and there's nothing here either.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 867: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E36
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go to the node and check the status of the kubelet again, service kubelets status.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 868: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that it's in an activating state and it looks like there is an exit code and it's exited.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 869: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The status is 255.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 870: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that means it's not.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 871: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: There is something wrong in the process.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 872: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's is not able to start.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 873: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E42
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So even if you do a service kubelet start, it's not actually going to start the service because there seems to be something wrong.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 874: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check the status of the service again and it's in an activating state.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 875: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E44
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So to look at the logs of a service, do a journalctl-u and kubelet and let's check the status.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 876: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So these are the logs, and let's look for the latest of the most recent logs.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 877: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we are here.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 878: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's go up.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 879: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E48
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So all of these seem to be an error from a previous error.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 880: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E49
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: All these seem to be an error message.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 881: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you can see that there's an error that says unable to load clientcfile/etckubernetes picking wrong ca file.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 882: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: There seems to be a wrong file, so let's try and find that out.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 883: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E52
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the, the kubelet configuration files are one in the edc kubernetes kubelet.com.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 884: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's one file.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 885: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E54
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But this is basically the kube config file used by the kubelet.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 886: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E55
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here you have the certificate, the contacts and everything that the kubelet uses to connect to the kubelet pa server.
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting

### Evidence 887: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E56
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is not the place where there's an issue.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 888: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E57
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's basically the kubelet service itself, right?
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 889: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E58
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the kubelets service picks the options from a file located var/lib/kubelet.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 890: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's something to remember.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 891: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you have a file called config.yamo.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 892: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E61
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So var/libkubeletconfig.yamo.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 893: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E62
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And within this file there are some properties that are passed through to the kubelet.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 894: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you can see there is this zero one C file right here and that's the client ca file.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 895: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E64
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it should be the correct file.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 896: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's find what the correct file is.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 897: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And there's the ca.cert file.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 898: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E67
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's what it should be ca.cert instead of the wrong ca file.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 899: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's edit that and put the correct ca cert, save that.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 900: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E69
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And now we're going to restart the kubelet service.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 901: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's just check the status of the service now.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 902: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that it's in an active running state.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 903: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's go back, let's go back to the control plane node.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 904: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's check the status of the nodes and we see that they're in a ready state.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 905: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so let's go to the next one.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 906: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so now the cluster is broken again.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 907: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check and we see that yes, it is indeed broken and node zero one is not ready.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 908: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E77
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go to node zero one and let's check the status of the kubelet.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 909: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that, we see that it's active and it's in a running state.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 910: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E79
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so let's check the logs journalctc-ukubelet, and let's go all the way to the end and let's work our way backwards.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 911: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 912: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's see if there's something useful here.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 913: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here you can see unable to register node and you can see the control plane and dial TCP 10 54, 132, 6553 connection refused.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 914: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E83
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this seems to be the error that's causing the remaining errors.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 915: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And if you look at it, it says connection refused to this.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 916: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And this is basically for the control plane that we have.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 917: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And it looks like this port number is incorrect because we know that the control plane port number is 6443 and not 6553.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 918: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E87
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that that could be the error.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 919: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E88
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the kube config file used by the kubelet.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 920: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E89
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we saw that the cube config file used by the kubelet is etc kubernetes and kubet.com.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 921: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the contents of the file.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 922: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here if you look at this, you see that right here the control plane port number is incorrect.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 923: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's get that corrected.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 924: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E93
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we'll set to 6443, and we're going to do a service kubelet restart, and service kubelet status.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 925: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: You see that it's not in an active state.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 926: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check the logs as well.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 927: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E96
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we no longer see those errors and it seems to be good.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 928: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's go back and let's check the status of the nodes and we see that it's now ready.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 929: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check our work.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 930: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's the end of this lab.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 931: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E100
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So when it comes to troubleshooting worker nodes always first check the status from here, from the control plane.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 932: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And check whatever you can find from here.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 933: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E102
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then go to each of the worker node that has the issue and start with checking the kubelet service.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 934: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E103
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If the kubelet service is good, check the logs of the kubelet service and continue your way from there.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 935: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E104
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's all for this lab.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 936: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E105
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Thank you.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 937: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E133
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so for question six, a new application origin is deployed and there's something wrong with it, identify and fix the issue.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 938: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E139
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So status pending, that's obviously not a good thing.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 939: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E141
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So everything else kind of seems normal and then we have our init container and our init container, we could see that state is terminated and reason is error.
- Multi-concept tags: Pods, Troubleshooting, CKA-CKAD

### Evidence 940: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E144
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: This got terminated due to an error.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 941: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E155
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so as you probably expected, this is the issue with the typo, it should just be two e's.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 942: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E156
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go ahead and fix that.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 943: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E159
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then I'm gonna open question6.yaml and we're going to fix this.
- Multi-concept tags: Configuration, Troubleshooting, CKA-CKAD

### Evidence 944: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E167
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have now successfully finished fixing the orange pod, it's now up and running.
- Multi-concept tags: Pods, Troubleshooting, CKA-CKAD

### Evidence 945: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E117
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's apply this and hope there's no errors.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 946: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E169
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: You got to use a path type prefix route request center path slash.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 947: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E178
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: You can see it's going to use path type prefix.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 948: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E263
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's going to be under TLS issue a certificate.
- Multi-concept tags: Security-RBAC, Troubleshooting, CKA-CKAD

### Evidence 949: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E301
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That's pending approval.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 950: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E370
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And it looks like there's an error.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 951: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E450
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Make sure that it's recreated restarted automatically in case of failures.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 952: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E177
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And you could see that it deleted the old one, but then we got an error.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 953: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E179
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 954: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E182
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So what is the issue?
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 955: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E188
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And now if we do kubectl apply question5-pod.yaml, we can see it's created, we'll do kubectl get pod -n low- priority and we can see it's running with no issues.
- Multi-concept tags: Pods, Configuration, Troubleshooting, CKA-CKAD

### Evidence 956: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E191
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: All right, so it says that we've deployed a new pod called np-test-1 and a service called np-test-services, incoming connections to the service are not working, troubleshoot and fix it.
- Multi-concept tags: Pods, Services, Troubleshooting, CKA-CKAD

### Evidence 957: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E192
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And it tells us basically what we need to do to fix it, which is create a network policy by the name of ingress-nptest that allows incoming connections to this service over port 80.
- Multi-concept tags: Services, Networking, Troubleshooting, CKA-CKAD, Platform Engineering

### Evidence 958: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E256
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's telling us to inspect both the pvc and the pv and identify why the pvc is not being bound and to fix the issue so that the pvc successfully binds to the pv, do not modify the pv resource.
- Multi-concept tags: Storage, Troubleshooting, CKA-CKAD

### Evidence 959: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E263
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We'll then do kubectl get pvc and then it's gonna be in the storage-ns namespace and we could see it's in a pending state.
- Multi-concept tags: Storage, Troubleshooting, CKA-CKAD

### Evidence 960: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E282
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we've now successfully fixed the issue.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 961: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E285
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so for this question it says that there's a kubeconfig file called super.kubeconfig in the following location and it says there's something wrong with this con configuration, troubleshoot and fix it.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 962: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E286
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Whenever there's a question where it says there's an issue and we need to fix it, always verify the issue first.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 963: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E289
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, and when I run this, let's see what error it does, unhandled error couldn't get current server API group list.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 964: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E310
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's probably the issue.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 965: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E311
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's go ahead and fix that.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 966: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E315
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And what we need to do is we to scale the replica count up to three and we need to make sure that it all, it goes up to three with no issues.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 967: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E316
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If there's any issues, we have to fix that.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 968: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E330
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So what I like to do is if there's an issue with the deployment, I'm gonna start by doing a kubectl describe deployment, and we're gonna take a look at the deployment.
- Multi-concept tags: Deployments, Troubleshooting, CKA-CKAD, On-Prem

### Evidence 969: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E331
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And what I like to do here is just look for any errors.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 970: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E332
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If you see anything that's like pointing to an error, whether it's in the configs here, the conditions, or especially the events, a lot of times the events will tell us something.
- Multi-concept tags: Observability, Troubleshooting, CKA-CKAD

### Evidence 971: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E346
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So maybe there's some sort of issue with the deployment controller and anytime you see the configurations for your deployments and your replica sets and you've configured them correctly, but something's not working, that's usually going to point to something in the control flight.
- Multi-concept tags: Deployments, Troubleshooting, CKA-CKAD

### Evidence 972: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E347
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Could be a deployment controller, it could be an issue with the API server, could be a variety of different things, but always look at the control plane because that's usually what's limiting us from making these changes.
- Multi-concept tags: Deployments, Architecture, Troubleshooting, CKA-CKAD

### Evidence 973: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E349
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And you know right away you'll notice something, the kube-controller manager has an issue, so it's not even running at the moment.
- Multi-concept tags: Architecture, Troubleshooting, CKA-CKAD

### Evidence 974: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E357
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Has an image pull issue.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 975: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E358
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's an issue with the image.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 976: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E361
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's fix that and then let's make sure that there's no other typos.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 977: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E365
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll fix that.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 978: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E368
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if we're gonna just change everything here to be a controller, and I'm just gonna go one by one and fix them and let me see if I can find and looks like there's another one.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 979: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E372
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna hit up a couple times, get back to see all the pods, and now we can see the controller manager is up and running with no issues.
- Multi-concept tags: Pods, Architecture, Troubleshooting, CKA-CKAD

### Evidence 980: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E377
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Right, so we've now successfully fixed the issue.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 981: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E383
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then once again there's a note deployment name is available in the api namespace, ignore errors due to the metric not being tracked in the metrics server.
- Multi-concept tags: Deployments, Observability, Troubleshooting, CKA-CKAD

### Evidence 982: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E436
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Type: PathPrefix.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 983: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E460
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now to validate a chart, helm has a nice command called helm lint, and then you just provide a path to the chart and we can see that it found one chart, zero charts failed.
- Multi-concept tags: Configuration, Troubleshooting, CKA-CKAD

### Evidence 984: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E461
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the chart is good and we shouldn't have any issues with that.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 985: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/313_What's Next_.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 313_What's Next_.txt
- Line Context: Lines 1-1 from transcript
- Content: Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.
- Multi-concept tags: Services, Networking, Storage, Troubleshooting

### Evidence 986: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/313_What's Next_.extraction.md::E65
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 313_What's Next_.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the sixth question as you can see, is from the troubleshooting section.
- Multi-concept tags: Troubleshooting

### Evidence 987: certified-kubernetes-application-developer/01_Introduction/001_Introduction.extraction.md::E10
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 01_Introduction / 001_Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- Multi-concept tags: Troubleshooting

### Evidence 988: certified-kubernetes-application-developer/01_Introduction/001_Introduction.extraction.md::E20
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 01_Introduction / 001_Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 989: certified-kubernetes-application-developer/01_Introduction/002_Kubernetes Series of Courses.extraction.md::E18
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 01_Introduction / 002_Kubernetes Series of Courses.txt
- Line Context: Lines 1-1 from transcript
- Content: The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monitoring, maintenance, security, storage, and troubleshooting.
- Multi-concept tags: Storage, Security-RBAC, Architecture, Observability, Troubleshooting

### Evidence 990: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: But what if the node on which your application is running fails?
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 991: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E11
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: This way, even if one node fails, you have your application still accessible from the other nodes.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 992: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E17
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: When a node fails, how do you move the workload of the failed node to another worker node?
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 993: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E54
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: And this tool is solely made for debugging container D and is not very user friendly as it only supports a limited set of features.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 994: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: But as I mentioned, this tool is solely made for debugging container ID and is not very user friendly and not to be used for running or managing containers on a production environment, so a better alternative recommended is the nerd control tool or nerd CTL tool.
- Multi-concept tags: Configuration, Troubleshooting, On-Prem

### Evidence 995: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E83
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: And it is used to inspect and debug container runtime.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 996: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E85
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: This is again a debugging tool.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 997: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E87
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: It's only to be used for some special debugging purposes.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 998: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E91
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So because of those things, remember that the cry control utility is only used for debugging purposes and getting into containers and all of that.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 999: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E104
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So while working with Kubernetes in the past, we used Docker commands a lot to troubleshoot containers and view logs, especially on the worker nodes.
- Multi-concept tags: Configuration, Architecture, Troubleshooting, On-Prem

### Evidence 1000: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E119
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So to summarize, we have the Ctor command line utility that comes with container D and works with container D, which is used for debugging purposes only and has a very limited set of features.
- Multi-concept tags: Configuration, Troubleshooting, On-Prem

### Evidence 1001: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E129
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: Again this is mainly for to be used for debugging purposes.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 1002: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E130
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the comparisons here you can see that Ktor and cry control are used mainly for debugging purposes, whereas the nerve control is used for general purpose.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 1003: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E132
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So our labs originally had Docker installed on all the nodes, so we used the Docker commands to troubleshoot.
- Multi-concept tags: Configuration, Architecture, Troubleshooting, On-Prem

### Evidence 1004: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E134
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So remember to use the the cry control command instead to troubleshoot.
- Multi-concept tags: Configuration, Troubleshooting, On-Prem

### Evidence 1005: certified-kubernetes-application-developer/02_Core Concepts/012_Recap - Pods with YAML.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 012_Recap - Pods with YAML.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on what we are trying to create, we must use the right API version for now.
- Multi-concept tags: Pods, Configuration, Troubleshooting

### Evidence 1006: certified-kubernetes-application-developer/02_Core Concepts/012_Recap - Pods with YAML.extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 012_Recap - Pods with YAML.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on the object we are going to create.
- Multi-concept tags: Pods, Configuration, Troubleshooting

### Evidence 1007: certified-kubernetes-application-developer/02_Core Concepts/012_Recap - Pods with YAML.extraction.md::E58
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 012_Recap - Pods with YAML.txt
- Line Context: Lines 1-1 from transcript
- Content: Then start by adding values to those depending on the object you are going to create.
- Multi-concept tags: Pods, Configuration, Troubleshooting

### Evidence 1008: certified-kubernetes-application-developer/02_Core Concepts/015_Introduction to Kubernetes Practice Test.extraction.md::E39
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 015_Introduction to Kubernetes Practice Test.txt
- Line Context: Lines 1-1 from transcript
- Content: And remember, this is a temporary environment and is only available for one hour depending on the mock exam or your particular lab environment, after which it is deleted so your work will not be saved.
- Multi-concept tags: Configuration, Troubleshooting, CKA-CKAD

### Evidence 1009: certified-kubernetes-application-developer/02_Core Concepts/016_Demo_ Accessing Labs.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 016_Demo_ Accessing Labs.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you run into issues with accessing labs, please write to support at support@CKodekloud.com.
- Multi-concept tags: Troubleshooting

### Evidence 1010: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E66
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So out of these it's not running ready your success is actually error or waiting.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1011: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E68
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now why do you think the container Agent X in pod web app is in an error or waiting state?
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1012: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E70
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at one of the section here, under State you have the reason called as error image pull.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1013: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E71
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Or if you just look at it below here in the event section, you can see the error.
- Multi-concept tags: Pods, Observability, Troubleshooting

### Evidence 1014: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Just basically this one, it says fail to pull image Agent X and at doppler.io/libraries/agentX.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1015: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And that's basically the reason that its failing.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1016: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E107
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so it's created and it's in an error image pool state because we have the wrong image name.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1017: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E111
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the last question for this lab is to change the image on this pod to Redis, to fix that error that we, you know, purposefully created.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1018: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E119
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's check status Now we'll talk about this error message later when we talk about imperative commands and the declarative way that we apply.
- Multi-concept tags: Pods, Configuration, Troubleshooting

### Evidence 1019: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E6
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1020: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: That way, if one fails, we still have our application running on the other one.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1021: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E12
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Even if you have a single pod, the replication controller can help by automatically bringing up a new pod when the existing one fails.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1022: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E70
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: If you get this wrong, you are likely to get an error that looks like this.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1023: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E97
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The role of the replica set is to monitor the pods and if any of them were to fail, deploy new ones.
- Multi-concept tags: Pods, Deployments, Security-RBAC, Observability, Troubleshooting

### Evidence 1024: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E112
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Yes, we do, because in case one of the pods were to fail in the future, the replica set needs to create a new one to maintain the desired number of pods, and for the replica set to create a new pod, the template definition section is required.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1025: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E127
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on the file we are providing as input, you must provide the input file using the dash f parameter.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1026: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Of course it's obvious, but I just wanna show you if you're not sure what the error is then you've got to look at one of these pods in a bit more detail.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1027: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And you see it's basically because it's failed to pull the image BusyBox 777, right?
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1028: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E49
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's one here and there's an issue with the file so we have to try and fix it.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1029: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E53
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the error is that it's unable to recognize this file.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1030: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E65
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go ahead and fix that. apps/v1.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1031: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E69
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So next task is to fix the issue in the second file and create the ReplicaSet.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1032: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E83
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So basically the issue here is that you have the labels specified here called tier front end, and then the label for the pod that the ReplicaSet will create is nginx.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1033: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E98
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now fix the original ReplicaSet to use the correct BusyBox image.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1034: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E102
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we've got to now fix that.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1035: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E112
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And you see there's all still in the error state.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1036: certified-kubernetes-application-developer/02_Core Concepts/024_Recap - Deployments.extraction.md::E10
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 024_Recap - Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: Suppose one of the upgrades you performed resulted in an unexpected error, and you're asked to undo the recent change You would like to be able to roll back the changes that were recently carried out.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1037: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there is some kind of error.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1038: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E48
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if we look at the file, we see that the API version is app slash v1 which seems to be correct, but the kind is deployment, which is also right, but the issue is that it's case sensitive, right?
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1039: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E51
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the reason we have these kind of exercises is just to help you understand and learn how to, you know, know what the issue is when you come up across these errors.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1040: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E52
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So oftentimes you'll face these kind of errors because of these kind of typos or, you know, a word's not being spelled correctly or not in the right case.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1041: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E53
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And you should know what those mean when you see these kind of errors.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1042: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E57
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So I've just fixed that and let's proceed with the creation.
- Multi-concept tags: Deployments, Troubleshooting

### Evidence 1043: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, when we create a service for a set of pods, and we might think that depending on the label and the selector we specified, the service is going to direct traffic to those pods, but it might be possible that we have another pod, which we accidentally created with the same kind of label.
- Multi-concept tags: Pods, Services, Scheduling, Troubleshooting

### Evidence 1044: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E70
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, there's the link here, and clicking on it, we see that it gives us a bad gateway error.
- Multi-concept tags: Services, Troubleshooting

### Evidence 1045: certified-kubernetes-application-developer/03_Configuration/041_Define, build and modify container images.extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 041_Define, build and modify container images.txt
- Line Context: Lines 1-1 from transcript
- Content: All the layers built are cast, so the layered architecture helps you restart docker build from that particular step in case it fails.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 1046: certified-kubernetes-application-developer/03_Configuration/041_Define, build and modify container images.extraction.md::E44
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 041_Define, build and modify container images.txt
- Line Context: Lines 1-1 from transcript
- Content: So in case a particular step was to fail, for example, in this case, step three failed, and you were to fix the issue and rerun docker build, it will reuse the previous layers from cache and continue to build the remaining layers.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1047: certified-kubernetes-application-developer/03_Configuration/043_Commands and Arguments in Docker.extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 043_Commands and Arguments in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Now in the second case, what if I run the ubuntu sleeper image command without appending the number of seconds?
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1048: certified-kubernetes-application-developer/03_Configuration/043_Commands and Arguments in Docker.extraction.md::E63
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 043_Commands and Arguments in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Then the command at startup will be just sleep and you get the error that the operand is missing.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1049: certified-kubernetes-application-developer/03_Configuration/044_Commands and Arguments in Kubernetes.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 044_Commands and Arguments in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the Coding exercises section and practice viewing, configuring and troubleshooting commands and arguments in Kubernetes.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1050: certified-kubernetes-application-developer/03_Configuration/047_Solution - Commands and Arguments (Optional).extraction.md::E62
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 047_Solution - Commands and Arguments (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So try and fix it.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1051: certified-kubernetes-application-developer/03_Configuration/049_ConfigMaps.extraction.md::E53
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 049_ConfigMaps.txt
- Line Context: Lines 1-1 from transcript
- Content: So head over to the coding exercises section and practice viewing, configuring and troubleshooting environment variables on a live Kubernetes environment.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1052: certified-kubernetes-application-developer/03_Configuration/056_Solution - Secrets (Optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 056_Solution - Secrets (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we can see that it's in a failed state.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1053: certified-kubernetes-application-developer/03_Configuration/056_Solution - Secrets (Optional).extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 056_Solution - Secrets (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It says failed connecting to the MySQL database.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1054: certified-kubernetes-application-developer/03_Configuration/056_Solution - Secrets (Optional).extraction.md::E39
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 056_Solution - Secrets (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the error.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1055: certified-kubernetes-application-developer/03_Configuration/056_Solution - Secrets (Optional).extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 056_Solution - Secrets (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the reason the application is failed is because we have not created the secret object yet.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1056: certified-kubernetes-application-developer/03_Configuration/056_Solution - Secrets (Optional).extraction.md::E98
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 056_Solution - Secrets (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And this kind of helps us debug if something is not passed through right.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1057: certified-kubernetes-application-developer/03_Configuration/059_Security Contexts.extraction.md::E14
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 059_Security Contexts.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the Coding Exercises section and practice viewing, configuring, and troubleshooting issues related to security contexts in Kubernetes.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1058: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E11
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler avoids placing the pod on those nodes, and instead places the pod on one where sufficient resources are available, and if there is no sufficient resources available on any of the nodes, then the scheduler holds back, scheduling the pod and you will see the pod in a pending state.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 1059: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, similarly with memory, you could specify 256 mebibyte using the mi suffix, or specify the same value in memory like this.
- Multi-concept tags: Troubleshooting

### Evidence 1060: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E31
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: So um, or use the suffix g for uh, gigabyte.
- Multi-concept tags: Troubleshooting

### Evidence 1061: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E57
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: The pod will be terminated and you'll see that the pod terminated with an error in the logs or in the output of the describe command when you run it.
- Multi-concept tags: Pods, Configuration, Troubleshooting, On-Prem

### Evidence 1062: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E77
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: However, the issue is that if Pod one needs more CPU cycles for some reason and pod two isn't really consuming that many CPU cycles, then we don't want to limit pod one of CPU, right?
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1063: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E12
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: And for some reason or another it fails to get into a running state.
- Multi-concept tags: Troubleshooting

### Evidence 1064: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: And the next question is just telling us that the status of oomkilled indicates that it is failing because the pod ran out of memory.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1065: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E70
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Line Context: Lines 1-1 from transcript
- Content: So this excerpt from the Kubernetes Enhancement Proposal for creating bound service account tokens describes this form of JWT to be having some security and scalability related issues.
- Multi-concept tags: Services, Security-RBAC, Troubleshooting, On-Prem

### Evidence 1066: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E74
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Line Context: Lines 1-1 from transcript
- Content: Moreover, each JWT requires a separate secret object per service account, which results in scalability issues.
- Multi-concept tags: Services, Security-RBAC, Troubleshooting

### Evidence 1067: certified-kubernetes-application-developer/03_Configuration/067_Solution_ Service Account.extraction.md::E18
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 067_Solution_ Service Account.txt
- Line Context: Lines 1-1 from transcript
- Content: So there's an error it's saying pods is forbidden, user block cannot list resources pods in the api group.
- Multi-concept tags: Pods, Services, Security-RBAC, Troubleshooting

### Evidence 1068: certified-kubernetes-application-developer/03_Configuration/067_Solution_ Service Account.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 067_Solution_ Service Account.txt
- Line Context: Lines 1-1 from transcript
- Content: All right, so let's go back and we'll say that it failed.
- Multi-concept tags: Services, Security-RBAC, Troubleshooting

### Evidence 1069: certified-kubernetes-application-developer/03_Configuration/067_Solution_ Service Account.extraction.md::E48
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 067_Solution_ Service Account.txt
- Line Context: Lines 1-1 from transcript
- Content: So it's telling us to get an access token and entered in the UI dashboard and see if that basically fixes the issue.
- Multi-concept tags: Services, Security-RBAC, Troubleshooting

### Evidence 1070: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E56
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pods are now created or updated with the new tolerations, they are either not scheduled on nodes or evicted from the existing nodes depending on the effect set.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 1071: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it seems to be in a pending state, so select pending.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 1072: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now why do you think the pod is in a pending state?
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 1073: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E27
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Is there an error?
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 1074: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you'll see the reason why it's in a pending state. it says that the pod didn't tolerate one node that had taint and spray morteen that the pod didn't tolerate.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 1075: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the pod mosquito, which earlier was in a pending state, is now in a running state.
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 1076: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E85
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: There seems to be some error.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 1077: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E86
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go back, see what the error is.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 1078: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E95
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so even though here it said line 26 the issue was a few lines above.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 1079: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: To get the state of the pod, just take a look at the output of the described pod command, and you can see there's a status section right here and that's going to be pending.
- Multi-concept tags: Pods, Configuration, Troubleshooting, On-Prem

### Evidence 1080: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'll select pending, and it's asking how long after the creation of the pod will the application come up and be available to users.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1081: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E67
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And it's saying that there's a new application orange that was deployed and there's something wrong with it, identify and fix the issue.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1082: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E73
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So no issue there.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1083: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E74
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: However, if we go up to the Init container, I do see one minor issue.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1084: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E77
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's update this configuration and see if that fixes it.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1085: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E81
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then we'll go into the orange.yaml, and let's fix up the command so that there isn't too many Es.
- Multi-concept tags: Pods, Configuration, Troubleshooting

### Evidence 1086: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E84
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then let's run the validation just to see if the issue is fixed, and it looks like we're successful.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1087: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: When a pod is first created, it is in a pending state.
- Multi-concept tags: Pods, Observability, Troubleshooting

### Evidence 1088: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E10
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: If the scheduler cannot find the node to place the pod, it remains in a pending state.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability, Troubleshooting

### Evidence 1089: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: To find out why it's stuck in a pending state, run the kubectl describe pod command and it will tell you exactly why.
- Multi-concept tags: Pods, Configuration, Observability, Troubleshooting, On-Prem

### Evidence 1090: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E68
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: If you'd like to make more attempts, use the failure threshold option.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1091: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: If the test fails, the container is considered unhealthy and is destroyed and recreated.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1092: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: As well as additional options like initial delay before the test is run, periodSeconds to define the frequency, and success and failure thresholds.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1093: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E32
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: We have some fun and challenging exercises where you will be required to configure probes as well as troubleshoot and fix issues with existing probes.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1094: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E16
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: But then now you can see that there's a couple of failures.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1095: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E18
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Next question is just telling us to notice the fact that, you know, there have been some failures.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1096: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: But when things go to webapp-2 for some reason it's failing.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1097: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E72
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so we can see that there's several failures as well as a couple of successes.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1098: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: But anything that goes to Pod 2 is gonna fail.
- Multi-concept tags: Pods, Observability, Troubleshooting

### Evidence 1099: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Otherwise it would fail asking you to specify a name.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1100: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the, the cause is the the user failed to login as the account is locked due to too many failed attempts.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1101: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's account logged due to many failed attempts.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1102: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E16
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And if you see a user is reporting issues while trying to purchase an item, identify the user and the cause of the issue, inspect the logs of the web app.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1103: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E25
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the question is a user is reporting issues while trying to purchase an item.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1104: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we've gotta identify the user and the cause of the issue.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1105: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So user five, failed to log in, that's not the issue here.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1106: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: This one says user 30 order, order failed as item is out of stock.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1107: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E31
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that seems to be, and that's those are the only two issues.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1108: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we talk about monitoring a Kubernetes cluster.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 1109: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: So how do you monitor resource consumption on Kubernetes?
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1110: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Or more importantly, what would you like to monitor?
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1111: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: I'd like to know node level metrics, such as the number of nodes in the cluster, how many of them are healthy, as well as performance metrics such as CPU, memory, network, and disk utilization, as well as pod level metrics such as the number of pods and the performance metrics of each pod, such as CPU and memory consumption on them.
- Multi-concept tags: Pods, Networking, Architecture, Observability, Troubleshooting

### Evidence 1112: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: So we need a solution that will monitor these metrics, store them, and provide analytics around this data.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1113: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: As of this recording, Kubernetes does not come with a full featured built in monitoring solution.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1114: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: However, there are a number of open source solutions available today, such as Metrics Server, Prometheus, Elastic Stack, and proprietary solutions like Datadog and Dynatrace.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1115: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Hipster was one of the original projects that enabled monitoring and analysis features for Kubernetes.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1116: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: You will see a lot of reference online when you look for reference architectures on monitoring Kubernetes.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 1117: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: However, hipster is now deprecated and a slimmed down version was formed, known as the Metrics Server.
- Multi-concept tags: Observability, Troubleshooting, Platform Engineering

### Evidence 1118: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: You can have one metric server per Kubernetes cluster.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 1119: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: The metric server retrieves metrics from each of the Kubernetes nodes and pods, aggregates them, and stores them in memory.
- Multi-concept tags: Pods, Architecture, Observability, Troubleshooting

### Evidence 1120: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Note that the metric server is only an in-memory monitoring solution and does not store the metrics on the disk, and as a result, you cannot see historical performance data.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1121: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: For that, you must rely on one of the advanced monitoring solutions we talked about earlier in this lecture.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1122: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: So how are the metrics generated for the pods on these nodes?
- Multi-concept tags: Pods, Architecture, Observability, Troubleshooting

### Evidence 1123: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E16
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes runs an agent on each node known as the Kubelet, which is responsible for receiving instructions from the Kubernetes API, master server, and running pods on the nodes.
- Multi-concept tags: Pods, Architecture, Observability, Troubleshooting

### Evidence 1124: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E17
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: The Kubelet also contains a subcomponent known as the Sea Advisor or Container Advisor.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 1125: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E18
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Sea advisor is responsible for retrieving performance metrics from pods and exposing them through Kubelet API to make the metrics available for the metrics server.
- Multi-concept tags: Pods, Architecture, Observability, Troubleshooting

### Evidence 1126: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: If you're using minikube for your local cluster, run the command minikube add ons.
- Multi-concept tags: Configuration, Architecture, Observability, Troubleshooting, On-Prem

### Evidence 1127: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Enable metrics dash server for all other environments.
- Multi-concept tags: Configuration, Observability, Troubleshooting

### Evidence 1128: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Deploy the metrics server by cloning the metric server deployment files from the GitHub repository, and then deploying the required components using the kube control create command.
- Multi-concept tags: Deployments, Configuration, Observability, Troubleshooting

### Evidence 1129: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: This command deploys a set of pods, services and roles to enable metric server to poll for performance metrics from the nodes in the cluster.
- Multi-concept tags: Pods, Services, Security-RBAC, Configuration, Architecture, Observability, Troubleshooting

### Evidence 1130: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Once deployed, give the metrics server some time to collect and process data.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1131: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Once processed, cluster performance can be viewed by running the command kube control top node.
- Multi-concept tags: Configuration, Architecture, Observability, Troubleshooting

### Evidence 1132: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: This provides the CPU and memory consumption of each of the nodes.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 1133: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: As you can see, 8% of the CPU on my master node is consumed, which is about 166 milli cores.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 1134: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Use the kube control top pod command to view performance metrics of pods in Kubernetes.
- Multi-concept tags: Pods, Configuration, Observability, Troubleshooting

### Evidence 1135: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1136: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the Coding Exercises section and practice viewing performance metrics on the Kubernetes cluster.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 1137: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Thank you.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 1138: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And, but there's an issue with this, so we've got to fix it.
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 1139: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E56
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the error message is that this does not match this.
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 1140: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E59
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the validation error here.
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 1141: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna fix this by changing this to the value below.
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 1142: certified-kubernetes-application-developer/06_POD Design/102_Solution - Rolling Updates (Optional).extraction.md::E94
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 102_Solution - Rolling Updates (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And when we run this, this time, unlike the previous time we see a lot of failures.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1143: certified-kubernetes-application-developer/06_POD Design/102_Solution - Rolling Updates (Optional).extraction.md::E95
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 102_Solution - Rolling Updates (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So some of the requests are failing and this is because it took down, it took down some of the, the pods as part of the upgrade because we are doing a recreate.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1144: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Line Context: Lines 1-1 from transcript
- Content: You can override this behavior by setting this property to never or on failure.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1145: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Line Context: Lines 1-1 from transcript
- Content: That was straightforward but what if the pods fail?
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1146: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E71
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, I'm now going to create a job using a different image called Random Error.
- Multi-concept tags: Pods, Troubleshooting, CKA-CKAD

### Evidence 1147: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E72
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Line Context: Lines 1-1 from transcript
- Content: It's a simple Docker image that randomly completes or fails.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1148: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E74
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Line Context: Lines 1-1 from transcript
- Content: The second one fails.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1149: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E75
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Line Context: Lines 1-1 from transcript
- Content: So a third one is created and that completes successfully and the fourth one fails.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1150: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E3
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Six is considered a success, and all others are considered a failure.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1151: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E10
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And, we can see that it is currently in an error status.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1152: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, far it hasn't completed, and if I do a, kubectl describe job throw-dice-job, we can see one active, zero succeeded, three failed.
- Multi-concept tags: Pods, Troubleshooting, On-Prem

### Evidence 1153: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we have one succeeded, three failed.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1154: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E57
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so, right now, we've had one success, one failure, and, now, we have two successes.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1155: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E63
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we had three successful ones, and one failure.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1156: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so, we've got two succeeded, three failed.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1157: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E67
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: You will not get an error message saying the network solution does not support network policies.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1158: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E144
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: I'm gonna fix that.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1159: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E150
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally, anything other than the ones listed here will go to the fourth rule that will simply show a 404 not found error page.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1160: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E174
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Line Context: Lines 1-1 from transcript
- Content: You can do this by configuring a default back end service to display this 404 not found error page.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1161: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E57
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you look at it, it gives us a 404 not found error.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1162: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E59
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Line Context: Lines 1-1 from transcript
- Content: So we see a 404 error page.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1163: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Line Context: Lines 1-1 from transcript
- Content: Now view the applications by appending the wear and watch to the URL that you opened.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1164: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E74
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Line Context: Lines 1-1 from transcript
- Content: So it's immediately replaced, if we refresh the watch path, now we get 404 error.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1165: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E86
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Line Context: Lines 1-1 from transcript
- Content: So it doesn't, there's nothing, so it's a 404 error.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1166: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E87
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Line Context: Lines 1-1 from transcript
- Content: So there's a 404 error Now due to increased demand, your business decides to take on an adventure.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1167: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E172
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Line Context: Lines 1-1 from transcript
- Content: But you see that it's still it's not working as expected, still gives the 404 error.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1168: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E187
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's why the error.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1169: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E40
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: There are just, there are some issues.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1170: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E43
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: So it looks like there are some issues.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1171: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E44
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: So there's, there's an issue.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1172: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E45
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: Line 36 looks like a YAML issue.
- Multi-concept tags: Services, Networking, Configuration, Troubleshooting

### Evidence 1173: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's, let's edit the file and try and fix those.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1174: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E49
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: Yeah, indeed there's an issue with spacing.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1175: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll fix that.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1176: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E143
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: So it, it looks like it's going into too many, and you can see the errors here, so it's going into too many redirects.
- Multi-concept tags: Services, Networking, Troubleshooting

### Evidence 1177: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: If there are no volumes available, the persistent volume claim will remain in a pending state until newer volumes are made available to the cluster.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 1178: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We see the claim in a pending state.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 1179: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: A plain rm rf leaves a inode metadata and may fail under permissions.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 1180: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the labs and practice configuring and troubleshooting persistent volumes and volume claims in Kubernetes.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 1181: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If you look at the state, it is in a pending state.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 1182: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E117
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then, we have the PVC, which requested about 50, but it's still in a pending state.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 1183: certified-kubernetes-application-developer/08_State Persistence/134_Why Stateful Sets_.extraction.md::E11
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 08_State Persistence / 134_Why Stateful Sets_.txt
- Line Context: Lines 1-1 from transcript
- Content: To withstand failures, we are tasked to deploy a high availability solution so we deploy additional servers and install MySQL on those as well.
- Multi-concept tags: Troubleshooting

### Evidence 1184: certified-kubernetes-application-developer/08_State Persistence/134_Why Stateful Sets_.extraction.md::E72
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 08_State Persistence / 134_Why Stateful Sets_.txt
- Line Context: Lines 1-1 from transcript
- Content: Even if the master fails and the POD is recreated, it would still come up with the same name.
- Multi-concept tags: Pods, Troubleshooting

### Evidence 1185: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: What if one of these pods fail and is recreated or rescheduled onto a note?
- Multi-concept tags: Pods, Storage, Scheduling, Troubleshooting

### Evidence 1186: certified-kubernetes-application-developer/09_Security/142_KubeConfig.extraction.md::E91
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 142_KubeConfig.txt
- Line Context: Lines 1-1 from transcript
- Content: Practice working with Kubeconfig files and troubleshooting issues.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1187: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E87
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 144_Solution KubeConfig.txt
- Line Context: Lines 1-1 from transcript
- Content: However, something seems to be wrong, identify and fix the issue.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1188: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E100
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 144_Solution KubeConfig.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's fixed.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1189: certified-kubernetes-application-developer/09_Security/146_Authorization.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 146_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: In the earlier lectures, when we discussed about certificates, we discussed that the Cubelets should be part of the system nodes group and have a name prefixed with system node, so any requests coming from a user with the name system node and part of the system nodes group is authorized by the node authorizer and are granted these privileges.
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting

### Evidence 1190: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E97
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Line Context: Lines 1-1 from transcript
- Content: But there is an issue.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1191: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E98
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Line Context: Lines 1-1 from transcript
- Content: So investigate and fix the issue.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1192: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E120
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's fixed.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1193: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E149
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Line Context: Lines 1-1 from transcript
- Content: Yep, so that should be the fix to this.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1194: certified-kubernetes-application-developer/09_Security/153_Admission Controllers.extraction.md::E39
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 153_Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: If I run this command, it would throw an error that says the namespace blue is not found.
- Multi-concept tags: Security-RBAC, Configuration, Troubleshooting

### Evidence 1195: certified-kubernetes-application-developer/09_Security/155_Solution_ Admission Controllers.extraction.md::E36
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: And we can see that it throws an error because the namespace blue was not found.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1196: certified-kubernetes-application-developer/09_Security/155_Solution_ Admission Controllers.extraction.md::E37
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the reason this ultimately failed and it threw that error was because Kubernetes has a NamespaceExist admission controller enabled which rejects requests and namespaces that do not exist.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1197: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E25
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: And when a request goes through these admission controllers, if any admission controller rejects the request, the request is rejected and an error message is shown to the user.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1198: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E94
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: Once this object is created, every time we create a pod, a call would be made to the webhook service and depending on the response, it would be allowed or rejected.
- Multi-concept tags: Pods, Services, Security-RBAC, Troubleshooting

### Evidence 1199: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, after some time the Alpha version and once all the major bug are fixed and it has end to end test, it moves to the Beta stage.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1200: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E37
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, since most bugs are fixed in Alpha and Beta stages in the API group, this API group is highly reliable and it'll be supported and present in many feature releases to come.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1201: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E33
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Line Context: Lines 1-1 from transcript
- Content: So continuing with our story we fixed some more bugs and are now ready for beta.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1202: certified-kubernetes-application-developer/09_Security/162_Solution_ API Versions_Deprecations.extraction.md::E50
- Type: Architecture
- Source: certified-kubernetes-application-developer / 09_Security / 162_Solution_ API Versions_Deprecations.txt
- Line Context: Lines 1-1 from transcript
- Content: And we can see that the API server pod is in a pending state at the moment.
- Multi-concept tags: Pods, Security-RBAC, Architecture, Troubleshooting

### Evidence 1203: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E58
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition.txt
- Line Context: Lines 1-1 from transcript
- Content: If you tried to create a flight ticket resource now on your Kubernetes cluster, you will see that it fails with the error message that says there is.
- Multi-concept tags: Security-RBAC, Architecture, Troubleshooting

### Evidence 1204: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E108
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition.txt
- Line Context: Lines 1-1 from transcript
- Content: If the value is entered by the user does not fall within this range, the resource will not be created and will return an error message.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1205: certified-kubernetes-application-developer/09_Security/166_Operator Framework.extraction.md::E11
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 166_Operator Framework.txt
- Line Context: Lines 1-1 from transcript
- Content: So Kubernetes operators do what a human operator typically will do to manage a specific application such as installing it, maintaining it, by taking backups, and restoring backups in case of disasters, fixing any issues that may come across the application, et cetera.
- Multi-concept tags: Security-RBAC, Troubleshooting

### Evidence 1206: certified-kubernetes-application-developer/10_Helm Fundamentals/170_Solution_ Install Helm.extraction.md::E13
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 170_Solution_ Install Helm.txt
- Line Context: Lines 1-1 from transcript
- Content: And we can see here for enabling verbose output, you pass in the --debug flag.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1207: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/174_Kustomize Problem Statement & idealogy.extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy.txt
- Line Context: Lines 1-1 from transcript
- Content: There's no issues, there's no limitations with the solution.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1208: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/174_Kustomize Problem Statement & idealogy.extraction.md::E39
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy.txt
- Line Context: Lines 1-1 from transcript
- Content: We need a better solution to addressing this issue.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1209: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/174_Kustomize Problem Statement & idealogy.extraction.md::E42
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at how Kustomize addresses this issue.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1210: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/175_Kustomize vs Helm.extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 175_Kustomize vs Helm.txt
- Line Context: Lines 1-1 from transcript
- Content: (bouncy piano music) Instructor: Before we move on to the next section, I wanted to talk about an alternative tool to Kustomize, and this tool is called Helm, and I wanted to just provide a brief, high level overview of how Helm addresses the same issue of providing modification to your Kubernetes manifest on a per environment basis.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1211: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/175_Kustomize vs Helm.extraction.md::E3
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 175_Kustomize vs Helm.txt
- Line Context: Lines 1-1 from transcript
- Content: So the way that Helm actually tackles this issue is that it makes use of a go templating syntax to assign variables to various properties.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1212: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/176_Installation_Setup.extraction.md::E6
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 176_Installation_Setup.txt
- Line Context: Lines 1-1 from transcript
- Content: If you don't see an output similar to this, that means, most likely, there was an issue with an installation or maybe the environment variables weren't updated in the current terminal session.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1213: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/176_Installation_Setup.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 176_Installation_Setup.txt
- Line Context: Lines 1-1 from transcript
- Content: If there's still an issue, then rerun the installation script again.
- Multi-concept tags: Configuration, Troubleshooting, On-Prem

### Evidence 1214: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/180_Managing Directories.extraction.md::E36
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 180_Managing Directories.txt
- Line Context: Lines 1-1 from transcript
- Content: So, kustomize has helped us address the issue of splitting all of our configs into separate directories.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1215: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/181_Managing Directories Demo.extraction.md::E67
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 181_Managing Directories Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: We don't need these anymore and we'll come back to fixing up this file, but I'm gonna go ahead and create a customizations file in all three directories.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1216: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/183_Common Transformers.extraction.md::E4
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 183_Common Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: And before we even go over what that is and what they do, let's take a look at the issue they're trying to address first.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1217: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/183_Common Transformers.extraction.md::E9
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 183_Common Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, let's say that we want to specifically add a label in this case, so something like org:KodeKloud, or maybe we wanna go into all of our Kubernetes objects and add a specific prefix or suffix to the name.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1218: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/183_Common Transformers.extraction.md::E13
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 183_Common Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: And so doing this by hand is not a scalable solution, and it's gonna be very time-consuming and it's going to lead to a lot of errors.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1219: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/183_Common Transformers.extraction.md::E19
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 183_Common Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: We also have the namePrefix and suffix transformation.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1220: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/183_Common Transformers.extraction.md::E20
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 183_Common Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: This is going to allow you to add a prefix or suffix to the names of all of your Kubernetes resources.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1221: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/183_Common Transformers.extraction.md::E35
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 183_Common Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: For the prefix, suffix transformer, we can add in a specific prefix or suffix by providing the name prefix or the name suffix properties.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1222: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/183_Common Transformers.extraction.md::E36
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 183_Common Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: And that's gonna map to the prefix of the name as well as the suffix of the name as well.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1223: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/184_Image Transformers.extraction.md::E17
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 184_Image Transformers.txt
- Line Context: Lines 1-1 from transcript
- Content: Something to keep in mind, it confused me at first, so I figured you guys would probably run into the same issue.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1224: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So maybe, this'll be our debugging environment.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1225: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E48
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So for the db side of things, we can see that the namespace was set to debugging, for api, we should see that the namespace was set to debugging.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1226: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So now let's give everything a namePrefix and a nameSuffix.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1227: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E52
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: I want every single object to have a name prefixed with the word KodeCloud.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1228: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E53
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: And I want all of the resources to have a suffix that's specific to what folder they're in.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1229: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E56
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: I want it api-deployment-web, and it should be prefixed with KodeCloud.
- Multi-concept tags: Deployments, Configuration, Troubleshooting

### Evidence 1230: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E59
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna change it to, it's gonna be prefixed with KodeCloud as well, but it's gonna end in -storage.
- Multi-concept tags: Storage, Configuration, Troubleshooting

### Evidence 1231: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E61
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So for the prefix of KodeCloud, we want this applied to every single resource, regardless of what folder they're in.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1232: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E63
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll go in here and we'll add a prefix.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1233: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E64
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So this will be namePrefix and it's gonna be KodeCloud.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1234: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E73
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: Now we wanna set up the suffix, and like I said, the suffix is going to change depending on which folder that we're in.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1235: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E76
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: And I'm gonna do a nameSuffix.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1236: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E79
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll do nameSuffix: -storage.
- Multi-concept tags: Storage, Configuration, Troubleshooting

### Evidence 1237: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So for this case, we have our db-deployment file, and we can see that the name is KodeCloud, so the prefix is still there, and then the suffix is set to storage.
- Multi-concept tags: Deployments, Storage, Configuration, Troubleshooting

### Evidence 1238: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E84
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: And if we take a look at one of the apis, we've got KodeCloud, and then the suffix is web.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1239: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E90
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: I'm just gonna say logging, it's gonna be set to debugging, or let's just say verbose.
- Multi-concept tags: Configuration, Observability, Troubleshooting

### Evidence 1240: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E105
- Type: Concept
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: But obviously, this is going to vary depending on what you're trying to accomplish with your transformation.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1241: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E115
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you guys noticed, I got an error, and it's important to take a look at these errors, and just read it because it's gonna give us some information as to what exactly happened.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1242: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E118
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm suspecting the issue is with the tag right here.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1243: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E119
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: If I actually comment this out, I assume we're probably not going to get an error, and it seems to work.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1244: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E120
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So there seems to be an issue with this.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1245: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/187_Patches Intro.extraction.md::E110
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 187_Patches Intro.txt
- Line Context: Lines 1-1 from transcript
- Content: There's no issues with using either one, it's just a matter of personal preference.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1246: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/194_Components.extraction.md::E23
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 194_Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is going to create a little bit of an issue 'cause we have these individual features that only apply to a certain subset of our overlays.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1247: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E24
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Line Context: Lines 1-1 from transcript
- Content: The first time you try to execute your work, it fails.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1248: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E25
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Line Context: Lines 1-1 from transcript
- Content: You read the error message and realize that you had made a mistake, like a typo.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1249: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Line Context: Lines 1-1 from transcript
- Content: So you go back and fix it and run it again.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1250: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E27
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Line Context: Lines 1-1 from transcript
- Content: This time you get an error message, but you're not able to make any sense out of it.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1251: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E28
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Line Context: Lines 1-1 from transcript
- Content: Even though that was an easy question and you knew you could do it, if you're not able to make any sense out of the error message, don't spend any more time troubleshooting or debugging that error.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1252: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E31
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Line Context: Lines 1-1 from transcript
- Content: Now I know that urge to troubleshoot and fix issues, but this is not the right time for it.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1253: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E32
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Line Context: Lines 1-1 from transcript
- Content: Leave it to the end and do all the troubleshooting you want, after you have attempted all the questions.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1254: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Line Context: Lines 1-1 from transcript
- Content: The first attempt, it fails.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1255: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E42
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Line Context: Lines 1-1 from transcript
- Content: You know what the issue is, so you try to fix it.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1256: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E43
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Line Context: Lines 1-1 from transcript
- Content: The second attempt, it fails again and you don't know what the issue is.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1257: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E49
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Line Context: Lines 1-1 from transcript
- Content: If for each question, you're having to go through each line of your YAML file and fix the indentation errors, you're not going to be able to make it through all questions.
- Multi-concept tags: Configuration, Troubleshooting, CKA-CKAD

### Evidence 1258: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And it looks like incoming and outgoing connections to this Pod is currently not working, so we have to troubleshoot why this is happening.
- Multi-concept tags: Pods, Troubleshooting, CKA-CKAD

### Evidence 1259: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E52
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's first confirm the issue.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1260: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: So this does confirm, in fact, there is some sort of connection issue, so we are unable to reach that specific pod using the service.
- Multi-concept tags: Pods, Services, Troubleshooting, CKA-CKAD

### Evidence 1261: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E66
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is most likely the issue.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1262: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E131
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And I realized we made one issue, so I'm gonna go back in to that file and we forgot to change the namespace, so we wanna make sure it runs in that new namespace.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1263: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E3
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: We have to inspect them and identify which pod is not in a ready state and then troubleshoot and fix that issue for the first part of the question.
- Multi-concept tags: Pods, Troubleshooting, CKA-CKAD

### Evidence 1264: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E4
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: And then for the second part, for that same pod that has this issue, we want to add a check to restart the container on the same pod if the command LS slash var slash WWW slash HTML slash file underscore check fails.
- Multi-concept tags: Pods, Configuration, Troubleshooting, CKA-CKAD

### Evidence 1265: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E10
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: To troubleshoot this, I'm gonna start off by doing kubectl describe pod.
- Multi-concept tags: Pods, Troubleshooting, CKA-CKAD, On-Prem

### Evidence 1266: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: It says the readiness probe failed.
- Multi-concept tags: Observability, Troubleshooting, CKA-CKAD

### Evidence 1267: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E13
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: So there's some sort of issue surrounding that, whether it's a misconfiguration on the probe itself or something else that's to be determined.
- Multi-concept tags: Observability, Troubleshooting, CKA-CKAD

### Evidence 1268: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E21
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's actually try changing that and see if that fixes the issue.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1269: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we changed the port, and while we're at it, let's go ahead and knock out this second task, which is, we want to add a check to restart the container on the same pod if this specific command fails.
- Multi-concept tags: Pods, Configuration, Troubleshooting, CKA-CKAD

### Evidence 1270: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E36
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: And let's do a kubectl get one one more time just to make sure that there's no issues.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1271: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E40
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: The image throw dash dice randomly returns a value between one and six, and the result of a six is considered a success and all others are a failure.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1272: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E43
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: And if the task is not completed within 20 seconds, the job should fail and pod should be terminated.
- Multi-concept tags: Pods, Troubleshooting, CKA-CKAD

### Evidence 1273: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E55
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: And for this last requirement here, if the task is not completed within 20 seconds, the job should fail and the pod should be terminated.
- Multi-concept tags: Pods, Troubleshooting, CKA-CKAD

### Evidence 1274: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E107
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: And so this is gonna be path type prefix the path, this one's going to be slash video.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1275: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E16
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: A replica set with the name of rs-d333393 is created, how are the pods are not coming up, identify and fix this issue, and ensure that the replica set has four in a ready state.
- Multi-concept tags: Pods, Troubleshooting, CKA-CKAD

### Evidence 1276: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E25
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: So, this is most likely what's causing this issue.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1277: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E47
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna just copy this, and under spec, let's add that in there, and let me fix the spacings.
- Multi-concept tags: Troubleshooting, CKA-CKAD

### Evidence 1278: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E80
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And we have to add a liveness probe to the container to restart if the command ls/bar/www/atm/probe fails.
- Multi-concept tags: Configuration, Observability, Troubleshooting, CKA-CKAD

### Evidence 1279: learn-kubernetes/01_Introduction/002_Accessing the Lab.extraction.md::E25
- Type: Troubleshooting
- Source: learn-kubernetes / 01_Introduction / 002_Accessing the Lab.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you run into issues with accessing labs, please write to support at support at code Cloud.com.
- Multi-concept tags: Troubleshooting

### Evidence 1280: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E16
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Line Context: Lines 1-1 from transcript
- Content: We had a lot of issues developing this application stack with all these different components.
- Multi-concept tags: Troubleshooting

### Evidence 1281: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E17
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Line Context: Lines 1-1 from transcript
- Content: First of all, their compatibility with the underlying OS was an issue.
- Multi-concept tags: Troubleshooting

### Evidence 1282: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E21
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Line Context: Lines 1-1 from transcript
- Content: We've had issues where one service requires one version of a dependent library, whereas another service requires another version.
- Multi-concept tags: Services, Troubleshooting

### Evidence 1283: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E24
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Line Context: Lines 1-1 from transcript
- Content: This compatibility matrix issue is usually referred to as the matrix from hell.
- Multi-concept tags: Troubleshooting

### Evidence 1284: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E31
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Line Context: Lines 1-1 from transcript
- Content: So I needed something that could help us with the compatibility issue, and something that will allow us to modify or change these components without affecting the other components, and even modify the underlying operating systems as required.
- Multi-concept tags: Troubleshooting

### Evidence 1285: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E98
- Type: Concept
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Line Context: Lines 1-1 from transcript
- Content: In case one of the instances were to fail, simply destroy that instance and launch a new one.
- Multi-concept tags: Troubleshooting

### Evidence 1286: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E109
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Line Context: Lines 1-1 from transcript
- Content: They do that by providing a set of instructions, such as information about how the host must be set up, what prerequisites are to be installed on the host, and how the dependencies are to be configured, etc. since the ops team did not really develop the application on their own, they struggled with setting it up when they hit an issue.
- Multi-concept tags: Troubleshooting

### Evidence 1287: learn-kubernetes/02_Kubernetes Overview/006_Container Orchestration.extraction.md::E19
- Type: Warning/Pitfall
- Source: learn-kubernetes / 02_Kubernetes Overview / 006_Container Orchestration.txt
- Line Context: Lines 1-1 from transcript
- Content: Your application is now highly available, as hardware failures do not bring your application down because you have multiple instances of your application running on different nodes.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 1288: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E8
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: But what if the node on which your application is running fails?
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 1289: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E11
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: This way, even if one node fails, you have your application still accessible from the other nodes.
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 1290: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E17
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: When a node fails, how do you move the workload of the failed node to another worker node?
- Multi-concept tags: Architecture, Troubleshooting

### Evidence 1291: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E52
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: And this tool is solely made for debugging container D and is not very user friendly as it only supports a limited set of features.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 1292: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E58
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: But as I mentioned, this tool is solely made for debugging container D and is not very user friendly and not to be used for running or managing containers on a production environment, so a better alternative recommended is the nerd control tool or nerd CTL tool.
- Multi-concept tags: Configuration, Troubleshooting, On-Prem

### Evidence 1293: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E83
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: Inspect and debug container runtime.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 1294: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E85
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: Unlike Docker or the node control utility this is again a debugging tool.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 1295: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E87
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: It's only to be used for some special debugging purposes.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 1296: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E92
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So because of those things, remember that the cry control utility is only used for debugging purposes and getting into containers and all of that.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 1297: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E104
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So while working with Kubernetes in the past, we used Docker commands a lot to troubleshoot containers and view logs, especially on the worker nodes.
- Multi-concept tags: Configuration, Architecture, Troubleshooting, On-Prem

### Evidence 1298: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E120
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So to summarize, we have the Ktor command line utility that comes with Containerd and works with Containerd, which is used for debugging purposes only and has a very limited set of features.
- Multi-concept tags: Configuration, Troubleshooting, On-Prem

### Evidence 1299: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E129
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: Again this is mainly for to be used for debugging purposes.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 1300: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E130
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the comparisons here you can see that CTR and CRI control are used mainly for debugging purposes, whereas the control is used for general purpose.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 1301: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E133
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So we used the Docker commands to troubleshoot.
- Multi-concept tags: Configuration, Troubleshooting, On-Prem

### Evidence 1302: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E135
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So remember to use the the CRI control command instead to troubleshoot.
- Multi-concept tags: Configuration, Troubleshooting, On-Prem

### Evidence 1303: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E11
- Type: Concept
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Line Context: Lines 1-1 from transcript
- Content: And you can just continue to work with it without spending time setting it up.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 1304: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E34
- Type: Concept
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Line Context: Lines 1-1 from transcript
- Content: Managers depending upon the type of distribution, the OS distribution that you are on, and the documentation associated with these are available here.
- Multi-concept tags: Troubleshooting, On-Prem

### Evidence 1305: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E59
- Type: Warning/Pitfall
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Line Context: Lines 1-1 from transcript
- Content: However, note that as you can see here in the documentation page, um, there's a warning that says it can result in security or data loss issues.
- Multi-concept tags: Security-RBAC, Troubleshooting, On-Prem

### Evidence 1306: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E118
- Type: Troubleshooting
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Line Context: Lines 1-1 from transcript
- Content: Uh, if you run into issues with the installation anytime, feel free to run this command and check the status.
- Multi-concept tags: Configuration, Troubleshooting, On-Prem

### Evidence 1307: learn-kubernetes/04_YAML Introduction/017_Introduction to YAML.extraction.md::E36
- Type: Troubleshooting
- Source: learn-kubernetes / 04_YAML Introduction / 017_Introduction to YAML.txt
- Line Context: Lines 1-1 from transcript
- Content: This will result in a syntax error, which will tell you that mapping values are not allowed here because calories already have a value set, which is 105.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1308: learn-kubernetes/04_YAML Introduction/018_Introduction to Coding Exercises.extraction.md::E22
- Type: Troubleshooting
- Source: learn-kubernetes / 04_YAML Introduction / 018_Introduction to Coding Exercises.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case I got an error because I typed in the spelling for Vegetable wrong.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1309: learn-kubernetes/04_YAML Introduction/018_Introduction to Coding Exercises.extraction.md::E26
- Type: Troubleshooting
- Source: learn-kubernetes / 04_YAML Introduction / 018_Introduction to Coding Exercises.txt
- Line Context: Lines 1-1 from transcript
- Content: So this way you can go over all exercises until they are complete and if you have any questions about any of these exercises or if you find any issues with any of these exercises feel free to reach out to me.
- Multi-concept tags: Configuration, Troubleshooting

### Evidence 1310: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/020_Pods with YAML.extraction.md::E11
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 020_Pods with YAML.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on what we are trying to create, we must use the right API version.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1311: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/020_Pods with YAML.extraction.md::E42
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 020_Pods with YAML.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on the object we are going to create.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1312: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/020_Pods with YAML.extraction.md::E56
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 020_Pods with YAML.txt
- Line Context: Lines 1-1 from transcript
- Content: Then start by adding values to those depending on the object you are going to create.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1313: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E6
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Line Context: Lines 1-1 from transcript
- Content: They are very basic and prone to errors.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1314: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E11
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Line Context: Lines 1-1 from transcript
- Content: And all of these come with support for YAML files, and they will help in highlighting errors in a YAML file and make making sure that you develop them right.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1315: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E12
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Line Context: Lines 1-1 from transcript
- Content: But they won't natively tell you if there are errors within the Kubernetes manifest files that you are developing.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1316: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E14
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Line Context: Lines 1-1 from transcript
- Content: Uh, so those, uh, tools that can first verify structure of your YAML file and the syntax, making sure that it works fine, and also, um, point out errors related to Kubernetes.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1317: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E29
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Line Context: Lines 1-1 from transcript
- Content: It should automatically list the right version, um, to download for you depending on your operating system.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1318: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E94
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Line Context: Lines 1-1 from transcript
- Content: Um, and you will notice that there is this error indicated, um, here below the name.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1319: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E96
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Line Context: Lines 1-1 from transcript
- Content: So as long as this is empty it will continue to show that error.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1320: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E98
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Line Context: Lines 1-1 from transcript
- Content: And as soon as I complete that you'll see that the error indicator is gone.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1321: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E123
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Line Context: Lines 1-1 from transcript
- Content: So if I make a mistake here, for example, if I add an image property and set it to say nginx again, it knows that there is an error because.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting, CKA-CKAD

### Evidence 1322: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E128
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Line Context: Lines 1-1 from transcript
- Content: So those are not validated and it won't give you an error if you used an image that's not available on Docker Registry.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1323: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E132
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Line Context: Lines 1-1 from transcript
- Content: Then it will throw an error.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1324: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E139
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Line Context: Lines 1-1 from transcript
- Content: So now, um, our code is clear and as you can see, there are no errors.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1325: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E82
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Line Context: Lines 1-1 from transcript
- Content: It's actually error or waiting.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1326: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E85
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, why do you think the container age index import is in an error or rating state?
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1327: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E88
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Line Context: Lines 1-1 from transcript
- Content: One of the section here under state you have the reason we call this error image pool.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1328: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E90
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Line Context: Lines 1-1 from transcript
- Content: Look at it below here in the event section, you can see the error.
- Multi-concept tags: Pods, Deployments, Configuration, Observability, Troubleshooting

### Evidence 1329: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E91
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Line Context: Lines 1-1 from transcript
- Content: Just basically this one it says fail to pull image agent x.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1330: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E95
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Line Context: Lines 1-1 from transcript
- Content: And that's basically the reason that is failing.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1331: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E146
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Line Context: Lines 1-1 from transcript
- Content: So it's graded and it's in an error image pool state because we have the wrong image name.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1332: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E151
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Line Context: Lines 1-1 from transcript
- Content: And the last question for this lab is to change the image on this pod, to read this, to fix that error that we purposefully create, and to get the pod in a running state.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1333: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E165
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Line Context: Lines 1-1 from transcript
- Content: Now we'll talk about this error message later when we talk about imperative commands and the declarative way that we apply.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1334: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E6
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1335: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E8
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: That way, if one fails, we still have our application running on the other one.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1336: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E12
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Even if you have a single pod, replication controller can help by automatically bringing up a new pod when the existing one fails.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1337: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E71
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: If you get this wrong, you are likely to get an error that looks like this.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1338: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E99
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The role of the replica set is to monitor the pods and if any of them were to fail, deploy new ones.
- Multi-concept tags: Pods, Deployments, Security-RBAC, Observability, Troubleshooting

### Evidence 1339: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E117
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Because in case one of the pods were to fail in the future, the replica set needs to create a new one to maintain the desired number of pods.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1340: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E132
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The cube control create command as we know, is used to create a replica, set or basically any object in Kubernetes depending on the file we are providing as input.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1341: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E34
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So in order to fix this, um, one easy way to do it is to select the, the whole section that we just pasted, except for the the first line and then press tab twice and then or until, um, you know, um, it fixes, uh, the, the, the indentation.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1342: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E41
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So for now, we will just stick to the manual way of fixing it.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1343: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E42
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Um, so, uh, now the the format is corrected and there are no more errors in the file.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1344: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E96
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is, um, a handy tool and command if you would like to inspect, um, what happened to a replica set in case, you know, you're troubleshooting something or you're just looking for more information on what's happening with the replica set, um, etc..
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1345: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E40
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Of course, it's obvious, but I'm just I just want to show you, if you're not sure what the error is, then you've got to look at one of these parts in a bit more detail.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1346: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E44
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: And you see, it's basically because it's failed to pull the image visible.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1347: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E75
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So there's one here and there's an issue with the file, so we have to try and fix it.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1348: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E81
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So the error is that it's unable to recognize this file.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1349: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E97
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go ahead and fix that.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1350: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E104
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So next task is to fix the issue in the second file and create the replica set.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1351: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E121
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So basically the issue here is that you have the labels specified here called tier front end, and then the label for the part that the replicas will create is engine X.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1352: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E141
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Now fix the original replica set to use the correct Xbox image.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1353: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E145
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So we've got to fix that.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1354: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E168
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go back and look at parts and you see they're all still in the error state, so we're just going to go through and delete them.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1355: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/030_Deployments.extraction.md::E10
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 030_Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: Suppose one of the upgrades you performed resulted in an unexpected error, and you're asked to undo the recent change You would like to be able to roll back the changes that were recently carried out.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1356: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E61
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: So there is some kind of error.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1357: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E66
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: Right, but the issue is that it's case sensitive, right?
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1358: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E70
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: So the reason we have these kind of exercises is just to help you understand and learn how to, you know, know what the issue is when you come across these errors.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1359: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E71
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: So oftentimes you you'll face these kind of errors because of these kind of typos or, you know, what's not being spelled correctly or not in the right case.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1360: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E73
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: What those mean when you when you see these kind of errors.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1361: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E79
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: So just fix that.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1362: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E85
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so let's pretend that there was an issue with the last change.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1363: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E87
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Line Context: Lines 1-1 from transcript
- Content: When I use the 1.12 Perl image and users are reporting issues.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1364: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E99
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Line Context: Lines 1-1 from transcript
- Content: Now let's take a look at another scenario where we have an error.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1365: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E100
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Line Context: Lines 1-1 from transcript
- Content: So we will simulate an error by providing the name of an nginx image that doesn't really exist.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1366: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E102
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Line Context: Lines 1-1 from transcript
- Content: We'll call it 1.5 error.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1367: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E103
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Line Context: Lines 1-1 from transcript
- Content: We know that this image does not exist, but our intention is to create it to simulate an error in deployment.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1368: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E126
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Line Context: Lines 1-1 from transcript
- Content: I now know that there is an error with the image that I'm trying to download, so I'm going to undo that recent change by running the cube control rollout undo command.
- Multi-concept tags: Pods, Deployments, Configuration, Troubleshooting

### Evidence 1369: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/037_Solution - Rolling Updates and Rollbacks.extraction.md::E143
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 037_Solution - Rolling Updates and Rollbacks.txt
- Line Context: Lines 1-1 from transcript
- Content: And when we run this this time, unlike the previous time, we see a lot of failures.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1370: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/037_Solution - Rolling Updates and Rollbacks.extraction.md::E144
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 037_Solution - Rolling Updates and Rollbacks.txt
- Line Context: Lines 1-1 from transcript
- Content: So some of the requests are failing.
- Multi-concept tags: Pods, Deployments, Troubleshooting

### Evidence 1371: learn-kubernetes/06_Networking in Kubernetes/038_Basics of Networking in Kubernetes.extraction.md::E33
- Type: Troubleshooting
- Source: learn-kubernetes / 06_Networking in Kubernetes / 038_Basics of Networking in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: When a Kubernetes cluster is setup, Kubernetes does not automatically set up any kind of networking to handle these issues.
- Multi-concept tags: Networking, Architecture, Troubleshooting

### Evidence 1372: learn-kubernetes/06_Networking in Kubernetes/038_Basics of Networking in Kubernetes.extraction.md::E40
- Type: Implementation Step
- Source: learn-kubernetes / 06_Networking in Kubernetes / 038_Basics of Networking in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on the platform you're deploying your Kubernetes cluster on, you may use one of these solutions.
- Multi-concept tags: Networking, Architecture, Troubleshooting, Platform Engineering

### Evidence 1373: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E49
- Type: Implementation Step
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Line Context: Lines 1-1 from transcript
- Content: Now when we create a service for a set of parts, now we might think that depending on the label and the selector specified, the service is going to direct traffic to those parts.
- Multi-concept tags: Services, Scheduling, Troubleshooting

### Evidence 1374: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E85
- Type: Troubleshooting
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Line Context: Lines 1-1 from transcript
- Content: We see that it gives us a bad gateway error.
- Multi-concept tags: Services, Troubleshooting

### Evidence 1375: learn-kubernetes/08_Microservices Architecture/046_Deploying Voting App on Kubernetes.extraction.md::E37
- Type: Troubleshooting
- Source: learn-kubernetes / 08_Microservices Architecture / 046_Deploying Voting App on Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: And you may also run into issues when you try to scale your applications in the future.
- Multi-concept tags: Services, Architecture, Troubleshooting

### Evidence 1376: learn-kubernetes/08_Microservices Architecture/048_Demo - Deploying Voting App on Kubernetes With Deployments.extraction.md::E76
- Type: Troubleshooting
- Source: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: And we'll fix the spacing.
- Multi-concept tags: Deployments, Services, Architecture, Troubleshooting

### Evidence 1377: learn-kubernetes/08_Microservices Architecture/048_Demo - Deploying Voting App on Kubernetes With Deployments.extraction.md::E120
- Type: Troubleshooting
- Source: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: And hopefully there's no errors.
- Multi-concept tags: Deployments, Services, Architecture, Troubleshooting

### Evidence 1378: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E68
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And we can also see that our load balancers, um, do not have an external IP yet, so they are still in a pending state.
- Multi-concept tags: Troubleshooting, Cross-Cloud

### Evidence 1379: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E77
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And the result service is pending.
- Multi-concept tags: Services, Troubleshooting, Cross-Cloud

### Evidence 1380: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E25
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you're running, you know, like one of the M1, M2, M3, M4 chips, there have been certain issues with trying to get VirtualBox up and running on Mac.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 1381: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E27
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Line Context: Lines 1-1 from transcript
- Content: You'll see that when we get to the Mac section, we're going to actually be using a different tool called Multipass just to help avoid any issues with running VirtualBox on Apple Silicon.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 1382: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E157
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Line Context: Lines 1-1 from transcript
- Content: You want to make sure that there's no errors.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 1383: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E158
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Line Context: Lines 1-1 from transcript
- Content: If there's some sort of error just go ahead and run a vagrant.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 1384: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E162
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Line Context: Lines 1-1 from transcript
- Content: And if there's some sort of error, the logs are usually fairly helpful.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 1385: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E163
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Line Context: Lines 1-1 from transcript
- Content: And you can kind of debug by taking a look at the error messages that it's outputting.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 1386: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E16
- Type: Concept
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Line Context: Lines 1-1 from transcript
- Content: Uh, depending on what operating system we're using, this video is focusing on macOS.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 1387: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E118
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's why we get an error.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 1388: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E157
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Line Context: Lines 1-1 from transcript
- Content: Um that's going to be in like troubleshooting scenarios where the kube API server is down and you want to be able to check if a container is running you.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 1389: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E161
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Line Context: Lines 1-1 from transcript
- Content: For those specific troubleshooting scenarios.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 1390: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E164
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the last step here is very specific to our environment, and I want to explain the issue that we're going.
- Multi-concept tags: Configuration, Architecture, Troubleshooting, On-Prem

### Evidence 1391: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E324
- Type: Implementation Step
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Line Context: Lines 1-1 from transcript
- Content: There's different steps depending on if it's Linux or Windows.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 1392: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E371
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Line Context: Lines 1-1 from transcript
- Content: And this is to help avoid certain issues that you may.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem

### Evidence 1393: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E377
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Line Context: Lines 1-1 from transcript
- Content: And it's going to help avoid any potential issues.
- Multi-concept tags: Architecture, Troubleshooting, On-Prem
