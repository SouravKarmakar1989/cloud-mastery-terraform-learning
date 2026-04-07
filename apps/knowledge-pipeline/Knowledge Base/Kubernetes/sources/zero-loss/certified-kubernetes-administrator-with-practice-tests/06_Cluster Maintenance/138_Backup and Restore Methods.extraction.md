# Extraction: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 138_Backup and Restore Methods

---

## Entry 1
Type: Concept  

Content:
In this lecture we look at the various backup and restore methodologies.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Best Practice  

Content:
Let's start by looking at what you should consider backing up in a Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
So far in this course, we have deployed a number of different applications on our Kubernetes cluster using deployment pods and service definition files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Architecture  

Content:
We know that the etcd cluster is where all cluster related information is stored.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
And if your applications are configured with persistent storage, then that is another candidate for backups.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
With respect to resources that we created in the cluster, at times we use the imperative way of creating an object by executing a command, such as while creating a namespace or a secret or configmap, or at times for exposing applications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
And at times we used the declarative approach by first creating a definition file and then running the kube control apply command on that file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
This is the preferred approach if you want to save your configuration, because now you have all the objects required for a single application in the form of object definition files in a single folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
This can easily be reused at a later time or shared with others.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Of course, you must have a copy of these files saved at all times.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
A good practice is to store these on source code repositories.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
That way it can be maintained by a team.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Best Practice  

Content:
The source code repository should be configured with the right backup solutions with managed or public source code repositories like GitHub.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Warning/Pitfall  

Content:
You don't have to worry about this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
With that, even when you lose your entire cluster, you can redeploy your application on the cluster by simply applying these configuration files on them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
While the declarative approach is the preferred approach, it is not necessary that all of your team members stick to those standards.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
What if someone created an object the imperative way without documenting that information anywhere?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Architecture  

Content:
So a better approach to backing up resource configuration is to query the cube API server, query the cube API server using the cube control, or by accessing the API server directly, and save all resource configurations for all objects created on the cluster as a copy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Exam Tip  

Content:
For example, one of the commands that can be used in a backup script is to get all pods and deployments and services in all namespaces using the kube control utilities.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
Get all command and extract the output in YAML format, then save that file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
And that's just for a few resource group.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
There are many other resource groups that must be considered.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Warning/Pitfall  

Content:
Of course you don't have to develop that solutions yourself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
There are tools like Arc or now called Valero by Heptio that can do this for you.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
It can help in taking backups of your Kubernetes cluster using the Kubernetes API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Architecture  

Content:
Let us now move on to etcd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Architecture  

Content:
The etcd cluster stores information about the state of our cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
So information about the cluster itself, the nodes and every other resources created within the cluster are stored here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Architecture  

Content:
So instead of backing up resource as before, you may choose to backup the etcd server itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Architecture  

Content:
As we have seen, the etcd cluster is hosted on the master nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Architecture  

Content:
While configuring etcd, we specified a location where all the data would be stored.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
The data directory that is, the directory that can be configured to be backed up by your backup tool.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Architecture  

Content:
Etcd also comes with a built in snapshot solution.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Architecture  

Content:
You can take a snapshot of the etcd database by using the etcd control utilities.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Snapshot save command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Give the snapshot a name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
Snapshot A snapshot file is created by the name in the current directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
If you want it to be created in another location, specify the full path.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
You can view the status of the backup using the snapshot status command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
To restore the cluster from this backup at a later point in time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Architecture  

Content:
First stop the kube API server service, as the restore process will require you to restart the etcd cluster, and the API server depends on it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Architecture  

Content:
Then run the etcd controls snapshot restore command with the path set to the path of the backup file, which is the snapshot db file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Architecture  

Content:
When etcd restores from a backup, it initializes a new cluster configuration and configures the members of etcd as new members to a new cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
This is to prevent a new member from accidentally joining an existing cluster on running this command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Exam Tip  

Content:
A new data directory is created in this example at location var lib etcd from backup.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Architecture  

Content:
We then configure the etcd configuration file to use the new data directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Architecture  

Content:
Then reload the service daemon and restart etcd service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Architecture  

Content:
Finally, start the kube API server service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Best Practice  

Content:
Your cluster should now be back in the original state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Architecture  

Content:
A quick note before I let you go with all the etcd commands, remember to specify the certificate files for authentication.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Architecture  

Content:
Specify the endpoint to the etcd cluster and the certificate, the server certificate and the key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Architecture  

Content:
So we have seen two options a backup using etcd and backup by querying the kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
Now both of these have their pros and cons.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Architecture  

Content:
Well if you're using a managed Kubernetes environment, then at times you may not even have access to the etcd cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Architecture  

Content:
In that case, backup by querying the kube API server is probably the better way.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
Well, that's it for this demo.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 57
Type: Architecture  

Content:
Head over to the practice test and practice backing up etcd in a cluster and then restoring from backups.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 138_Backup and Restore Methods
- File: 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
