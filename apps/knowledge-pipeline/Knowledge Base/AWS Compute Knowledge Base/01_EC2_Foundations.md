# 01_EC2_Foundations.md

## Scope
- Topic: EC2 foundations, instances, metadata, access patterns, and runtime basics
- Files processed: 52
- Extracted non-empty transcript lines: 3393
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Compute Knowledge Base
- Cross-domain referrals: 0

## Real Material - Architect Learning Build (Compute: EC2 Foundations)

This section is the study-first architecture guide for ec2 foundations, instances, metadata, access patterns, and runtime basics.

### Phase 1 - Foundations

#### Module: EC2 Foundations Mental Model
- Use ec2 foundations decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: EC2 Foundations Mental Model
- Primary transcript files:
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt
- outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/036_Security Groups Hands On.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/036_Security Groups Hands On.txt
- outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/038_How to SSH using Linux or Mac.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/038_How to SSH using Linux or Mac.txt
- outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/040_How to SSH using Windows 10.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/040_How to SSH using Windows 10.txt
- outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/042_EC2 Instance Connect.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/042_EC2 Instance Connect.txt
- outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/044_EC2.txt
- Top concept clusters from transcript metadata:
- Compute Platform Design
- Operational Guardrails
- Deployment Automation
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 52
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 3393
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- Well, because when we want to actually perform an SSH into our EC2 instance, what's going to happen is that the SSH protocol is going to present the private key to our EC2 instance, which is going to match it with the public key it has in store and say, "Yes, the user is authorized to perform SSH on me." So this is the basics of EC2 Key Pairs and SSH.
- So if you see a timeout when trying to establish any kind of connection into your EC2 instances, for example, if you try to SSH into it, but there's a timeout, or if you try to do an HTTP query, but there's a timeout, or if you try to do anything with it and there is a timeout, this is 100% the cause of an EC2 security group.
- Then when you create an EC2 instance and you select the associated key, what's actually going to happen is that on the root EBS volume of the EC2 instance, the public key is going to be stored as a copy in a file called authorized_keys in the SSH directory.
- So as you can see, now I have done the SSH into my instance and now it says ec2-use at this IP, which means that now all the commands are issued are going to be issued directly from the Amazon Linux 2 AMI EC2 instance that I've just launched from before.
- Okay so, by pressing tab, I get the autocomplete of this, so I do SSH minus I or you can just type this, EC2Tutorial.pem and then when to type EC2 minus user at and at, well, the public IP of my EC2 instance which is right here, so I copy and paste it.
- But in this course, if I say use SSH, you have either the option to use your own terminal mssh or to use for example, party, or to use the SSH command on windows or to use, regardless of you here on windows, Linux, or Mac, the EC2 Instance Connect.
- The action of using an EC2 instance recovery is that you will remain, obviously some things will be lost but you will keep the same private IP, the same public IP, the same elastic IP, the same metadata, and the same placement group.
- And then we can just detach okay the volume, reattach it onto the previous EC2 instance, which will now have the correct public key written into the authorized key files, and then restart the instance in SSH and we're good to go.
- So then we start the instance, and then what's going to happen is that by looking up the EC2 user data, then the added public key is going to be in that specific file, and then we can simply SSH into the EC2 instance.
- Anyways so here, this is how the EC2 instance obtains the credentials that allows it to use its own IAM role because the IAM role provides credentials through the EC2 instance metadata service.
- So we're going to launch the EC2 Instance Connect Service to go and actually be SSH into our EC2 instance, and then we're going to actually write the new key in the SSH authorized keys.
- You need to remove all the public keys stored in each SSH authorized_keys file on EC2 instances so that no one can use the private key to actually SSH into your EC2 instances.

##### Polished Architect Notes
- Transcript signals that well, because when we want to actually perform an SSH into our EC2 instance, what's going to happen is that the SSH protocol is going to present the private key to our EC2 instance, which is going to match it with the public key it has in store and say, "Yes, the user is authorized to perform SSH on me." So this is the basics of EC2 Key Pairs and SSH.
- Transcript signals that so if you see a timeout when trying to establish any kind of connection into your EC2 instances, for example, if you try to SSH into it, but there's a timeout, or if you try to do an HTTP query, but there's a timeout, or if you try to do anything with it and there is a timeout, this is 100% the cause of an EC2 security group.
- Transcript signals that then when you create an EC2 instance and you select the associated key, what's actually going to happen is that on the root EBS volume of the EC2 instance, the public key is going to be stored as a copy in a file called authorized_keys in the SSH directory.
- Transcript signals that so as you can see, now I have done the SSH into my instance and now it says ec2-use at this IP, which means that now all the commands are issued are going to be issued directly from the Amazon Linux 2 AMI EC2 instance that I've just launched from before.
- Transcript signals that okay so, by pressing tab, I get the autocomplete of this, so I do SSH minus I or you can just type this, EC2Tutorial.pem and then when to type EC2 minus user at and at, well, the public IP of my EC2 instance which is right here, so I copy and paste it.
- Transcript signals that but in this course, if I say use SSH, you have either the option to use your own terminal mssh or to use for example, party, or to use the SSH command on windows or to use, regardless of you here on windows, Linux, or Mac, the EC2 Instance Connect.
- Transcript signals that the action of using an EC2 instance recovery is that you will remain, obviously some things will be lost but you will keep the same private IP, the same public IP, the same elastic IP, the same metadata, and the same placement group.
- Transcript signals that and then we can just detach okay the volume, reattach it onto the previous EC2 instance, which will now have the correct public key written into the authorized key files, and then restart the instance in SSH and we're good to go.
- Transcript signals that so then we start the instance, and then what's going to happen is that by looking up the EC2 user data, then the added public key is going to be in that specific file, and then we can simply SSH into the EC2 instance.
- Transcript signals that anyways so here, this is how the EC2 instance obtains the credentials that allows it to use its own IAM role because the IAM role provides credentials through the EC2 instance metadata service.
- Transcript signals that so we're going to launch the EC2 Instance Connect Service to go and actually be SSH into our EC2 instance, and then we're going to actually write the new key in the SSH authorized keys.
- Transcript signals that you need to remove all the public keys stored in each SSH authorized_keys file on EC2 instances so that no one can use the private key to actually SSH into your EC2 instances.

##### Architect Synthesis (Transcript-Derived)
- Treat Compute Platform Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Guardrails as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Deployment Automation as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: well, because when we want to actually perform an SSH into our EC2 instance, what's going to happen is that the SSH protocol is going to present the private key to our EC2 instance, which is going to match it with the public key it has in store and say, "Yes, the user is authorized to perform SSH on me." So this is the basics of EC2 Key Pairs and SSH.
- Design implication: so if you see a timeout when trying to establish any kind of connection into your EC2 instances, for example, if you try to SSH into it, but there's a timeout, or if you try to do an HTTP query, but there's a timeout, or if you try to do anything with it and there is a timeout, this is 100% the cause of an EC2 security group.
- Design implication: then when you create an EC2 instance and you select the associated key, what's actually going to happen is that on the root EBS volume of the EC2 instance, the public key is going to be stored as a copy in a file called authorized_keys in the SSH directory.
- Design implication: so as you can see, now I have done the SSH into my instance and now it says ec2-use at this IP, which means that now all the commands are issued are going to be issued directly from the Amazon Linux 2 AMI EC2 instance that I've just launched from before.
- Design implication: okay so, by pressing tab, I get the autocomplete of this, so I do SSH minus I or you can just type this, EC2Tutorial.pem and then when to type EC2 minus user at and at, well, the public IP of my EC2 instance which is right here, so I copy and paste it.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/065_Comparison of Solutions Architecture.txt
- outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/038_How to SSH using Linux or Mac.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/038_How to SSH using Linux or Mac.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/059_Lost EC2 Key Pair - Linux.txt
- outputs/aws-certified-developer-associate-dva-c01/12_AWS CLI, SDK, IAM Roles & Policies/127_AWS EC2 Instance Metadata.txt
- outputs/AWS Speciality/Security/09_Other Services/269_[CCP_SOA] EC2 Image Builder.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt
- outputs/AWS Speciality/Security/09_Other Services/270_[SOA] EC2 Image Builder Hands On.txt
- outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/036_Security Groups Hands On.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/036_Security Groups Hands On.txt
- Top concept clusters from transcript metadata:
- Compute Platform Design
- Compute Operational Context
- Operational Guardrails
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 52
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 3393
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- The time to scale though is pretty quite slow because in case you add EC2 instances you need to wait for the EC2 instance to start up, then there is the EC2 user data bootstrap script and somehow if you use an AMI that has all these things clear already, it can help speed up the time to scale.
- So as you can see, now I have done the SSH into my instance and now it says ec2-use at this IP, which means that now all the commands are issued are going to be issued directly from the Amazon Linux 2 AMI EC2 instance that I've just launched from before.
- So then we start the instance, and then what's going to happen is that by looking up the EC2 user data, then the added public key is going to be in that specific file, and then we can simply SSH into the EC2 instance.
- So we are telling the EC2 instance that the next time it starts, it looks up the EC2 user data and actually creates a new username and adds an SSH authorized key.
- So the reason we do ssh ec2-user is because the Amazon Linux 2 AMI has one user already set up for us and that user is named ec2-user.
- So metadata means information about the instance and user data that we've seen before is the launch script of the EC2 instance.
- So this URL allows us to access both the metadata and the user data. but in this lecture we're looking at the metadata service.
- And if you notice what I've done in this EC2 user data, I've added a name and I've added an SSH authorized keys in there.
- Well, that means that if you create an EC2 instance during this process and EC2 Image Builder will create these EC2 instances, then you're going to pay for these EC2 instances and when the AMI is created and distributed, you're going to pay for the storage of that AMI wherever it has been created and wherever it has been distributed, but that should make sense, right?
- Well, because when we want to actually perform an SSH into our EC2 instance, what's going to happen is that the SSH protocol is going to present the private key to our EC2 instance, which is going to match it with the public key it has in store and say, "Yes, the user is authorized to perform SSH on me." So this is the basics of EC2 Key Pairs and SSH.
- So on top of it, if you launch an AMI and that AMI has been built with an old public key and then you select a new public key to launch this AMI with, what's going to happen is that this new EC2 instance is going to have both the public key that was shipped with the AMI and the new public key that is shipping with the Amazon EC2 service.
- But you could create a new distribution setting, and in here you can set up region 1, but also set up region 2, and region 3, for example, if you wanted to distribute your AMI to different regions automatically, which is really, really handy, but for this hands-on, we'll just use a service defaults, and have the AMI in one region.

##### Polished Architect Notes
- Transcript signals that the time to scale though is pretty quite slow because in case you add EC2 instances you need to wait for the EC2 instance to start up, then there is the EC2 user data bootstrap script and somehow if you use an AMI that has all these things clear already, it can help speed up the time to scale.
- Transcript signals that so as you can see, now I have done the SSH into my instance and now it says ec2-use at this IP, which means that now all the commands are issued are going to be issued directly from the Amazon Linux 2 AMI EC2 instance that I've just launched from before.
- Transcript signals that so then we start the instance, and then what's going to happen is that by looking up the EC2 user data, then the added public key is going to be in that specific file, and then we can simply SSH into the EC2 instance.
- Transcript signals that so we are telling the EC2 instance that the next time it starts, it looks up the EC2 user data and actually creates a new username and adds an SSH authorized key.
- Transcript signals that so the reason we do ssh ec2-user is because the Amazon Linux 2 AMI has one user already set up for us and that user is named ec2-user.
- Transcript signals that so metadata means information about the instance and user data that we've seen before is the launch script of the EC2 instance.
- Transcript signals that so this URL allows us to access both the metadata and the user data. but in this lecture we're looking at the metadata service.
- Transcript signals that and if you notice what I've done in this EC2 user data, I've added a name and I've added an SSH authorized keys in there.
- Transcript signals that well, that means that if you create an EC2 instance during this process and EC2 Image Builder will create these EC2 instances, then you're going to pay for these EC2 instances and when the AMI is created and distributed, you're going to pay for the storage of that AMI wherever it has been created and wherever it has been distributed, but that should make sense, right?
- Transcript signals that well, because when we want to actually perform an SSH into our EC2 instance, what's going to happen is that the SSH protocol is going to present the private key to our EC2 instance, which is going to match it with the public key it has in store and say, "Yes, the user is authorized to perform SSH on me." So this is the basics of EC2 Key Pairs and SSH.
- Transcript signals that so on top of it, if you launch an AMI and that AMI has been built with an old public key and then you select a new public key to launch this AMI with, what's going to happen is that this new EC2 instance is going to have both the public key that was shipped with the AMI and the new public key that is shipping with the Amazon EC2 service.
- Transcript signals that but you could create a new distribution setting, and in here you can set up region 1, but also set up region 2, and region 3, for example, if you wanted to distribute your AMI to different regions automatically, which is really, really handy, but for this hands-on, we'll just use a service defaults, and have the AMI in one region.

##### Architect Synthesis (Transcript-Derived)
- Treat Compute Platform Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Compute Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Guardrails as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: the time to scale though is pretty quite slow because in case you add EC2 instances you need to wait for the EC2 instance to start up, then there is the EC2 user data bootstrap script and somehow if you use an AMI that has all these things clear already, it can help speed up the time to scale.
- Design implication: so as you can see, now I have done the SSH into my instance and now it says ec2-use at this IP, which means that now all the commands are issued are going to be issued directly from the Amazon Linux 2 AMI EC2 instance that I've just launched from before.
- Design implication: so then we start the instance, and then what's going to happen is that by looking up the EC2 user data, then the added public key is going to be in that specific file, and then we can simply SSH into the EC2 instance.
- Design implication: so we are telling the EC2 instance that the next time it starts, it looks up the EC2 user data and actually creates a new username and adds an SSH authorized key.
- Design implication: so the reason we do ssh ec2-user is because the Amazon Linux 2 AMI has one user already set up for us and that user is named ec2-user.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS Speciality/Security/09_Other Services/269_[CCP_SOA] EC2 Image Builder.txt
- outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/036_Security Groups Hands On.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/036_Security Groups Hands On.txt
- outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/065_Comparison of Solutions Architecture.txt
- outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/038_How to SSH using Linux or Mac.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/038_How to SSH using Linux or Mac.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/059_Lost EC2 Key Pair - Linux.txt
- outputs/AWS Speciality/Security/09_Other Services/270_[SOA] EC2 Image Builder Hands On.txt
- outputs/aws-certified-developer-associate-dva-c01/12_AWS CLI, SDK, IAM Roles & Policies/128_AWS EC2 Instance Metadata - Hands On.txt
- outputs/aws-certified-developer-associate-dva-c01/12_AWS CLI, SDK, IAM Roles & Policies/127_AWS EC2 Instance Metadata.txt
- Top concept clusters from transcript metadata:
- Compute Platform Design
- Operational Guardrails
- Container Runtime Operations
- Deployment Automation
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 52
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 3393
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- Well, that means that if you create an EC2 instance during this process and EC2 Image Builder will create these EC2 instances, then you're going to pay for these EC2 instances and when the AMI is created and distributed, you're going to pay for the storage of that AMI wherever it has been created and wherever it has been distributed, but that should make sense, right?
- So if you see a timeout when trying to establish any kind of connection into your EC2 instances, for example, if you try to SSH into it, but there's a timeout, or if you try to do an HTTP query, but there's a timeout, or if you try to do anything with it and there is a timeout, this is 100% the cause of an EC2 security group.
- The time to scale though is pretty quite slow because in case you add EC2 instances you need to wait for the EC2 instance to start up, then there is the EC2 user data bootstrap script and somehow if you use an AMI that has all these things clear already, it can help speed up the time to scale.
- So as you can see, now I have done the SSH into my instance and now it says ec2-use at this IP, which means that now all the commands are issued are going to be issued directly from the Amazon Linux 2 AMI EC2 instance that I've just launched from before.
- So then we start the instance, and then what's going to happen is that by looking up the EC2 user data, then the added public key is going to be in that specific file, and then we can simply SSH into the EC2 instance.
- So if I go and launch an instance, so I will call this one, Test from AMI, and I will choose my AMIs, and I will choose the demo recipe that I just created using the EC2 Image Builder service.
- So we are telling the EC2 instance that the next time it starts, it looks up the EC2 user data and actually creates a new username and adds an SSH authorized key.
- And here we have two options, we can create either an AMI out of the EC2 Image Builder service, or a Docker image, but for this instance, we'll use an AMI.
- So EC2 Image Builder will automatically create a test EC2 instance from that AMI and going to run a bunch of tests that you are defining in advance.
- And as we can see, so it's a long URL, we had slash metadata, slash identity credential, slash EC2 slash security credential slash EC2 instance.
- That means that you're gonna be able with EC2 Image Builder to automate the creation, maintain, validate and test AMIs for EC2 instances.
- So metadata means information about the instance and user data that we've seen before is the launch script of the EC2 instance.

##### Polished Architect Notes
- Transcript signals that well, that means that if you create an EC2 instance during this process and EC2 Image Builder will create these EC2 instances, then you're going to pay for these EC2 instances and when the AMI is created and distributed, you're going to pay for the storage of that AMI wherever it has been created and wherever it has been distributed, but that should make sense, right?
- Transcript signals that so if you see a timeout when trying to establish any kind of connection into your EC2 instances, for example, if you try to SSH into it, but there's a timeout, or if you try to do an HTTP query, but there's a timeout, or if you try to do anything with it and there is a timeout, this is 100% the cause of an EC2 security group.
- Transcript signals that the time to scale though is pretty quite slow because in case you add EC2 instances you need to wait for the EC2 instance to start up, then there is the EC2 user data bootstrap script and somehow if you use an AMI that has all these things clear already, it can help speed up the time to scale.
- Transcript signals that so as you can see, now I have done the SSH into my instance and now it says ec2-use at this IP, which means that now all the commands are issued are going to be issued directly from the Amazon Linux 2 AMI EC2 instance that I've just launched from before.
- Transcript signals that so then we start the instance, and then what's going to happen is that by looking up the EC2 user data, then the added public key is going to be in that specific file, and then we can simply SSH into the EC2 instance.
- Transcript signals that so if I go and launch an instance, so I will call this one, Test from AMI, and I will choose my AMIs, and I will choose the demo recipe that I just created using the EC2 Image Builder service.
- Transcript signals that so we are telling the EC2 instance that the next time it starts, it looks up the EC2 user data and actually creates a new username and adds an SSH authorized key.
- Transcript signals that and here we have two options, we can create either an AMI out of the EC2 Image Builder service, or a Docker image, but for this instance, we'll use an AMI.
- Transcript signals that so EC2 Image Builder will automatically create a test EC2 instance from that AMI and going to run a bunch of tests that you are defining in advance.
- Transcript signals that and as we can see, so it's a long URL, we had slash metadata, slash identity credential, slash EC2 slash security credential slash EC2 instance.
- Transcript signals that that means that you're gonna be able with EC2 Image Builder to automate the creation, maintain, validate and test AMIs for EC2 instances.
- Transcript signals that so metadata means information about the instance and user data that we've seen before is the launch script of the EC2 instance.

##### Architect Synthesis (Transcript-Derived)
- Treat Compute Platform Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Guardrails as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Container Runtime Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Deployment Automation as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: well, that means that if you create an EC2 instance during this process and EC2 Image Builder will create these EC2 instances, then you're going to pay for these EC2 instances and when the AMI is created and distributed, you're going to pay for the storage of that AMI wherever it has been created and wherever it has been distributed, but that should make sense, right?
- Design implication: so if you see a timeout when trying to establish any kind of connection into your EC2 instances, for example, if you try to SSH into it, but there's a timeout, or if you try to do an HTTP query, but there's a timeout, or if you try to do anything with it and there is a timeout, this is 100% the cause of an EC2 security group.
- Design implication: the time to scale though is pretty quite slow because in case you add EC2 instances you need to wait for the EC2 instance to start up, then there is the EC2 user data bootstrap script and somehow if you use an AMI that has all these things clear already, it can help speed up the time to scale.
- Design implication: so as you can see, now I have done the SSH into my instance and now it says ec2-use at this IP, which means that now all the commands are issued are going to be issued directly from the Amazon Linux 2 AMI EC2 instance that I've just launched from before.
- Design implication: so then we start the instance, and then what's going to happen is that by looking up the EC2 user data, then the added public key is going to be in that specific file, and then we can simply SSH into the EC2 instance.

### Phase 2 - Core Services
- Amazon EC2 should be understood in terms of request path, control plane, and operational boundary.
- AWS Config should be understood in terms of request path, control plane, and operational boundary.
- AWS SAM should be understood in terms of request path, control plane, and operational boundary.
- Amazon EBS should be understood in terms of request path, control plane, and operational boundary.
- Elastic Load Balancing should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Compute Operational Context becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Compute Platform Design becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Container Runtime Operations becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Deployment Automation becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Elasticity and Availability becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design ec2 foundations with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when ec2 foundations decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: Then when you create an EC2 instance and you select the associated key, what's actually going to happen is that on the root EBS volume of the EC2 instance, the public key is going to be stored as a copy in a file called authorized_keys in the SSH directory.
- Signal 2: So we're going to launch the EC2 Instance Connect Service to go and actually be SSH into our EC2 instance, and then we're going to actually write the new key in the SSH authorized keys.
- Signal 3: Transcript signals that then when you create an EC2 instance and you select the associated key, what's actually going to happen is that on the root EBS volume of the EC2 instance, the public key is going to be stored as a copy in a file called authorized_keys in the SSH directory.
- Signal 4: Transcript signals that so we're going to launch the EC2 Instance Connect Service to go and actually be SSH into our EC2 instance, and then we're going to actually write the new key in the SSH authorized keys.
- Signal 5: Design implication: then when you create an EC2 instance and you select the associated key, what's actually going to happen is that on the root EBS volume of the EC2 instance, the public key is going to be stored as a copy in a file called authorized_keys in the SSH directory.
- Signal 6: So metadata means information about the instance and user data that we've seen before is the launch script of the EC2 instance.
- Signal 7: Well, that means that if you create an EC2 instance during this process and EC2 Image Builder will create these EC2 instances, then you're going to pay for these EC2 instances and when the AMI is created and distributed, you're going to pay for the storage of that AMI wherever it has been created and wherever it has been distributed, but that should make sense, right?
- Signal 8: So on top of it, if you launch an AMI and that AMI has been built with an old public key and then you select a new public key to launch this AMI with, what's going to happen is that this new EC2 instance is going to have both the public key that was shipped with the AMI and the new public key that is shipping with the Amazon EC2 service.
- Signal 9: But you could create a new distribution setting, and in here you can set up region 1, but also set up region 2, and region 3, for example, if you wanted to distribute your AMI to different regions automatically, which is really, really handy, but for this hands-on, we'll just use a service defaults, and have the AMI in one region.
- Signal 10: Transcript signals that so metadata means information about the instance and user data that we've seen before is the launch script of the EC2 instance.

### Service-Specific Lab Paths
### Activity 1: Amazon EC2 Lab for EC2 foundations, instances, metadata, access patterns, and runtime basics
- AWS console path: AWS Console -> EC2 -> Instances
- Azure equivalent: Azure Virtual Machines
- GCP equivalent: Compute Engine
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> EC2 -> Instances.
3. Build: Launch one small instance with default VPC.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Check instance running state and system status checks.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Terminate instance and remove extra volumes.

### Activity 2: Amazon VPC Lab for EC2 foundations, instances, metadata, access patterns, and runtime basics
- AWS console path: AWS Console -> VPC
- Azure equivalent: Azure Virtual Network
- GCP equivalent: VPC Network
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> VPC.
3. Build: Create a VPC with one public and one private subnet.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Validate route table associations.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete test subnets and VPC components.

### Activity 3: AWS Lambda Lab for EC2 foundations, instances, metadata, access patterns, and runtime basics
- AWS console path: AWS Console -> Lambda -> Functions
- Azure equivalent: Azure Functions
- GCP equivalent: Cloud Functions or Cloud Run
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> Lambda -> Functions.
3. Build: Create a hello-world function from blueprint.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Run a test event and inspect CloudWatch logs.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete function and related log group if needed.

### Activity 4: Elastic Load Balancing Lab for EC2 foundations, instances, metadata, access patterns, and runtime basics
- AWS console path: AWS Console -> EC2 -> Load Balancers
- Azure equivalent: Azure Load Balancer or Application Gateway
- GCP equivalent: Cloud Load Balancing
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> EC2 -> Load Balancers.
3. Build: Create an application load balancer with one target group.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Check target health and ALB DNS response.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete ALB, listeners, and target group.

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study EC2 foundations, instances, metadata, access patterns, and runtime basics in a cloud-agnostic way: focus on capability first, provider name second.

### Capability Mapping (AWS / Azure / GCP)
| Capability | AWS | Azure | GCP |
|---|---|---|---|
| Identity | IAM / IAM Identity Center | Microsoft Entra ID + RBAC | Cloud IAM |
| Object Storage | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Virtual Machines | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Serverless Functions | AWS Lambda | Azure Functions | Cloud Functions / Cloud Run |
| Containers | Amazon EKS / ECS | AKS | GKE / Cloud Run |
| Databases | RDS / DynamoDB / ElastiCache | Azure SQL / Cosmos DB / Azure Cache | Cloud SQL / Firestore / Memorystore |
| Networking | VPC / Route 53 / ELB | VNet / DNS / Load Balancer | VPC / Cloud DNS / Cloud Load Balancing |
| Observability | CloudWatch / X-Ray / CloudTrail | Azure Monitor / App Insights / Activity Log | Cloud Monitoring / Cloud Logging / Cloud Trace |

### Same Lab Across 3 Clouds
| Lab Theme | AWS | Azure | GCP |
|---|---|---|---|
| Amazon EC2 | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| AWS Lambda | AWS Lambda | Azure Functions | Cloud Functions or Cloud Run |
| Elastic Load Balancing | Elastic Load Balancing | Azure Load Balancer or Application Gateway | Cloud Load Balancing |

### How To Think Cross-Cloud
1. Start with workload requirement: latency, throughput, security, and compliance.
2. Map requirement to capability family (identity, network, compute, data, observability).
3. Compare service behavior, not branding: limits, scaling model, and failure modes.
4. Keep a portable architecture note: what is generic vs provider-specific.
5. Test same mini-lab in at least 2 clouds and write down differences.

### Child-Friendly Practice Challenge
- Pick one simple task (for example: upload one file, run one function, read one metric).
- Do the same task in AWS, Azure, and GCP.
- Fill this mini template:
  - What was the same?
  - What had a different name?
  - What felt easier/harder and why?

<!-- END PRACTICE_ENHANCEMENTS -->

## Cross-Domain Referrals

- No secondary referral sources were required for this topic.

## CloudOps Transcript Enrichments
> Source: outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/040_SSM Default Host Management Configuration (DHMC).txt, 041_SSM Default Host Management Configuration (DHMC) - Hands On.txt

### Systems Manager Default Host Management Configuration (DHMC)
- DHMC allows EC2 instances to be managed by AWS Systems Manager **without attaching an EC2 instance profile** directly to each instance.
- It relies on the built-in **instance identity role** present on every EC2 instance (separate from user-managed instance profiles) so Systems Manager can identify the instance and apply management permissions.
- Region-scoped feature: DHMC must be enabled per region in Systems Manager settings.
- Prerequisites:
  - IMDSv2 must be enabled (`HttpTokens=required` or equivalent IMDSv2-only posture)
  - SSM Agent must be recent enough (newer agent versions required; older agents and IMDSv1-only setups are not supported)
- Once managed via DHMC, core SSM capabilities become available, including Session Manager, Patch Manager, and Inventory.
- Operational convenience: SSM Agent auto-update behavior is managed through Systems Manager once the node is under management.

### Hands-On Validation Signals (CloudOps)
- In Fleet Manager, enabling DHMC creates and uses a recommended IAM role at the account/region configuration layer, not as an instance-attached profile.
- A newly launched EC2 instance with IMDSv2 and updated SSM agent appears in Fleet Manager **even when the instance has no IAM role attached** in EC2 instance details.
- If the SSM agent is outdated, the node may not register until the agent is upgraded.

## CloudOps Transcript Additions - EC2, AMI, and Systems Manager Core Operations

### Source Files
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/007_[Important] AWS Console UI Update.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/008_Launching an EC2 Instance.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/009_Changing EC2 Instance Type.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/010_[SAA] EC2 Placement Groups.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/011_[SAA] EC2 Placement Groups - Hands On.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/012_Troubleshooting EC2 SSH Issues.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/013_EC2 Instance Connect (EIC) Endpoint.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/014_CloudWatch Metrics for EC2.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/015_CloudWatch - Unified CloudWatch Agent - Overview.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/016_CloudWatch - Unified CloudWatch Agent - Hands On.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/017_EC2 Instance Status Checks.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/018_EC2 Instance Status Checks Hands On.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/019_[SAA] EC2 Hibernate.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/020_[SAA] EC2 Hibernate Hands On.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/021_Instance Scheduler on AWS.txt
- outputs/aws-certified-cloudops-associate/03_EC2 for CloudOps/022_EC2 Cleanup.txt
- outputs/aws-certified-cloudops-associate/04_AMI - Amazon Machine Image/023_[CCP_SAA_DVA] AMI Overview.txt
- outputs/aws-certified-cloudops-associate/04_AMI - Amazon Machine Image/024_[CCP_SAA_DVA] AMI Hands On.txt
- outputs/aws-certified-cloudops-associate/04_AMI - Amazon Machine Image/025_AMI No Reboot Option.txt
- outputs/aws-certified-cloudops-associate/04_AMI - Amazon Machine Image/026_EC2 Instance Migration using AMIs.txt
- outputs/aws-certified-cloudops-associate/04_AMI - Amazon Machine Image/027_[CCP] EC2 Image Builder.txt
- outputs/aws-certified-cloudops-associate/04_AMI - Amazon Machine Image/028_EC2 Image Builder Hands On.txt
- outputs/aws-certified-cloudops-associate/04_AMI - Amazon Machine Image/029_AMI In Production.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/031_Systems Manager Overview.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/032_Start EC2 Instances with SSM Agent.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/033_AWS Tags & SSM Resource Groups.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/034_SSM Documents & SSM Run Command.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/035_SSM Automations.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/036_SSM Automations - Patch AMI & Update ASG.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/037_[SAA_DVA] SSM Parameter Store Overview.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/038_[SAA_DVA] SSM Parameter Store Hands On (CLI).txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/039_SSM Fleet Manager.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/040_SSM Default Host Management Configuration (DHMC).txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/041_SSM Default Host Management Configuration (DHMC) - Hands On.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/042_SSM Inventory & State Manager.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/043_SSM Patch Manager and Maintenance Windows.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/044_SSM Patch Manager and Maintenance Windows - Hands On.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/045_SSM Session Manager Overview.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/046_SSM Session Manager Hands On.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/047_SSM Distributor.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/048_SSM OpsCenter.txt
- outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM)/049_SSM Cleanup.txt

### EC2/AMI/SSM Synthesis
- SSH troubleshooting is primarily a path and identity problem: key file permissions, OS username mismatch, missing inbound route/security controls, absent public reachability, or saturated instance resources.
- EC2 Instance Connect and EC2 Instance Connect Endpoint provide two distinct access patterns: public endpoint-based key injection for internet-reachable hosts, and private-subnet access through a dedicated EIC endpoint/security-group path.
- AMI operations here emphasize lifecycle control: no-reboot imaging trade-offs, migration via AMIs, and Image Builder pipelines for reproducible bake-test-distribute workflows.
- Systems Manager operations are document-centric (YAML/JSON docs), then executed through Run Command, Automation, Session Manager, Patch Manager, and Inventory with explicit rate/error controls.
- Operationally, these transcripts reinforce that SSM reduces SSH dependency by shifting management to agent plus IAM plus endpoint posture, while still requiring version and network readiness checks.

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/021_NAT Instance (EC2 based NAT).txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Hello and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in the earlier lecture, we saw how NAT Gateways work and it is a managed NAT service from AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But in certain cases, as I said you might need your own EC2 Instance setup as NAT or maybe for cost reason or you need to have certain softwares on that EC2 Instance, like IPS intrusion detection system and intrusion prevention systems.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Platform Design
- Services: AWS Config, Amazon EC2
- Key Insights: And in that case, you can also use your own EC2 Instance and configure it as a NAT.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So for this, you need to do some additional configurations like in NAT Gateway, there is hardly anything we did.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We just launched NAT Gateway in a public subnet and modified the route tables for private subnet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Here, while we launch our own EC2 Instance, we need to make sure that the Instance has been launched using NAT AMI's which are there publicly available to be used.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we also need to disable the source destination check.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Now, that is important to understand when you have your own EC2 Instance, right?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: And you want to configure it as a NAT.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Now understand that other EC2 Instance, which has to access the internet will send the traffic to this Instance and it will send this traffic to internet, right?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And from there, the traffic will come back and it will come back to originating EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now, for this instance, by default, it only accepts the traffic that the destination packet is its own IP address and that is a setting at VPC level.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 14:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: That means by default EC2 can only accept the traffic where the packet destination address is itself.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But if you look at this, this EC2 is accepting the traffic, which is for sale google.com And then forwarding the traffic here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So at Instance level, there is a setting called source destination check.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Platform Design
- Services: AWS Config, Amazon EC2
- Key Insights: And you have to disable that in order to configure an EC2 Instance as a NAT so that it can also accept the packet where the destination is not itself.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So remember, this is very important.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Again, this EC2 must be in a public subnet, like shown here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And again, you need to modify your route table, but this time, the destination of the route table won't be a NAT Gateway, but it would be an ENI which is attached to this Instance and during the exercise, we'll see that as well.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So quickly, let's do that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let me go back to my earlier setup.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is my NAT Gateway.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Let's do one thing, let's delete this NAT Gateway because we need to have the NAT Instance instead of this.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm just deleting this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And also let's modify the route tables and remove the route which we had added for the route table.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now you see this, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is interesting, when your NAT gateways is deleted, you see there is a black hole here because we say the traffic has to go through this but this device does not exist.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So many are times it happens during troubleshooting, you will find this kind of black holes and then you need to remove that and save the routes, okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: In that case, let's go and create our own NAT EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I'm going to my EC2 console now and launching the Instance, but this time I'll search for a NAT AMI here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 33:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So I'll just search for NAT and I will search in the community AMIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And you see here, I see this NAT AMI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will just select, that is a NAT.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will select into micro, now as you know NAT needs to be in a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm making sure it is in my public subnet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It also has a public IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now you can also attach an elastic IP but for me, it is okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'm not going to run this setup for long so I'm just using the public IP, storage I'm going with default.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Tag, definitely I want to add a tag, say NAT EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Now security group, this is interesting.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, again, look at this diagram.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: This Instance will accept the traffic from all the Instances in a private subnet and that traffic could be anything for that matter.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It could be HTTP, HTTPS, Bing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So mostly you want to allow all the traffic from your private Instances not SSH for sure because we are not doing the SSH outbound, but let's open other traffic.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's open ICNP that is for sure we need it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And we need it for BPC CIDR so that any Instance can access that using the NAT.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Also, let me add maybe HTTP traffic and HTTPS traffic.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'll just go and add that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Also, let me add HTTPS so that we can pull some content from the internet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: Okay, so that's a security group for NAT and we'll just go with the default and we'll launch the Instance, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 53:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So Instance has been launched, but as you know we need to do additional settings.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 54:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: The very first thing you need to make sure is you disable the source and destination checks for this Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 55:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So let's do that, let's go to this NAT EC2 Instance and let's go to Instance settings.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Sorry, actions and in the networking, we would have this setting called change source destination check and we need to just disable the settings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's wait for some more time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So as of now, you can see that it is at the Network Instance level, ENI level.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So lets stop this and save.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So let's wait for some time for this Instance to be functioning.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And by that time, let's go to our route tables and now just verify if I can access the google.com.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I cannot, this is from my private EC2 Instance.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I still cannot.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let's go back and modify the route tables for this particular private subnet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Edit the routes and say if the traffic is going to internet, I want to rather use my Instance, which is my NAT EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it will just give me the dropdown.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's pick our NAT, okay, and save the routes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, let's go back and check if it is working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And yes, you can see the traffic now is flowing through the NAT EC2 Instance and I'm able to access the internet.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So basically what we did is just made this setup available for us.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So that's in short is NAT EC2 Instance and just to make sure we understand the differences so NAT Gateway if you see it is highly available within the AZ and you have to create multiple NAT Gateways in multiple AZs to make sure it is resilient to AZ failure.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 73:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: NAT EC2 Instance you can manage the failure using the script where all the traffic is routed through one EC2 Instance and if it fails, your route table gets modified and the traffic can be routed through other NAT Instance as well.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 74:
- Concepts: Compute Platform Design
- Services: AWS Config
- Key Insights: With respect to the performance, NAT Gateway can scale up to 45 GBPS bandwidth, when it comes to the NAT instance it depends on basically Instance configuration.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 75:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Typically it is five GBPS and that would also depend on the instance type.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it is not really scalable up to 45 GBPS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Maintenance, as you know, NAT Gateway is completely managed over AZ.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2
- Key Insights: NAT EC2 Instance, you need to manage the high availability, any patching or anything you want to do on that Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for performance software is optimized for handling the NAT traffic.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And it is now, in case of Nat instance a generic Amazon Linux AMI is used to perform the NAT.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Cost or perspective also NAT Gateway is having two kinds of charges.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: One for our running cost as well as how much data it processes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And NAT Instance charges are typically based on the instance type that you select.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Again, IP addresses, NAT Gateway should only have the elastic IP addresses.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 85:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now NAT Instance can have elastic as well as public IP address.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 86:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Security wise NAT Gateway does not have security groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means you can't really control the traffic there but again, you can use network ACL, as I said.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 88:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: However, for NAT Instance as it is nothing but another EC2 Instance inside your subnet.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 89:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: You can apply both the security group as well as network ACL rules there.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: You can't do port forwarding or you can't use NAT Gateway as a bastion host, but being an EC2 Instance, again, you can do same thing with NAT EC2 Instance as well.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal; Platform automation signal.

Line 91:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So these are primarily the differences between the NAT Gateway and NAT Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So with that, you should be able to clearly make out your choices given the scenarios and mostly it would be the NAT Gateways because that is what is recommended.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But in case there are certain scenarios given, maybe you need to know all the settings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Typically, the source destination check has to be disabled and it should have been public subnet, all those kinds of NAT Gateway related stuff.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 95:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, thank you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/039_Placement Groups and EBS Optimized EC2 instances.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Hello, and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So far, well, we talked about what affects the network performance, and we talked about MTU.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We talked about other concept like bandwidth latency and jitter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let's look at some of the ways in which you can achieve the maximum network throughput while you work in AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So at high level, if you want to optimize the network performance, you can look at three areas.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Now, one is you can use cluster placement group for your EC2 instances, which definitely gives you the maximum network throughput between those instances, and we'll talk shortly about that.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Other option is you can say enhancement you can do, it's not mutually exclusive all of these options, you can use all this at the same time, but these are some of the leeways that you can explore to have the maximum network throughput.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EBS
- Key Insights: Second is EBS optimized instances, and we will talk what that mean.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then most of the time in this section, we'll spend on enhanced networking and that is very crucial topic for your exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There are a lot of concepts under enhanced networking, and you need to know well when we talk about enhanced networking and you should be able to pick right answer from the questions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EBS
- Key Insights: So let's see, first two things, cluster placement group and EBS optimized instances and then we will have separate lectures to talk about enhanced networking.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if you already know the cluster placement group, it is a group of EC2 instances you launch together and you launch in a such a way that all these EC2 instances are physically as close as to each other.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: (none explicit)
- Key Insights: So it's a logical grouping of instances within a single availability zone, which makes sure the network latency is lower because across AZs they are at least 100 or up to 100 kilometers apart.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 14:
- Concepts: Compute Platform Design, Deployment Automation, Elasticity and Availability
- Services: AWS SAM
- Key Insights: And there is, of course latency there, but having in same availability zone, there would be a minimum latency between the instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal; Platform automation signal.

Line 15:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now, this placement cluster groups are ideal for HPC workload, which requires very low latency network throughput between the instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is something like this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: You have multiple EC2 instances, and typically they're in the same AZ and also could be in the same rack, which gives the maximum network performance.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So with that, you can achieve the network bandwidth up to 100 Gbps and that's essentially what the placement group is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if the question talks about having the maximum network throughput between EC2 instances, then always choose a placement group as one of the options.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 20:
- Concepts: Compute Platform Design
- Services: Amazon EBS
- Key Insights: Okay, next, we talked about EBS optimized instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: Now what that means, if you have any EBS attached to your EC2 instance, it is not really physically attached to your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You understand that?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's a virtual world and it is not a physical disk that you attach.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it more like a SAN, storage area network where your disc are attached over the network.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: So it's not a physical drive, but EBS is a network drive.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: And what that means it uses maybe a network or dedicated, or it could be a shared network to communicate to the instance and which also means there could be additional latency to access your EBS data from your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So remember this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: Now, EBS input output may affect your network performance.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EBS, Amazon EC2
- Key Insights: Understand that this EC2 has some network interfaces here, and you are communicating to this instances from maybe over the internet and same interface is also being used to do the input output operation from the EBS.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 31:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: Now, if that is the case, if you are doing too much input output from EBS, a lot of bandwidth will be used here and maybe here you get a lower bandwidth, or the other way round, you're using too much bandwidth here then for your EBS input output, you will get a lower bandwidth.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means this is a shared bandwidth for all kind of network here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And that is the problem for your EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So Amazon EBS-optimized instances deliver the dedicated throughput between your EC2 and EBS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means this network is separate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: Whatever you do here does not take a bandwidth from your regular EC2 instance bandwidth limit.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 37:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: It is a dedicated network between EC2 and EBS, and that's where using EBS optimized instances provides you the consistent bandwidth to talk to EBS volumes over the network.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So ultimately they minimizes the contention between your EBS input output and other traffic from your EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Compute Platform Design
- Services: Amazon EBS
- Key Insights: So in short, that's EBS optimized instances, and if you look at the list on AWS pages, you will see maybe a lot of new generation instances are already EBS optimized.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 40:
- Concepts: Compute Platform Design
- Services: Amazon EBS
- Key Insights: So if you're facing these kind of challenges, then look for EBS optimized instances, which improves your network performance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In next lecture, we will deep dive into enhanced networking and which is very, very critical for your exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/191_Route 53 - EC2 Setup.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's get started.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: And before we use Route 53, I want to go ahead and create three EC2 instances in different regions, as well as one ALB.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So in one of these regions I'm going to go into instances and then launch an instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And very simply, I will choose Amazon Linux2 on this architecture, a T2 micro type of instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I don't need a key pair, because I will use, if I need to, I will use EC2 instance connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And then for network settings, I'm going to create a security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will allow SSH as well as HTTP from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then I will just, in advanced details, specify a bootstrap user data script.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, to do so, just go into your Route 53 user script and you copy this entire script.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you paste it here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So what's going to do is it's going to say hello world from the instance, just as before.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2
- Key Insights: But now we're going to add the AZ the instance was launched in, using this environment verbal called EC2, availability, zone that I created from before.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 13:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So it's going to give us a little bit more info about EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So I'm going to go ahead and launch this instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this has been launched and it is right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next I'm going to go into another region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, Northern Virginia, so US East one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then I will launch an instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And same settings.
- Hidden/Implicit Meaning: Platform automation signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So again, no key pair required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So proceed without a key pair.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will allow HTTP as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: And for advanced details, I will provide the exact same EC2 user data script.
- Hidden/Implicit Meaning: Platform automation signal.

Line 25:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Then we click on launch instance and we're good to go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And finally I'm going to go into one last region, for example Singapore.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And in Singapore I'm going to launch an instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we'll leave it as t2 micro, we will choose no key pair.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll allow HTTP from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then, under advanced details, I'm going to paste in the data and launch this instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, so we have three instances now being started in three different regions.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have one in Frankfurt, one in Northern Virginia, and one in Singapore.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Lastly, what I'm going to do is that I'm going to launch a load balancer in Frankfurt, for example.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 35:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So here I'm going to create a load balancer and choose an application load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Create.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then the unique name will be DemoRoute53ALB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is fine, it's going to be internet facing, on IPv4.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will choose for mapping, one, two, and three subnets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And for security group I can choose up to five.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to choose the one that I've created just from before, which was the launch user two, which had AWS and HTTP enabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This way we're sure that HTTP is enabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the protocol is on 80, you're going to forward to a new target group, that we're going to have to create, based on instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I'll call it this one demo tg route 53.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And, what I want to do is next and register my one instance right now that I just created from before.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you do include as pending below.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then on the review targets, you have one target.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then create the target group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the target group is not created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So back into model balancers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I can refresh this and select the demo tg group route 53.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And everything looks good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Let's create our load balancer, and then click on view the balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here we go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now to summarize, let's see if everything has been working properly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So, we have one EC2 instance right here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And let's take the public IP, so I'll just copy the IP itself, make sure using the IP via http.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it says hello world from blah, blah, blah.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is good, so what I'm going to do is that I'm going to, under a text file, just to have a mark of a trace of everything, I'm going to put the IP address as well as the region I'm in.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So EU central one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see, it says hello from AZ EU central one B.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, so this instance is working.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'm just testing whereas everything's working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to also take this public IP right here, paste it in, and it says yes hello from US East one A.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect, so this is US East one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the last instance right now it's here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then I'm going to copy this IPv4 address, paste it in, and it says hello from AP Southeast one b.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this one's working as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go here, AP southeast one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: And finally, if I go under my ALB and take the DNS name right here, let's see if it has been provisioned.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it is provisioned as we can tell.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this can take a bit of time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for you, it may not work, for me it worked.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so because it is pointing to one EC2 instance, it's a hello world from AZ EU Central one B.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 76:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So now we have properly set up all our instances, as well our GNS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And keep this information handy, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So let's have a look at what are EC2 Key Pairs and how they work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So as a user, you're going to go into the EC2 service and you can create an instance and you can also create an EC2 Key Pair.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: When you create a Key Pair, it's called a Key Pair because there's a private key and a public key.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The private key is automatically downloaded from AWS onto your own machine, and then the right away AWS is going to delete it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So you are the only owner of the private key but Amazon EC2 service is going to keep a copy of the public key.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: Then when you create an EC2 instance and you select the associated key, what's actually going to happen is that on the root EBS volume of the EC2 instance, the public key is going to be stored as a copy in a file called authorized_keys in the SSH directory.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So once we have this, why does it matter?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, because when we want to actually perform an SSH into our EC2 instance, what's going to happen is that the SSH protocol is going to present the private key to our EC2 instance, which is going to match it with the public key it has in store and say, "Yes, the user is authorized to perform SSH on me." So this is the basics of EC2 Key Pairs and SSH.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that your private key must be kept secure and there are no ways for you to recover a lost private key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can also create your private keys outside of AWS and then upload them by just uploading a public key.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So that's, you can still create EC2 instances with keys generated outside of AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And there are two formats of SSH keys that you can use.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have the ED type and the 2048-bit type.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So what if you have a Key Pair and you delete it from the EC2 console?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, in that case, what's going to happen is that it will be gone from the EC2 console, but it's not going to be removed from the EC2 instances itself.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the public key will remain on any EC2 instances that have been set up with a Key Pair on Amazon EC2.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So deleting a Key Pair in Amazon EC2 doesn't do much except just deleting it there.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So on top of it, if you launch an AMI and that AMI has been built with an old public key and then you select a new public key to launch this AMI with, what's going to happen is that this new EC2 instance is going to have both the public key that was shipped with the AMI and the new public key that is shipping with the Amazon EC2 service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So then, of course, even though you have two keys on the EC2 instance, you can still connect using any corresponding private key.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you have a new private key, you can match it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Or if you have also the private key for the key corresponding in the AMI, you can connect as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What happens though, if you lose your private key and it gets exposed, that means it gets put online.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you have a few steps you need to to follow.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: You need to remove all the public keys stored in each SSH authorized_keys file on EC2 instances so that no one can use the private key to actually SSH into your EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: You must also create a new Key Pair and then you add the public key material to the authorized_keys on all EC2 instances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the diagram, so we have the old key and it's been compromised so we're going to create a new Key Pair.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We get the private key and a public key.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: We delete the compromised public keys on the EC2 instances, and then we add the new public key onto the EC2 instances and you're done.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, how do you automate this?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, when what you do it is using the SSM Run Command utility, which is going to automate the process of adding and deleting public keys on EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Alright, that's it for EC2 Key Pairs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/059_Lost EC2 Key Pair - Linux.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what if you lose an SSH key pair?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: How do you regain access into your EC2 instance?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There are so many methods, and I'm going to show you a few of them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the number one is to use the EC2 User Data.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, we lost a key pair, so we're going to create a new key pair and then we copy the public key.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So as we can see, the old key pair is blue on my EC2 instance, and now the new public key pair is green.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we stop the instance, and then we update the EC2 User Data.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And it turns out that if you're using the cloud-conflict format for the EC2 user data, which looks like this, this actually gets run at every start of your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And if you notice what I've done in this EC2 user data, I've added a name and I've added an SSH authorized keys in there.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we are telling the EC2 instance that the next time it starts, it looks up the EC2 user data and actually creates a new username and adds an SSH authorized key.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So then we start the instance, and then what's going to happen is that by looking up the EC2 user data, then the added public key is going to be in that specific file, and then we can simply SSH into the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So please note that this method only adds authorized keys.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It doesn't delete any existing public keys.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then once you're done with this one time setup of EC2 User Data, you can just delete it so that's the EC2 instance doesn't write a new key every time it boots up.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's technique number one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Technique number two is to use Systems Manager.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So you need to have an EC2 instance with the SSM agent installed and the proper IAM Role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then from the Systems Manager Console, we can run an automation, such as AWSSupport-ResetAccess, and this automation is going to create a new key pair, so a public key and a private key.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: It's going to store automatically that private key into the parameter store, and then is going to store the corresponding public key on the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So you as a user, then you go into the Parameter Store, you retrieve the private key, you delete obviously the entry in Parameter Store, and then you can directly SSH onto your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this works both for Linux and Windows.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is where the private key is going to be stored in the Parameter Store.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And for this, as I said, you need to have the SSM agent installed with the correct IAM Role on the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Another method is to use the EC2 Instance Connect Service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So for this, we need to have the Instance Connect agent, and this is already happening on Amazon Linux 2 or Ubuntu 16 or later.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then it's going to connect to the EC2 instance using the EC2 Instance Connect Service temporarily.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to edit that SSH authorized keys file, and we're going to write a new SSH public key in there.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's summarize it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we're going to launch the EC2 Instance Connect Service to go and actually be SSH into our EC2 instance, and then we're going to actually write the new key in the SSH authorized keys.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And therefore we can directly connect to the instance using our own computer.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: You can also use the EC2 Serial Console.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So this is when you don't have a working network connection for whatever reason, and this is only for Nitro-based EC2 instances.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 34:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Remember, you need to enable the EC2 Serial Console at the account level before using it, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But it's very simple.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You connect using the Serial Console, and then using the terminal, you just store the new key, the new public key, in the SSH authorized key file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And, of course, if you don't have network connectivity, you should also fix that.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 38:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Okay, let's observe one last method to connect to an EC2 instance with a last key pair.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: So this technique is called the EBS Volume Swap.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So we know that the authorized keys file is on the file on the EBS route volume of our EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so what we can do is that we can create again a new private key and a new public key, so a key pair.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: We stop the original EC2 instance, then we detach the EBS root volume, and we're going to create a new EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 43:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: And on that new EC2 instance, what we're going to do is that we're going to attach the EBS volume of the previous instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So now the new EC2 instance has two volumes, the primary one and then the secondary one, which was attached from the previous instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 45:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we can SSH easily onto the new EC2 instance because it's been set up correctly and we haven't lost that key.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Then by going into that EC2 instance, we can modify on the second volume, the authorized key file, to just add whatever entry we need.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 47:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then we can just detach okay the volume, reattach it onto the previous EC2 instance, which will now have the correct public key written into the authorized key files, and then restart the instance in SSH and we're good to go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/060_Lost EC2 Key Pair - Windows.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So now let's talk about how we can recover a Windows EC2 instance where we have a lost password.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: So again, it has an EBS root volume.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what can we do?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: Well if the Windows AMI is using the EC2Launch v2 service, then all we have to do is to detach the EBS root volume and attach it to a temporary EC2 instance running Windows as well.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So similar method as before.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then on the secondary volume, we're going to delete a file called the run-once file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: What's going to happen is that it's going to make the old EC2 instance believe this is the first time it's being run.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we delete that file, we reattach the volume onto the EC2 instance, we restart it, and then because the instance believes it is its first boot, it's going to say, "Please enter a new password" and we have recovered our EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Platform Design
- Services: AWS Config, Amazon EC2
- Key Insights: If we are using a older AMI, so Windows AMI before Windows server 2016, so this is an older AMI, it's called the EC2Config service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we have a similar kind of methodology.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we again create a new EC2 instance but this time the file we have to modify is this file right here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You don't have to remember the files, okay, I'm just giving you the general idea and that should be enough for you.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But in that XML file there is the EC2 set password variable.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you set it to enabled, then it's actually going to allow you to set a new password.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So you restart the previous instance and then you'll have to enter a new password and you are back into the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: There's also a thing called EC2Launch.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So this is for the Windows server 2016 and later AMIs, but they're not, again, they haven't been upgraded to the newer version EC2Launch v2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the method is again very, very similar.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But this time we're going to download and install what's called the EC2Rescue Tool for Windows Server.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then from this EC2Rescue Tool, you have a few steps to follow and by going into the options you have one called the Reset Administrator Password which does exactly what the name indicates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Then you attach the volume back to the previous EC2 instance, restart it, and then you will have a new admin password.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Finally, you may have a method using Systems Manager.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So for this, of course, the EC2 instance running Windows must have the SSM Agent installed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we have three methods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The first one is to use this document called the AWSSupport-RunEC2RescueForWindows Tool which is going to install the EC2Rescue Tool and then you can reset the access.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's similar to what we saw before but it's automated using Systems Manager or there is an automation document again called ResetAccess or there is a run command document called RunPowerShellScript in which you can just set the password for the administrator to be Password@123 and then you are good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Alright, so hopefully that gives you lots of options to recover EC2 Windows instances when you have lost a password.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/064_[SOA] Start EC2 Instances with SSM Agent.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's get started with systems manager.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And for this we need to first register some instances within.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So on the left hand side, let's go into Fleet Manager.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you can see right now I have zero managed nodes but that will change in a second.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So what we want to do is to go into the EC2 console and start some instances to be registered in Fleet Manager.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So in my EC2 console, I'm gonna go under instances and I'm gonna click on Launch Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The operating system is going to be Amazon Linux two.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the reason we use Amazon Linux two is that the SSM agent is already running on it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So all we need is to then give the proper IAM permissions to our instance, and then it will be registered in SSM.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if we look at our instance type, we'll choose T2 Micro for a key pair, we'll proceed without a key pair.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And for a security group, we'll create a new security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But as you can see we will remove any kind of connectivity to it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So no SSH, no HTTPS, no HTTP, just to show you that the instance doesn't need to be accessible.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: It's the agent that's actually accessing the service and not the service that's accessing the instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So we create a new security group without any rules in it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then under advanced details, most importantly we need to select an IAM instance profile.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So let's click on create new IAM instance profile, and then we're going to create a role, and it's for an EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then here we need to find the proper permission policy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll go into SSM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And here we have the Amazon SSM Managed Instance score, which contains enough permissions for the instance to be managed by SSM.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's extremely important.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we'll have this as a attached policy of my instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And then I will scroll down and go in here and call this Amazon EC2 Role for SSM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now we're good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We have the Amazon SSM Manage Instance Core.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Let's create this role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we're good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So back into our instance Launch, we need to find this SSM role so that we created the Amazon EC2 Role for SSM.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And we are going to launch three instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So said three instances just to show you how to launch and have three instances in SSM in the fleet manager.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So let's launch our instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 33:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Now they have the proper security group and they have the proper IAM role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's wait until they are up and running.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So my instances are now running and the SSM agent is going to automatically boot up on them because we're using Amazon X two.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And therefore if I go into Fleet Manager and refresh this page, as you can see, my three nodes are appearing in the managed notes under fleet Manager.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So they're running, we can look at the platform, the operating system, the source type, the agent is online, yes, as well as the agent version.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's pretty good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: We have successfully started three EC2 instances, assigned the proper IAM role and fleet.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There is Return Fleet Manager.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: And again, what I wanna show you is that if we look at the security group of my instances as you can see, there are no inbound rules which means that it's actually the instance accessing SSM.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/Security/09_Other Services/269_[CCP_SOA] EC2 Image Builder.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's talk about a new service that I really like and that does come up in the exam now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: It is called EC2 Image Builder.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: It is used to automate the creation of virtual machines or container images.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Quickly, what does that mean for the exam?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: That means that you're gonna be able with EC2 Image Builder to automate the creation, maintain, validate and test AMIs for EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at diagram to see how that works in detail.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we have the EC2 Image Builder service and it is automatically, when it's going to run, it is going to create an EC2 instance called a Builder EC2 instance, and that EC2 instance is going to build components and customize the software, for example, install Java, update the CLI, update the software system, maybe install firewalls, whatever you define to happen on that EC2 instance, maybe install your application.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then once this is done, then an AMI is going to be created out of that EC2 instance, but all of this is obviously automated.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Then the AMI is created, but we want to validate it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So EC2 Image Builder will automatically create a test EC2 instance from that AMI and going to run a bunch of tests that you are defining in advance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And if you don't wanna run any tests, obviously you can just skip that test, but the test can be asking, is the AMI working, is it secure?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Is my application running correctly?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All these kinds of things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then once the AMI is tested, then the AMI is going to be distributed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So while EC2 Image Builder is original service, it is possible for you to take that AMI and distribute it to multiple regions, therefor allowing your application and your workflow to be truly global.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Next, EC2 Image Builder can be run on a schedule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can define a weekly schedule or you can say you can run whenever packages are updated or you can run it manually, et cetera, et cetera.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it is a free service, so you're only going to pay for the underlying resources.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What does that mean?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, that means that if you create an EC2 instance during this process and EC2 Image Builder will create these EC2 instances, then you're going to pay for these EC2 instances and when the AMI is created and distributed, you're going to pay for the storage of that AMI wherever it has been created and wherever it has been distributed, but that should make sense, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/Security/09_Other Services/270_[SOA] EC2 Image Builder Hands On.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Okay, so let's practice using EC2 Image Builder.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So let's go into the EC2 Image Builder service and have a play with it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm into the service, we can get started, we can create an image pipeline.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so here's our first pipeline, we'll call it my demo pipeline, and then we have the option to create a build schedule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as we can see here, we can schedule it to happen every week on Monday at 9:00 AM and customize this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we can also say that you should run at the scheduled time only if there are dependency updates, these kind of things, or just run every time based on schedule.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We can specify CRON expression, but we'll just have it manual because we're running it manually in this hands-on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'll click on next, next we are to choose a recipe.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so a recipe is a document that defines how the source image is going to be customized.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we need to create a new recipe because we don't have one yet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And here we have two options, we can create either an AMI out of the EC2 Image Builder service, or a Docker image, but for this instance, we'll use an AMI.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we'll call it MyDemoRecipe.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We need to provide a version, so 1.0.0, and then we need to select a source image.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we can either create one from images created by AWS, or enter a custom AMI ID.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll just go with managed images, we'll choose Amazon Linux 2, but we have different options as well as you can see.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll scroll down, the image origins going to be quick start from Amazon-managed, and for the image ARN, please choose Amazon Linux 2 x86, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Do not choose ARM64, choose x86, otherwise you will see an error later on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we'll click on use the latest available OS version, we'll scroll down, and here is the interesting part, so components, is how do we want to customize our image.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we can apply the build components that are pre-created by AWS, for example, if we wanted to have Java on our image and our AMI, currently, there is no Java on Amazon Linux 2, but if you select amazon-corretto-11-headless, then you would have Java 11 being installed on your AMI, so great.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And if you go to the next page, there's another thing I want to install which is aws-cli-version-2-linux, so currently only version 1 is installed onto my AMI, but if I wanted to upgrade it to version 2 then I could select this build component.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it is possible for you to really create your own build component if you wanted to, if you wanted to customize and install your own application, for example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's scroll down, and as we can see now we have the two components, we can reorder in which order they're going to be installed, so we can say first install the cli-version-2, and then install the Java 11 from Amazon called corretto.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay next, how do we want to test that the AMI is working, post-build?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We have different tests available here, we can create our own test, but I'm going to skip this because we don't want to run any tests on our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then I will click on next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay so next, how do we want to create this AMI?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: On what type of EC2 instances do we want to create our image?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: And so, as we can see here, we can either create the infrastructure using service defaults, or create a new infrastructure configuration.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So we want to select the last option, and for this we'll create an IAM role, so we'll call it the IAM role here, see we have to choose?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: Currently we have no results available, but I'm going to go ahead and create a new role for EC2 Image Builder.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So I'll click on create new role, and I'm going to roles, and I'll go and click on create role for AWS service, and this is going to be a role for EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next, permissions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so here we need to start attaching policies.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So if I go back to the EC2 Image Builder, and click on create using service defaults, it says that here, in order to have a correct role, we need to create a role name with this role name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So I'm going to, sorry, the role name will have a letter, but we need to attach some policies to it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we need to attach this first policy, called the EC2InstanceProfileForImageBuilder.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECR
- Key Insights: We need to attach the second policy, which is ECRContainerBuilds if we wanted to create Docker images, and the last, we need to attach is the AmazonSSMManagedInstanceCore managed policy.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So all these things are necessary for EC2 Image Builder to work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: I click on add tags, next review, and the role name, I'm just going to give the default role name right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So I'm creating this role manually because when I did create it automatically, it wasn't correctly working, so I wanna make sure this is done correctly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So we have this create role dialogue, and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Okay, so the role has been created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Here's my EC2InstanceProfileForImageBuilder that has been created.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: AWS Config, Amazon EC2
- Key Insights: And now in the image builder, I'm going to click on create new infrastructure configuration, MyDemoInfra, and the IM role I'm going to choose is the role I just created right now called the EC2InstanceProfileForImageBuilder.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, now why do we do this?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, because we want to be able to customize the AWS infrastructure, and as such, I want the instant type to be of type t2.micro, and the reason I'm doing this is that I really want to be able to run on the fridge here for this hands-on, so that you don't pay any money.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: If you were to run with the default settings, then it will start launching an M5 large instance, and you will have to pay for it, obviously.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 48:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: As you can see, the t2.micro only has the x86 architecture, it doesn't have the ARM64, and this is why we've selected an AMI that was x86, and not ARM64.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So next I scroll down, click on next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then for distribution settings, we can either use the default, and see that my AMI is going to be distributed in the region I'm in, which is eu-west-2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: But you could create a new distribution setting, and in here you can set up region 1, but also set up region 2, and region 3, for example, if you wanted to distribute your AMI to different regions automatically, which is really, really handy, but for this hands-on, we'll just use a service defaults, and have the AMI in one region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'll click on next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Everything does look good to me, and I will click on create pipeline.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so everything has been created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, let's click on our pipeline, MyDemoPipeline, and I'm going to do action, and run pipeline, and this is going to start an execution.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so here I can click on view details, and we're going to go straight into the execution.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here is the output image, it is pending.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'm going to click on it, this opens a new screen, and I'm going to wait until the build starts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Okay, so my instance is now in the building stage, and so that means that if I go into the EC2 service, I should start seeing an EC2 instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 60:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So let's go into the EC2 service, let's close this, go to instances, close this again, and we have here our build instance for my demo recipe.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 61:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So this instance was created by EC2 Image Builder, and you can verify it by going into tags, for example.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 62:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And you can see that the created by tag is for EC2 Image Builder, the Ec2ImageBuilderArn corresponds to the image we created, and the name is build instance for my demo recipe.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 63:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So some stuff is happening right now on my instance, as we can see the IAM role for my instance is EC2InstanceProfileForImageBuilder, which is the role that we have created just before that contains the three policies that we've attached manually to make sure that everything was working correctly.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do now is just pause the video, and wait for the build stage to be done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I just refreshed the page, and the status is now testing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go have a look at what's happening here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if I go into my instances and refresh this, we can see that my builder instance has now been terminated, because we have built the AMI from it, and my test instance is now running.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 68:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And if I look at my test instance and scroll down, we can see that the AMI right here, which I'm going to click on, the AMI is a new AMI that has been created.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 69:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the AMI name is MyDemoRecipe, and contains the timestamp of when it was created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So now the test instance is actually launched from this new AMI, and is being tested.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 71:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So this AMI, as we can see if we go to the tags, has been created by the EC2 Image Builder service, and we can see the ARN right here as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So this is quite cool, because now we can see that the AMI has been automatically created, and now it's in the test phase.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's wait a little bit until the test is done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, so now the status is distributing, so the test phase is now done, so there was no test being run on our AMI, obviously, but if they were any tests, then the test instance would've been running this test.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now the instant test is also being terminated which is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we are in the last stage which is the distribution setting.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if we look at it, right now we only distribute to one region, which is eu-west-2, which is where the AMI was created, so nothing much is going to happen.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if we were distributing that image into the United States, into Southeast Asia, all these kind of places, then the distribution would happen right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my image is now available, and this was good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you go to images, we can see that it was created, so perfect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's just make sure that it actually did what I wanted to do.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if I go and launch an instance, so I will call this one, Test from AMI, and I will choose my AMIs, and I will choose the demo recipe that I just created using the EC2 Image Builder service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 83:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I will scroll down, I will choose t2.micro, I will proceed without a key pair, because I will use EC2 instance connect to run some commands.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 84:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Then for network settings, I'm going to edit it, and then choose an existing security group, I'll choose my Launch-wizard-1.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we can ssh into our instance, scroll down, and actually none of the rest is necessary, so I'll just click on launch instance, and I'm good to go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 86:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So my instance is now launching.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 87:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So my instance is now running, so I'll click on connect, I will use the EC2 instance connect service and the username has to change, it is ec2-user, because we created a custom AMI, we need to tell AWS that we still want to use the ec2-user user which is coming from Amazon Linux 2.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I am into my image, and we can verify two things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Number one, that the aws-cli version 2 was installed, so as we can see, it says version 2.7.0, so indeed version 2 was installed, which is an upgrade, and then we can also verify that Java was installed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for this, we can verify indeed that's we are running the openjdk version 11, which is Amazon Corretto 11.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So our EC2 Image Builder works, and we exactly had the output we wanted.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So now just to clean up what we have, let's just terminate our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 93:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Next, what you can do is go into your AMIs, and from here, you can actually deregister your AMI, and finally, in snapshots, you can take your snapshots.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And I got two, 'cause I got different ones but take the snapshot that was created by the EC2 Image Builder, which is this one, and then action, delete snapshots, and you are good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 95:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, you can leave the pipeline running because while this is a manual pipeline, so it's not going to run on its own.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 96:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/032_EC2 Basics.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: And on EC2, in which we will create our first website on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So what is Amazon EC2?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, EC2 is one of the most popular of AWS offering.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It is definitely used everywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And what is it?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Well, it stands for Elastic Compute Cloud, and this is the way to do Infrastructure as a Service on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So EC2 is not just one service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's composed of many things at a high level.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So you can rent virtual machines on EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: They're called EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: You can store data on virtual drives or EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: You can distribute load across machines, elastic load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 13:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: You can scale services using an auto-scaling group or ASG.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And all these things, do not worry, we will see in depth during this course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Knowing how to use EC2 in AWS is fundamental to understand how the cloud works, because as I said from before, the cloud is to be able to rent those compute whenever you need, on demand.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And EC2 is just that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So EC2, what can we choose for our instances, so our virtual servers that we rent from AWS?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So what operating system can we choose for our EC2 instances?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Three options, Linux, and is going to be the most popular, Windows, or even macOS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: How much compute power and cores you want on this virtual machine, so how much CPU.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you need to choose how much random access memory, or RAM, you want, and how much storage space.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: Amazon EBS, Amazon EFS
- Key Insights: So, for example, do you want storage that's going to be attached through the network, and we'll see about it with EBS or EFS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Or do you want it to be hardware attached?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: In this case, it will be an EC2 instance store.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we have a whole section on storage, so don't worry about it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then finally, the type of network you want attached to your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So do you want a network card that's going to be fast?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What kind of public IP do you want?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And finally, we need to handle the firewall rules of our EC2 instance, and that is the security group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Platform Design
- Services: AWS Config, Amazon EC2
- Key Insights: And I lied, finally, finally, there's the bootstrap script to configure the instance at first launch, which is called the EC2 User Data.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we have lots and lots of options, and as you'll see in the hands-on, even more options at other certification levels that you need to know in EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But at a core of it, what you need to remember is that you can choose pretty much how you want your visual machine to be, and you can rent it from AWS, and that is the power of the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can do this by just in the blink of an eye, really.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So it is possible to bootstrap our instances using the EC2 User Data script.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what does bootstrapping mean?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, bootstrapping means launching commands when the machine starts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that script is only run once, and when it first starts, and then we'll never be run again.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 38:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the EC2 User Data has a very specific purpose.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: It is to automate boot tasks, hence the name bootstrapping.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 40:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: So what tasks do you wanna automate usually when you boot your instance?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, you want to install updates, install software, download common files from the internet, or anything you can think of, really, anything you can think of.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So it could be whatever you want, but just know that the more you add into your User Data Script, the more your instance has to do at boot time.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Simple, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: By the way, the EC2 User Data Scripts runs with the root user, so any command you have will have the sudo rights, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So this was a short introduction to EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Don't worry, it's gonna get very, very practical very soon.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Welcome.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So in this lecture we are going to launch our first EC2 instance running Amazon Linux.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So for this we'll be launching our first EC2 instance, which is well a visual server and we'll use the console for this.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: We'll get a high level approach to all the various parameters you have when launching an EC2 instance, and you'll see there are many, but we'll learn the most important ones.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then we will launch a web server directly on the EC2 instance using a piece of code we will pass to the EC2 instance that is called the user data.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Finally, we'll learn how to start, stop and terminate our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So let's get started and launch our first EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: For this, I'm gonna go into the EC2 Console, then I will click on Instances and then click on Launch Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So in there I'm able to launch my first EC2 instance and to do so I need to add a name and tags.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So the name is going to be My First Instance and that is an app that is the name tag.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And if you wanted to add additional tags to tag your instance differently, then you could click there, but you don't need to click on this using just name as My First Instance is good enough.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Next, you need to choose a base image for your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: This is the operating system of your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see, there's a full catalog that you can search from, but we're going to use the ones from the quick start that are very, very helpful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the one we'll be using is the Amazon Linux, which is provided by AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So in it I will choose the Amazon Linux 2 AMI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you can see that one is free tier eligible.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll just leave it as is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this gives me Amazon Linux 2 and the architecture I will choose is 64-bits x86.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So everything left pretty much as a default and we'll see in this section and more and the other ones, you can create your own AMIs and you can found them in here, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But currently we're just going to use the ones provided by AWS as quick starts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Next, we need to choose an instance type.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so instance types are going to differ based on the number of CPUs they have, the amount of memory they have and how much they cost.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see right now I have a t2.micro selected.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This one is free tier eligible, so it will be free to launch one of them during an entire month if we leave it running.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is what we'll be using.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: But in here you could scroll down and look at other types of instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, t1.micro is also free tier eligible, but that's older generation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And as you can see, you have a bunch of instances right here available to you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Some of them are going to be free tier eligible, some of them will not.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And by default, the one that's gonna be free tier eligible is a t2.micro.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll be using that one a lot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: If you wanted to compare the instance types, you would just click on that link and it shows you all the type of instances in here as well as how much memory they have and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So right now we'll be using a t2.micro.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay next, a key pair to log into your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So this is necessary if we use the SSH utility to access our instance and we will be using the SSH utility in this course.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Therefore, it is required for us to create a key pair.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as we can see right now there is no key pair and we could proceed without a key pair, but for now we won't do this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So let's go ahead and create a new key pair and the name is going to be EC2 Tutorial.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you need to choose a key pair type.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll be using the RSA encrypted, okay, this is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then the key pair format.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you have Mac or Linux or Windows 10, then you can use the .pem format.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you have Windows less than version 10, for example Windows 7 or Windows 8, then you can do our shortcut and directly use a ppk, which is going to be used for PuTTY and PuTTY is how you do SSH on windows 7 and Windows 8.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So remember anything else but Windows 7 and Windows 8, choose .ppm else use ppk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, I should be clear enough, I'm going to create this key pair and it is downloaded for me directly.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now it is selected automatically here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next we have to go into network settings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for now, I will not touch anything.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: My instance is going to get a public IP and then we need to connect to our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 51:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: And so for this, there's going to be a security group attached to our instance, which is going to control the traffic from and to our instance, and therefore we can add rules.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And the first security group created will be called launch-wizard-1.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So created by the console directly and we can define multiple rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the first rule we want to have is to allow SSH traffic from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So we leave it as this and this will create a rule in our security group to allow SSH traffic, but we also want to allow HTTP traffic from the internet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we'll tick that box and this is because we're going to launch a web server on our EC2 instance, so we need it as well.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As we're now going to use HTTPS for now, we don't need to tick the second box.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: Let's configure the storage so then we can configure the storage.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as we can see we have eight gigabits gp2 root volume that will leave it as is, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: Because in the free tier we can get up to 30 gigabytes of EBS general purpose SSD storage.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we only have one volume necessary.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 63:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: If you go into advanced, you could configure them and see a little bit more information, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the one important thing to note in here is the delete on termination.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: By default, it is unable to yes, I just did advanced to show you that one detail, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: That means that once we terminate our EC2 instance, then that volume is also going to be deleted.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we leave everything as is and we'll be get back into the simple mode.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next, for advanced details, this is where it gets interesting.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So I will skip spot, I will skip IAM instance profile.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Don't worry, I will go over them once we need to explore them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will skip all of that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's scroll down.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's scroll down, let's scroll down all the way to the bottom.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And at the bottom there is user data.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: User data is when we pass a script.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So some comments to our EC2 instance to execute on the first launch of our EC2 instance and only the first launch.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And therefore on the first launch, we want to be able to pass these command right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So for this, you go into your code, you go to the EC2 fundamentals, and then the EC2 user data set file, you copy entirely this, so all of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you paste it here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you paste everything.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And that means that this script is going to be executed when the instance is first started and only once, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 83:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: In the whole lifecycle of the instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And what it's going to do is that it's going to update a few things, then install the HTTPD web server on the machine and then write a file, an HTML file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That will be our web server.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so you don't need to know code or know these commands.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is provided to you to illustrate a few things on this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So finally for summary, we want to start one instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 90:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is great and we can review everything we have here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It all looks good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We are very happy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you can see in the free tier, we get a first year of 750 hours of 2.micro, which is running it for one month.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's every month.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 95:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you don't have a t.2micro in your region, then it's going to be a t3.micro, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 96:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: And then also we get 30 gigabytes of EBS storage and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 97:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So let's launch this instance and the instance is going to be launched.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 98:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Let's go to View all Instances, Refresh.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 99:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And now my instance is in pending state.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 100:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So it's gonna take about 10, 15 seconds for the instance to come up.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 101:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is the whole power of the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 102:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Thanks to the cloud, I am able to create an instance or 100 of them very quickly in less than 10 seconds without me owning any single server.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 103:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that is extremely powerful and we just scratched the surface of the power of the cloud, obviously because the course is just getting started, but you can get a feeling of the advances and the speed we can have on the cloud thanks to this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 104:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So as you can see now my instance is running and right now I wanna show you a few things, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 105:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: The first one is that the instance name is My First Instance, and there's an instance ID which is just a unique identifier for my instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 106:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There is a public IPv4 address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 107:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: This is what we're going to use to access our EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 108:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Or there is a private IPv4 address, which is how to access that instance internally on the AWS network, which is private.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 109:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: The instance site is running and we get some information around host name, private DNS, which instance that we have.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 110:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So t2.micro as well as if you scroll down the AMI we're using, which is Amazon Linux 2, and the key pair we're using, which is EC2 tutorial, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 111:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can have a look at a few details in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 112:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have more information.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 113:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: For example, on security, we get some information on the security group, which was created called launch-wizard-1 with these inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 114:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So port 22 accessible from everywhere and port 80 accessible from everywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 115:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you should have something similar, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 116:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you don't start over because you probably missed a step.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 117:
- Concepts: Compute Platform Design
- Services: Amazon RDS
- Key Insights: And the rule allowing all communication outwards, which allows the instance to access the internet.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 118:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For storage we saw that, yes, we created one volume of eight gigabytes, so we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 119:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So now let's have a look at the web server running on my instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 120:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for this you go on public IPv4 address, you copy this or you click on Open Address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 121:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, it doesn't work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 122:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Or if you click on it, copy and then paste it, you press Enter, it's going to work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 123:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it depends on the web browsers you have and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 124:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 125:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But the reason it doesn't work here is that in the URL you need to make sure that you're using the HTTP protocol, so http:// and then the IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 126:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Because if you use HTTPS, this is not going to work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 127:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's going to give you an infinite loading screen which was happening right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 128:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So please make sure to use http:// and then the IP address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 129:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you're going to get this screen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 130:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in programming, when you do something for the first time, you usually say Hello World.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 131:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this web server is saying, Hello World from and this IP right here, which is not the public IP, this IP right here, 172-31-33-135 actually corresponds to the private IPv4 address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 132:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is something that I program myself.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 133:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we use the public IP address to access it, but we have the private IP address in here and we have the hello world.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 134:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you go too fast, you're going to get no messages.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 135:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you go too fast, just wait five minutes, get back to it, refresh this page and you'll see it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 136:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so cool, we have a web server running, this is great.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 137:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let's explore a few options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 138:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we have an EC2 instance and it's running, but if we don't need it, we can go to instance states and then click on Stop Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 139:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And in the cloud you can start and stop instances just as you wish.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 140:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And why would you stop an instance?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 141:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, the longer you leave it running, the more you're going to pay of course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 142:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: But if you decide to stop an instance, then AWS will not bill you for it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 143:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: The instance state is kept because you have a volume attached to it, but at least you're not paying for it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 144:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we can see right now, well the instance is in a stopping state, and if we try to refresh this page, it's going to, of course it's not going to work because well you don't have the server running anymore.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 145:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can see it gets to some like infinite loading experience.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 146:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 147:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So my instance is now stopped and if I wanted to actually I could get rid of it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 148:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And in the cloud it's very common to start instances and then get rid of them.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 149:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We're very quickly just to try it out because this is the cloud and we can do whatever we want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 150:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we can do in instance state and then terminate instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 151:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: If we do so, we're going to get a warning message and don't click on Terminate because I want to keep this instance with me, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 152:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But this is how we would get rid of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 153:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So I cancel this, but what I'm going to do now is I'm going to start my instance again.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 154:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So I go to Instance State and then Start Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 155:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now as you can see, the state is pending, so it is getting started and I just wait for it to be started in the green state and I will show you something very interesting.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 156:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, so my instance is now running, and if I go here and stop the refresh and try again to refresh, as you can see, it still goes into an infinite loop.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 157:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, you may say while the server is running, Stefan.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 158:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So why is it not displaying the message now?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 159:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It is displaying here, but like from the old one, of course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 160:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here the IP start with 54, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 161:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But here, if you click on here, now the public IP start with 3.250.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 162:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the public IP actually has changed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 163:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if you stop an instance and then you start it later on, then AWS will maybe change its public IPv4.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 164:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So therefore you need to copy the new IPv4, make sure to use HTP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 165:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And voila, we have access back to our EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 166:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: But one thing that has not changed is the private IPv4, the private IP will always stay the same, but the public IPv4 may change.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 167:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 168:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So well, so that's it for this hands-on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 169:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have seen quite a lot of things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 170:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: We've launched our first EC2 instance, which is very exciting.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 171:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Our first web server in the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 172:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We've had to look at some of the power of the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 173:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: You're just using some API calls to stop an instance, start instance, and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 174:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/034_EC2 Instance Types Basics.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Okay, so now let's talk about EC2 instance types.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So there are different types of EC2 instances that you can use for different use cases, and they have different types of optimization.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And let's go check out this link, and we'll see we have for now seven different types of EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: So this website on the AWS website is what we're interested into.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And as we can see, we have different types of instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We have general purpose, computer optimized, memory optimized and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so for each type of instance, we have different families.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: And so, as we can see, this website is going to be the reference for us to look at EC2 instance types and know their costs and other specificity.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What I'm going to do though is just walk you through a high level overview of how they work in AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: AWS will have the following naming convention.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: For example, we'll be talking about a m5.2xlarge.instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What does that mean?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Well, M is going to be called the instance class, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And this is going to be, for example, in this case a general purpose type of instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Five is generation of the instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as it improves the hardware over time, it will release a new generation of hardware.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so after m5, if they improve the m type of instance class, then it will go to m6.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then finally, the 2xlarge represent the size within the instance class.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it starts as small and then large, and then 2xlarge, 4xlarge and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So it represents the size of the instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the more the size, the more the memory, the more the CPU you're going to have on your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So from an exam perspective, what do you need to know?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Well, we'll talk about a few different type of instance types.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you have general purpose, and these are great for diversity of workloads, such as web servers or code repositories.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: They will have a good balance between compute, memory, networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so in this course, we'll be using general purpose instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We'll be using the t2.micro, which is the free tier general purpose type of instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: Amazon EBS
- Key Insights: On the website that I just showed you, you will see all the different types of instance that are general purpose, and this is gonna evolve over time so I won't update this slide, but you can always refer back to the AWS website to check what the instances are in the general purpose type of family.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: Then we have compute optimized, and these are instances that are great and optimized for compute intensive tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what requires a high level of processor?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: Well, for example, it could be if you're batch processing some data, if you're doing media transcoding, if you need high performance web servers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: If you're doing high performance computing, it's called HPC, if you're doing machine learning, or if you have a dedicated gaming server.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: So all these things are tasks that require a very good CPU, a very good compute side.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so EC2 instances do have this kind of particularity.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And for now, all the compute optimized instances in EC2 are of the C name, so C5, C6 and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Next, we have some EC2 instances that are memory optimized, and they're going to have a really fast performance for the type of workloads that will process large data sets in memory.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So memory means RAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so the use cases are, this is going to be high performance for relational or non-relational databases that are mostly going to be in memory databases.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Distributed web scale cache store.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: Amazon ElastiCache
- Key Insights: So for ElastiCache, for example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In memory databases that are optimized for business intelligence or BI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And applications performing realtime processing of big unstructured data.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So in terms of the names for the memory optimized instances, that's going to be the R series because R stands for RAM.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But there's also going to be X1, High Memory and Z1.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Again, you don't need to remember the name of the instances, but good to know at a high level.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, and finally we'll have storage optimized instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They're great when you are accessing a lot of data sets on the local storage.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so the use cases for storage optimized instances are going to be high frequency online transaction processing, so OLTP systems, relational and NoSQL databases, and we'll see those in detail when we get to the database sections.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Cache for in-memory databases, for example, Redis.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Data warehousing application, distributed file systems, and the storage optimized instances in AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll start with a I or D or H1, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But again, don't have to remember this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'm just giving you examples.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what does it mean?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Let's compare a few instance types.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for example, for t2.micro, we have one vCPU and one memory, one gigabytes of memory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you look for example at the r5.16xlarge, we have 16 vCPU and 512 gigabytes of memory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can see there's a lot of more emphasis on the memory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If we compare it for example to a c5.d.4xlarge, we can see we have 16 vCPU and 32 gigabytes of memory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: So less memory, more CPU and so on, different network performance, different EBS bandwidth and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So just to give you a point of comparison.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Platform Design
- Services: Amazon EBS
- Key Insights: And if you wanted a website to compare all the instances together, there's one that I really like.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 63:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: It's called ec2instances.info, and I'll show it to you right now.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 64:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So I am on the ec2instances.info website, and as we can see, we have a list of all the instances available in AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So really a lot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We also get some information around the Linux On Demand cost, the Linux Reserved cost and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So some cost information.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We get information around the memory, the number of vCPU.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We can order by name, we can search it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: So it's quite handy, and I really like this website.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: And if you go and use AWS, you probably will use this website as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/035_Security Groups & Classic Ports Overview.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Let's talk about these firewalls around our EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Operational Guardrails
- Services: AWS Config
- Key Insights: So we briefly configured one in the previous lecture, but security groups, yet again, are going to be fundamental into doing network security in the AWS cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: They will control how the traffic is allowed into and out of your EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Security groups are going to be very easy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They only contain allow rules.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can say what is allowed to go in and to go out.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: And security groups can have rules that reference either by IP addresses, so where your computer is from, or by other security groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So as we'll see, security groups can reference each other.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here, let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: We are on our computer, so we are on the public internet, and we're trying to access our EC2 instance from our computer.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: We are going to create a security group around our EC2 instance, that is the firewall that is around it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And then this security group is going to have rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And these rules are going to say whether or not some inbound traffic, so from the outside into the EC2 instance is allowed.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And also if the EC2 instance can perform some outbound traffic, so to talk from where it is into the internet.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let's do a deeper dive, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: Security groups are a firewall on our EC2 instances, and they're going to really get and regulate access to ports.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They're going to see the authorized IP ranges.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Would it be on IPv4 or IPv6?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: These are the two kinds of IP on the internet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: This is going to control the inbound network, so from the outside to the instance, and the outbound network from the instance to the outside.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And when we look at security group rules, they will look just like this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So there will be the type, the protocol, so TCP, the port allowing it, so where the traffic can go through on the instance, and the source, which represents an IP address range.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And 0.0.0.0/0 means everything.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this here means just one IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let's look at a diagram, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So we have our EC2 instance, and it has one security group attached to it that has inbound rules and outbound rules, so I've separated them onto this diagram.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So our computer is going to be authorized on, say, port 22, so the traffic can go through from our computer to the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But someone else's computer that's not using my IP address because they don't live where I live, then if they try to access our EC2 instance, they will not get through it because the firewall is going to block it, and it will be a timeout.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: Then for the outbound rules, by default, our EC2 instance for any security group is going to be by default allowing any traffic out of it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EBS, Amazon EC2
- Key Insights: So our EC2 instance, if it tries to access a website and initiate a connection, it is going to be allowed by the security group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is the basics of how the firewall works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Now, good to know, what do you need to know with security groups?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Well, they can be attached to multiple instances, OK?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: There's not a one-to-one relationship between security group and instances, and actually an instance can have multiple security groups too.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Security groups are locked down to your region/VPC combination, OK?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECR
- Key Insights: So if you switch to another region, you have to create a new security group, or if you create another VPC, and we'll see what VPCs are in the later lecture, well, you have to recreate the security groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: The security groups live outside the EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So as I said, if the traffic is blocked, the EC2 instance won't even see it, OK?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: It's not like an application running on EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: It's really a firewall outside your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: To be honest, and that's just an advice to you from developer to developer, but it's good to maintain one separate security group just for SSH access.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Usually SSH access is the most complicated thing, and you really want to make sure that one is done correctly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So I usually separate my security group for SSH access separately.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: If your application is not accessible, so timeout, so we saw this in the last lecture, then it is a security group issue, OK?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: So if you try to connect to any port and your computer just hangs and waits and waits, that's probably a security group issue.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: But if you receive a connection refused error, you actually get a response saying connection refused, then the security group actually worked, the traffic went through, and the application was errored or it wasn't launched or something like this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is what you would get if you get a connection refused.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: By default, all inbound traffic is blocked and all outbound traffic is authorized, OK?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Elasticity and Availability, Operational Guardrails
- Services: Elastic Load Balancing
- Key Insights: Now there is a small advanced feature that I really, really like, and I think it's perfect if you start using load balancers, and we'll see this in the next lecture as well, which is how to reference security groups from other security groups.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let me explain things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So we have an EC2 instance, and it has a security group, what I call group number one.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And the inbound rules is basically saying, I'm authorizing security group number one inbound and security group number two.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So why would we even do this?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: Well, if we launch another EC2 instance and it has security group two attached to it, well, by using the security group run rule that we just set up, we basically allow our EC2 instance to go connect straight through on the port we decided onto our first EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 55:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: Similarly, if we have another EC2 instance with a security group one attached, well, we've also authorized this one to communicate straight back to our instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And so regardless of the IP of our EC2 instances, because they have the right security group attached to them, they're able to communicate straight through to other instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's awesome because it doesn't make you think about IPs all the time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And if you have another EC2 instance, maybe with security group number three attached to it, well, because group number three wasn't authorized in the inbound rules of security group number one, then it's being denied and things don't work.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 59:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So that's a bit of an advanced feature, but we'll see it when we'll deal with load balancers 'cause it's quite a common pattern.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I just want you to know about it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Again, just remember this diagram.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And by now you should be really, really good at security groups and understand them correctly.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, going into the exam, what ports do you need to know?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, we need to know something called SSH or secure shell.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we're going to see this in the very next lectures.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is the port 22.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And this allows you to log into an EC2 instance on Linux.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have port 21 for FTP or file transfer protocol, which is used to upload files into a file share.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you have SFTP, which is also using port 22.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, because we're going to upload files, but this time using SSH, because it's going to be a secure file transfer protocol.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we have port 80 for HTTP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we've been using it in the previous lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: This is to access unsecured websites.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: And you've seen this whenever you go on the internet and you enter HTTP colon slash slash, and then the address of the website.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you've seen most likely a lot more like this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: You've seen HTTPS, which is to access secured websites, which are the standard nowadays.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for HTTPS, it is port 443.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Finally, the last port you need to remember is 3389 for RDP or the remote desktop protocol, which is the port that's used to log into a Windows instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 80:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: OK, so 22 is SSH for Linux instance, but 3389 is RDP for a Windows instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 81:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Now, this is all the theory about security groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture for some practice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/036_Security Groups Hands On.txt

Line 1:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So we've launched our EC2 instance and now let's have a look at security groups.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So we have a short idea of security groups by just clicking on security in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: And we get some overview of the security groups attached to our instance as well as the inbound rules and the outbound rules.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: But what I will do is that I will just access the more complete page of security groups from the left hand side menu.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So under networking and security, you click on security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And we can see so far that we have two security groups in our console so far.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So the default security group that is created by default as well as the launch wizard one which is the first security group that was created when we created our EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And so a security group has an ID.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So an identifier, just like an EC2 instance has an ID.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we can check the inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the inbound rules are the rules that allows connectivity from the outside into the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we have two inbound rules in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the first one is of type SSH, which allows port 22 in our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And let me just click on edit inbound rules to see better.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So set first one as SSH on port 22 from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So 000/0 is anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the second one is HTTP from port 80, again, anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this rule right here is what allowed us to access our web servers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if you go back to the EC2 console, go to our instance and we were doing this IPv4 address.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: Okay, so we were opening it as an HTTP website.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This worked thanks to this rule, port 80.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's verify this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if we delete this rule on port 80 and save the rules, as we can see now we only have port 22.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if I go back to this and refresh my page, now as we can see, there is an infinite loading screen right here on the top of my screen, which shows that well, indeed I don't have access to my EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here is a very important tip for you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Any time you see a timeout, okay, this is a timeout because it keeps on trying to connect but it doesn't succeed and then it will eventually fail, called a timeout.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So if you see a timeout when trying to establish any kind of connection into your EC2 instances, for example, if you try to SSH into it, but there's a timeout, or if you try to do an HTTP query, but there's a timeout, or if you try to do anything with it and there is a timeout, this is 100% the cause of an EC2 security group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Okay, so in that case, go to your security group rules and make sure that they are correct, because if they're not correct, then you will get a timeout.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So to fix this, we can add back a rule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We will do HTTP, which allows to get port 80 in here automatically.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then from anywhere IPv6, IPv4, excuse me, right here, which allows this block right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We save the rule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now the rule is done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If I go back to my page and refresh as you can see, now it is fully working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this inbound rule really did the trick.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But we could add any sort of inbound rule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we could define the port or the port range that we want to.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we could say, for example, any port we want, for example 443, which is HTTPS or choose directly from a dropdown here as a little shortcut the type of protocol you want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, HTTPS is 443 automatically.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you can define where you want to allow from.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So you have different CIDR blocks and we don't need them right now, or security groups or prefix list, but we'll get to see them later on, okay, in this course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For now, just know that you could have either a custom CIDR anywhere which adds this blog or if you want to, can select my IP to only allow access to your IP.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 43:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But just be aware that if your IP changes, then you will get a timeout and will not be able to access your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Finally, one last bit of information.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can have a look at outbound rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we allow all traffic on IPv4 to anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So this allows our EC2 instance to get full internet connectivity anywhere.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 48:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And something you should know, so we have two security groups right here default and launch wizard, and an EC2 instance can have many security groups attached to it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 49:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So it can attach one but two or three if you want maybe five security groups and the rules will just add on to each other.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And also this security group we have created from default so for example, this launch wizard one can be attached to other EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 51:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: Okay, so you can attach as many security groups as you want as well as as many EC2 instances you want to one security group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/037_SSH Overview.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You're getting to one of the trickier bits of running in the Cloud, which is how do you connect inside of your servers to perform some maintenance or action.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, for Linux servers, we can use SSH to do a secure shell into our servers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So based on the operating system you have on your computer, you have different ways of achieving it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I have separated Mac, Linux, Windows before version 10 and Windows after version 10.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the SSH is a command line interface utility that can be used on Mac or Linux as well as Windows over version 10.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then if you have Windows less than version 10, you can use something called putty.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Putty will exceed the exact same thing as SSH.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So when I say you should SSH, if you're on Windows, you can use putty.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And putty is valid for any version of Windows.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: They do the exact same thing, they allow you to use the SSH protocol to connect into your EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then finally, there's something new called the EC2 Instance Connect, which is going to use your web browser.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So not a terminal nut putty your web browser to connect to your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I like it a lot because it is valid for Mac, Linux, Windows, all versions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The cool thing about EC2 Instance Connect is that it works, but it only works for now with Amazon NX2 And this is why I've been using Amazon NX2 in this tutorial.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now what should you do?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you are on Mac or Linux, then please watch the SSH lecture on Mac/Linux.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you're on Windows, then you can either watch the Putty Lecture or if you have Windows 10, then I have created an SSH on Windows 10 lecture as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Regardless, I am going to personally use in the future lectures, EC2 Instance Connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you wanna have a look and play with it, I find it really simple.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: You don't need to install anything or use the command line interface if you're not familiar with it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this could be very handy for all of you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Nonetheless, SSH is in my experience and I've taught hundreds of thousands of students what caused the most troubles in this course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So if you get a problem with SSH we can re-watch the lecture, you may have missed something, maybe a security group rule, maybe you command, maybe a typo, I don't know you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There's also a troubleshooting guide that I've put together after these lectures so have a look.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I would recommend your try, EC2 Instance Connect as well as sometimes fixes all problems.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if none of these method works, sorry if one method works, then you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You don't need to have them all working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If one works, you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if no method works, that's completely okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This course is just introductory and he won't use SSH much and you'll be fine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it that just for the introduction.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now find your right lecture and it will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/038_How to SSH using Linux or Mac.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So now we're going to add SSH into our EC2 Instance using our Linux or our Mac computer.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you may say, what the hell is SSH?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What are you talking about Stephane?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, SSH is one of the most important function when you deal with Amazon Cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It basically allows you to control a remote machine or server, all using your terminal or your command line.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how does that look like with the diagram?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, we have our EC2 machine, and we launched Amazon Linux 2 on it and our machine has a public IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now we want to access that machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And so for this, I don't know if you remember but we have a security group and on it we allowed the Port 22 of SSH.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So what's going to happen is at our computer, so my laptop for you, for me, or whatever for you, then we'll access over the web.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Through that Port 22, it will access the EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Basically, our command line interface is going to be just as if we were inside that machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's get started.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we are going to SSH into our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So remember that PEM file you've downloaded called EC2 Tutorial.pem?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Please make sure to remove the space in it if you have a space, even if you have a PPK file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Please rename it and remove the space from it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So EC2Tutorial.pem is removed for me.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, you go ahead and place it in a directory you like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for me, I took my file and I pasted it, and I placed it in a folder called aws-course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is the first step to making sure you are ready.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So next, what I'm going to do is that I am going to go in my EC2 instance overview page and find my first instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So here we have my first instance and we're going to SSH into it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're going to open a remote terminal into it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for this, I need to get the public IPv4 address, so I can copy this, and I will use it later.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: The other thing I need to do is to look at the security of my instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So again, if you did everything with me, then your security groups have this rule in it called Port 22 which is the SSH port from anywhere by 0.0.0.0/0.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you have that rule, then you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: If not, please click on the security group and add the missing rule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next, I need to try to do an SSH.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So first of all, ssh ec2-user@ and then the IP you have.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the reason we do ssh ec2-user is because the Amazon Linux 2 AMI has one user already set up for us and that user is named ec2-user.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we have at, to say that we want to access that user on the specific server.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, we have the IP right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: This is the public IP of our EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we try this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we do SSH and then we're going to get a too many authentication failure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So that means that we don't authenticate into our EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, that makes sense because we haven't specified the key that we downloaded from before yet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You may get another kind of error but right now this is the one I get.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So for this, we need to reference the file we just downloaded called EC2Tutorial.pem into our command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So make sure again, there is no space.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, you need to make sure your terminal is exactly where your file is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if I do ls right here to list the files in my folder and I'm sorry if this is too advanced for you but I have to cover the grounds for everyone.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if I do ls, as you see right now, it says EC2Tutorial.pem that's because I placed my command line in the correct directory on my computer.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, if you were not in the correct directory, for example if I was line level up, so I do cd .., which puts me one level up, then I do ls.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Of course, I don't see my EC2Tutorial.pem.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So to do so, what you can do is just check where you are.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So pwd is where you are.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, I'm in user stephanemaarek and I know that I placed my folder aws-course within my home.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So right under user stephanemareek, there is aws-course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, then I know that I can do ls or ll just to confirm that my folder exists.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see right here is my aws-course folder, so this is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what I do is I will do cd and then aws-course which now puts me in the directory of my aws-course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if I do pwd, I am in the correct directory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And if I do ls, I can see my EC2Tutorial.pem file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The reason we have to do this is that because now in the next command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the SSH command, you do ssh -i then you specify the EC2Tutorial.pem file and that will not work if you're not in the correct directory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So please make sure to get there and if you're missing the bit of the Linux here, please try to go online, but I should be good with what I showed you.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 67:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then, ec2-user@ and we reference the public IP of our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this one right here, we reference it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Press enter, and now we get another kind of error which is saying that we have an unprotected key file and we need to change the permissions for it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for that reason, we'll have to enter another command and that command is chmod.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So chmod 0400, and then we pass in the file itself so EC2Tutorial.pem.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So I clear my screen and then I'm going to try the exact same command as before.
- Hidden/Implicit Meaning: Platform automation signal.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I press enter and I am logged into my machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So you may have seen a screen where they prompt you for yes/no to trust the instance as well, just enter yes if you do get that screen.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 75:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So as you can see, now I have done the SSH into my instance and now it says ec2-use at this IP, which means that now all the commands are issued are going to be issued directly from the Amazon Linux 2 AMI EC2 instance that I've just launched from before.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's try a few commands.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: For example, if you do whoami then it says ec2-user or I can ping google.com and we see the google.com is responding to our pings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we can launch some commands directly from the Amazon Linux 2 AMI, and I did control C to stop that command, Now to exit the instance itself, you can either type exit and I think this should work, or you do control G and then you will close the connection into the EC2 instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 79:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And if you ever want to get back into it remember this command, ssh -I EC2Tutorial.pem if you are in the correct directory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Please make sure to do so.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: As well as ec2-user@ and then the public IP of your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 82:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Remember that if you stop and then start your instance then the public IP can change.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So make sure to change that part as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/039_How to SSH using Windows.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we are going to learn how to SSH into our EC2 Instance using Windows.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for this, we used to say, what is SSH?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, SSH to me is one of the most important function, especially when you deal with Amazon cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It will basically allow you to control a machine remotely all using the command line.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so what does it look like?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, basically we have our EC2 machine, and it's running Amazon Linux 2, and it has a public IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And I don't know if you remember, but we had an SSH security group on it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And basically we allowed SSH on port 22 to any IP, which basically allows our Windows machine to connect over the internet directly into the machine and control it using the command line.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll see how to do the requirements for parameterizing basically our Windows.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so we'll use PuTTY to do SSH.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is a free tool available online.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, it's a little bit tricky to use the first time, but we'll get used to it, and we'll learn how to SSH into Windows, into Linux using PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's get started.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we are going to SSH into our EC2 Instance and I'm running on Windows.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for this, I assume that you have Windows 7, or Windows 8, or an older version Window.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you have Windows 10, there is an alternative in the next lecture, both work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's try for, even if you're on Windows 10 you can do this technique.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, you would go and download PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So PuTTY is a free SSH client for Windows.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So download PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then I will choose, for example, the 64 bits installer, the first one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then I go ahead.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I perform the install of PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So next, next, yes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And yes, I want to install PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So PuTTY is installed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I have to install PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we have two things here on PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have the PuTTY app, as well as PuTTYgen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's first open PuTTYgen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in case you did not download your file in the PPK format, you can actually generate the PPK format directly from here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let me show you how it's done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, I need to go ahead and load my file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I click on load, and then find where my file is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for me, it's on my desktop.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And you can see, I see nothing, but if I go to the bottom right, and show all files I will find my EC2 tutorial in the PEM format.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I can select it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It says, okay, you have successfully imported this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you can save it as a private key.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So click on save private key.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And said you wanna have a pathways, you say, if you don't wanna have path, you say yes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you save it on your desktop.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So EC2tutorial.PPK Now your file is saved and you have converted successfully a PEM file into the PPK format.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you have done this already, then you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Next, we need to set up PuTTY to access our EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this time you open the PuTTY app, and here we have to enter a host name or an IP address of where we are trying to connect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So this we know it's My First Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You copy the public IPv4 address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You paste it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it's SSH.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: You're going to save this under EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you click on save, but we're not done just yet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We need to specify the key itself.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's specify the key in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So, you have it saved under EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I double clicked.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, I have to accept this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if we accept because we trust the host, we say, yes, accept.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But we still have the login as prompt and it will not work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if I do, for example, EC2 user, it says okay, I cannot authenticate right now.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, we go back into PuTTY, and we're going to fix things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So click on EC2 Instance and load this profile.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first thing I'm going to add is in the host name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I have EC2 minus user at the IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the IP is where we access our server, and the EC2 user is a user already created for us on Amazon Linux 2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I can click on save again.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're done in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This will be saved.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then for the key, we need to go into the SSH.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You click the plus, you have the Auth, you click the plus, excuse me, no need to click the plus.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you just click on Auth, and then you need to find a private key file for authentication.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Click on browse, go to your desktop.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then you find the EC2 tutorial, that PPK file, you have just generated using Puttygen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Or, if you had downloaded it already from the AWS console, that works as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this file is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Don't click on open just yet, go back to session, and then click on save, to save this profile.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This way you don't have to redo all these steps all at once, over again.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So click on open.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And now it says, okay, you're authenticating using the EC2 user.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we have this file we just opened.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so now we are into our Amazon Linux 2 AMI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have successfully performed the SSH using PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if in the course I refer to SSH, just for you, just that means you should PuTTY into the Instance, at least once.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now what I can do, who am I?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And you find that I am EC2 user.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Or ping google.com and start running some commands.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So to stop this, just do control C, and it will stop the command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 95:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then if you want to just exit this, you can just close this, exit this session, and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 96:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And let's check if you go back into PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 97:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So click back on PuTTY, and you load the EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 98:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Hopefully all you're seeing there is save.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 99:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, the top settings are saved, and my SSH Auth also has saved.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 100:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And therefore, if I click on open, then yes, I have access directly into my EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 101:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we've successfully performed SSH on this Windows 7 or Windows 8, through PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 102:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture in case you have Windows 10, to show you how to SSH using Windows.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/040_How to SSH using Windows 10.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So on Windows 10, we can use the SSH command, so I opened Windows PowerShell and I typed SSH and if you see this, that means that it's available.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, you can also use the command prompt and do SSH and if you see this, that means the command is available.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you don't see the SSH command on your Windows, that means that you don't have it and therefore, you must use the patching method I just showed in the previous lecture.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: In my instance, I'm just going to use PowerShell to do these exercises, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, next what I have to do is to actually run this SSH command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the first thing I have to do is to be in the directory of where my pem file is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So right now, I'm in C:\users\stephanemaarek and I do ls, and as you can see, well, I don't have my pem file because it's under, for me, under desktop.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So I do cd.\Desktop to just change directory, I clear my screen then I do ls again and I can see my EC2Tutorial.pem file which is the one I downloaded, as well as the ppk file but this is not relevant, if you don't have it, it is fine, this is only if you want to use PuTTY.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The only file that is of relevance for us is the EC2 tutorial.pem file.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Okay, so we need to make sure that on the security group of course we have the port 22 open for SSH, which we do and next we need to enter our SSH command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, it is very similar to the one we have on Mac, so we do SSH minus I then you pass in the name of the tutorial file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So I did to get this, I did EC2 and then I press tab and I get auto suggested the EC2Tutorial.pem file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I press tab again, I can switch between ppk and pem.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Okay so, by pressing tab, I get the autocomplete of this, so I do SSH minus I or you can just type this, EC2Tutorial.pem and then when to type EC2 minus user at and at, well, the public IP of my EC2 instance which is right here, so I copy and paste it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So now this command is saying, please enter this IP using this user, the EC2 user which is the one we have because we use Amazon next to using this key right here, so let's press enter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it says, well, the authenticity of the host cannot be trusted, do you want to continue?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You say, yes and we are in the machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So sometimes you will get permission issues.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So sometimes the permissions will not be happy and I will show you how to fix them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So first let's exit this and clear the screen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in case you get a permission issue when running this command, what you have to do is to find your keys, so for me, it's in my desktop.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You right click on your pem file, you do properties, you go to the security tab and this is where we're going to change permissions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: To do so, we're going to do advanced and the first thing you need to make sure of is that the owner of this file is yourself.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So it's working for me, but you can just click on change and then for object types, you can find yourself, locations make sure it's on your computer and then type the object name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it would be for me, Stefan but I'm already an owner so just type your name and then you can be an owner of this file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The owner is also indicated in here, in your app permission entries.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The second thing you have to do is just remove these entities, so system and administrator don't need to have access to it and we need to disable inheritance.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So first let's disable inheritance, for this, we're going to remove all inherited permissions from this object.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then in here, I just select the principal so myself, I just go enter Stephan Maarek.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as we can see, I did Stephan Maarek in here, check names and this entered my principal name and we are going to give myself full control over this, press okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now the owner is myself and the principal that owns that file is myself as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We do okay and okay, so if I right click again on this file and do properties under security now, I only see myself, Stefan Maarek with full permission.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then if you have that and you do this command again for sure you will not have any permission issues and you will not be prompted with a yes, no question ever again.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to, you could try this command, so let's exit this and we can, for example, open the command prompt, go to my desktop.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Again, if you don't go to desktop, it will not work and then paste in this command and it will work, as well you can do an SSH from the command prompt.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we've successfully seen how to SSH onto our EC2 instance directly from Windows to exit, you can just type exit or do Control + D and we're good to go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now we can get started with this course, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/042_EC2 Instance Connect.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I want to show you an alternative to SSH that I found a lot easier which is the EC2 Instance Connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So for this, you click on My First Instance and then you click on the top, it says connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have multiple options including the SSH client we saw from before.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But one option I wanna show you is the EC2 Instance Connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So this allows us to do a browser based SSH session into our EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For this we verified the public IP address, which is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The username is provided by default, which is EC2 user because it get guessed by AWS that we are using Amazon and X2 and therefore EC2 User is the right username, but if you wanted to, you could override it, but it doesn't work unless you enter EC2 users.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll leave it as is for now, and then, as you see there's no SSH key option, because, well, when we do connect to it, it's going to upload for us a temporary SSH key and establish a connection this way.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So with this methodology, we don't even need to manage SSH keys which I found lovely.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you click on Connect and it's going to open a new tab.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And very quickly you are into your Amazon Linux 2 AMI and you can start running some commands such as whoami or ping google.com.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, everything is working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the cool thing about it is that, well, your session is in the browser instead of using a different command line interface such as terminal and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so you do ping google.com or do any kind of commands you want really on it without using the SSH utility beforehand.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But in this course, if I say use SSH, you have either the option to use your own terminal mssh or to use for example, party, or to use the SSH command on windows or to use, regardless of you here on windows, Linux, or Mac, the EC2 Instance Connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now this is relying on the SSH behind the scenes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: So if I go, for example, to my Instance look at the security group and I want to edit the rules.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So I click on my security group in here, the inbound rules I'm going to edit them and I'm going to remove the SSH inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So I delete it and save the rules and then go back to my EC2 Instances, and I close this one and I'll try to establish a new EC2 Instance Connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So let's connect, as you can see, this is not working because while there's a problem connected to your Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first thing is that you need to open the port 22.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So back into my launch wizard, I can fix this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will edit the inbound rule, add the SSH rule from anywhere IPV4, save the rule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's go back in here and just in case, if it doesn't work for you, sometimes it's because you're using IPV6, excuse me.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So therefore you need to do from anywhere IPV6 as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So you need to add these two entries for your EC2 Instance Connect to work sometimes, depends on your setup.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And now if we try to connect to the Instance itself, so let's try to connect in here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Voila, we are into the Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So there was a quick demo of EC2 Instance Connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will use it a lot in this course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/043_EC2 Instance Roles Demo.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So let's practice using IAM roles for our EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So at first, I'm going to connect to my EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: You can SSH, or you can use EC2 Instance Connect if you wanted to.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I will use EC2 Instance Connect because it's just going to be in my web browser and a little bit simpler.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So back into my instance with EC2 Instance Connect right here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And we are in our Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So as we can see, we are ec2-user@ and the private IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So regardless if you're using EC2 Instance Connects or SSH through your terminal, or whatever, through PuTTY.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Then if you see this, we are at the same stage, okay?
- Hidden/Implicit Meaning: Platform automation signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now you can just do some Linux commands.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, ping Google, and you can get some information out of Google.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will do Control + C to go out of it or issue any kind of Linux commands you want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, you don't need to know the next command going into the exam, but this is just a Linux terminal available to you right now in the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll type clear to clear the screen and next we have to run some IAM commands.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So the cool thing is that's the Amazon Linux AMI we're using right now comes with the aid of a CLI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so, as you can see, it is installed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what we can do is start using some commands.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, aws iam list users.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if we do so, it says unable to look at credentials.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: You can configure credentials by using aws configure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Container Runtime Operations
- Services: AWS Config, Amazon ECR
- Key Insights: So we could indeed run aws configure to configure the credentials and specify an Access ID a Secret Access key, and a region name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But this is a really, really, really bad idea.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design
- Services: AWS Config, Amazon EC2
- Key Insights: And the reason is that if we run aws configure and enter our personal details onto this EC2 Instance, then anyone else in our accounts could again connect to our EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: For example, using EC2 Instance Connect and retrieve the value of these credentials in our instance, which is not what we want.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is something that's really, really bad.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so as a rule of thumb, never, ever, ever enter your IAM APA key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 28:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECR
- Key Insights: So the Access Key ID and the Secret Access key into an EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is horrible and if you see someone doing it, please show them this video.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Instead, what we have to do is use IAM rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So if you remember, when we were in the management console and we were in IAM, we had created an IAM role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So let's go back into the Roles.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: We had this demo role for EC2 that had one policy attached called IAMReadOnlyAccess.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So we are going to attach this role onto our EC2 Instance to provide it with credentials.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so how do we do this?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For this, we can go into Security.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: And as you can see, there is no IAM Role right now onto our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: So what we can do is go back to our Instances, Action, Security, and then Modify IAM role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Here we have to choose an IAM role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So we have DemoRoleForEC2 and click on Save to attach this IAM role into our Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So if you go back to Security, now the IAM role attached to Instance DemoRoleForEC2.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the effect of this is that now if we do aws iam list users and press Enter, where we are getting a response around the users from IAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So as we can see, we did not run the command aws configure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: We just attached an IAM role and ran this command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And as a proof, if we go into this role and detach this permission, so now it's gone, and run the command again, we're getting an access denied.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So the role is really linked now to the EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 48:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And this is how we provide AWS credentials to our EC2 Instances only, only through IAM roles, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 49:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So if we go back to IAM and we attach a policy to this role and go back to IAMReadOnlyAccess, attach this policy and then rerun the command, we get an access denied because sometimes it can take a little bit of time to propagate the changes from IAM into AWS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if we run it one more time, we're getting the output we expect, which is what we want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So this is very important for you to understand this, use IAM roles for your EC2 Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is hopefully good for you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you like this hands-on and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/044_EC2 Instance Purchasing Options.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Hi, and welcome to this lecture on EC2 Instances Purchasing Options.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we've been using so far, on-demand EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: They allow us to run instances on demands, that means they're good for short workloads, we get predictable pricing, and we're going to pay by the second.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if you have different kind of workloads, you can optimize your discounts and your pricing by specifying it to AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: For example, you can use reserved instances and you have one year or three years term, and they're meant for long workloads.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if you know you're going to run a database for a long time, then a reserved instance is great.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Platform Design
- Services: Amazon Lex
- Key Insights: And if you want to have a flexible instance type, so for example, you want to change the instance type over time, then convertible reserved instances are for you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And by the way, don't worry, I'm going to do a deep dive in all of those over time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, next we have savings plan and savings plan are one and three years term, and they're more modern because instead of committing to a specific instance type, you commit to a specific amount of usage in dollars, and there again, for long workloads.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Spot instances instead are meant for very short workloads, they're very, very cheap, but at any time you can lose these instances and that makes them less reliable.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Dedicated host allows you to book an entire physical server and control instance placements.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And dedicated instances means that no other customers will share your hardware.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Finally, capacity reservations allow you to reserve capacity in a specific AZ for any duration.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Now let's look at EC2 on-demand.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you're going to pay for what you use.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that means that if you're using Linux or Windows, you're going to be getting a billing per second after the first minute, or for all the other operating systems, you're going to get a billing per hour.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It has the highest cost but no upfront payments and no long-term commitments.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means it's definitely recommended for a short-term and uninterrupted workload where you cannot predict how the application will behave.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now for reserved instances, and by the way, the numbers I show you can change over time, so I will not update this video every time, but it gives you an idea of what the numbers can be.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So the reserved instances give you a 72% discounts compared to on-demand.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And you reserve a specific instance attributes.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: For example, the instance type, the region, the tenancy, and the OS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You specify a reservation period one year or three years, to get even more discounts, and whether or not you wanna pay upfront, partially upfront, or not upfront.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And all upfront of course gives you the maximum amount of discounts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In terms of the scope, do you want the scope to be into a specific region or a zone?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means reserve capacity in a specific AZ.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so you would use reserved instances for the steady-state usage applications, think for example, for a database.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And you can buy or sell your reserved instances in a marketplace if you don't need them anymore.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And there is a specific kind of reserved instances called the convertible reserved instance, which is allowing you to change the instance type, the instance family, the operating system, the scope and the tenancy.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Operational Context
- Services: Amazon Lex
- Key Insights: And because you have more flexibility, well you get a bit less discounts you get up to 66% discounts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So that's for reserved instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: And now you have the EC2 savings plans which is to allow you to get a discount based on long-term usage, which is the same 70% as reserved instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But instead, you're going to say, "I want to spend $10 per hour for the next 1, 2, 3 years." And any usage beyond the savings plan is going to be billed at the on-demand price.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So with savings plans, you're locked to a specific instance family and region.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Platform Design
- Services: Amazon Lex
- Key Insights: For example, you say, "I want to have M5 type of instance family in us-east-1." But you're flexible across the instance size.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can have m5.xlarge, m5.2xlarge and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The OS, so you can switch between Linux and Windows and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the tenancy, you can switch between host, dedicated and default.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now, for spot instances, they have the most aggressive discounts, so up to 90% discounts compared to on-demand, but they are instances you can lose at any point of time because you define a max price you're willing to pay for your spot instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if the spot price goes over it, then you're going to lose it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So they're the most cost-efficient instances in AWS and they're going to be very helpful if you have a workload that is resilient to failure.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what could they be?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: AWS Batch, Amazon Lex
- Key Insights: Well, it could be batch jobs, data analysis, image processing, any kind of distributed workloads, or workloads that have a flexible start and end time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They are not suited for critical jobs or databases and the exam will test you on that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next we have dedicated hosts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So you get an actual physical server with EC2 instances capacity fully dedicated to your use case.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you want to have dedicated hosts in the use case of, you have compliance requirements or you need to use your existing server-bound software licenses that has billing based on a per-socket, per-core, per VM software licenses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is in these kind of use cases that you need to access the physical server and get a dedicated host.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for dedicated hosts, you get on-demand, and you're gonna pay per second, or you can reserve them for one or three years.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They're the most expensive option of AWS because you actually reserve a physical server.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so again, a use case is when you have a software that comes with a licensing model that is bring your own license.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Or if you have a company that has strong regulatory or compliance needs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We also have dedicated instances, and there are instances that runs on hardware that's dedicated to you, which is different from the physical server.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 54:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM
- Key Insights: But you may share the hardware with other instances in the same accounts and you have no control over instance placements.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 55:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So there's a difference between dedicated instances and hosts, that is here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: At the exam, honestly, it doesn't trick you into one or the other, but remember that dedicated instances mean that you have your own instance on your own hardware, whereas dedicated host, you get access to the physical server itself and it gives you visibility into the lower level hardware.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Next, we have capacity reservations for EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So you can reserve on-demand instances in a specific AZ for any duration.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you get access to that capacity whenever you need it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have no time commitment so you can reserve capacity or cancel your reservation at any time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And no billing discounts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The only purpose is to reserve capacity.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 63:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if you want to get billing discounts, you need to combine it with regional reserved instances or your savings plan.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 64:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And you're charged at the on-demand rates, whether or not you run instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 65:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So that means that your reserved capacity, you're going to be billed for it, and you know for sure that if you want to launch instances they're going to be available, but if you don't launch them, you're still going to get charged.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So they're very suitable for short-term uninterrupted workloads that need to be in a specific AZ.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it gets difficult to understand which purchasing option is right for me, especially if you are a beginner.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But let me give you a summary.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first one is on-demand.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll take a resort as an analogy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And with on-demand, you have a resort and you come in whenever you like and whenever you like, you pay the full price.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For reserved, well, you like to plan ahead and you know you're going to stay a very long time in your resort, one, two, three years, and then you're going to get a good discount because we know you're going to stay long time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Savings plan is saying, "Hey, I know for sure that in my resort I'm going to spend a specific amount.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to spend maybe $300 per month every month for the next 12 months." And therefore, you may wanna change the room type over time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So king, suite, sea view, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: But the savings plan is saying, "Hey, you're to commit to a specific spending in your hotel." Spot instances are whenever the hotel runs very last-minute discounts because they have empty rooms and they wanna attract people.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So they get empty rooms and people bid on getting this empty room.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so you get very, very discounts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But in this specific resort, well, you can get kicked out of at any time if someone is willing to pay more for your room than what you did.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But I don't wanna stay in such a resort.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Dedicated host is saying, "Hey, I want to book the entire building of the resort." So you get your own hardware, your own resort.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then capacity reservation is saying, "I'm going to book a room, I'm not even sure if I don't stay in, but I know that if I want to stay in, I will have it." And you will pay full price for booking that room nonetheless.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In terms of price comparison, I've just put together this table to give you one example at one point of time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I took an m4.large in us-east-1, and the on-demand price is 10 cents, but then the spot price is going to be up to, for example, 61% off in my example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Then if you want to reserve your instance, as you can see, you have different pricing.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you wanted to have for one year, for three years, and pay no upfront or all upfront.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: Same for the EC2 savings plan we see that it is the same as a reserved instance discounts.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 88:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We also get reserved convertible instances and we have dedicated host, which is at the on-demand price.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The dedicated host reservation which is up to 70% off because you reserve your host.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And capacity reservation again at the on-demand price.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So the exam will ask you to just know which type of instance is the right one based on your workloads.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And by now, you should have some good hints, and don't worry, we will practice this over time.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/09_Route 53/092_Route 53 - EC2 Setup.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's get started.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: And before we use Route 53, I want to go ahead and create three EC2 instances in different regions, as well as one ALB.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So in one of these regions I'm going to go into instances and then launch an instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And very simply, I will choose Amazon Linux2 on this architecture, a T2 micro type of instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I don't need a key pair, because I will use, if I need to, I will use EC2 instance connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And then for network settings, I'm going to create a security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will allow SSH as well as HTTP from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then I will just, in advanced details, specify a bootstrap user data script.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, to do so, just go into your Route 53 user script and you copy this entire script.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you paste it here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So what's going to do is it's going to say hello world from the instance, just as before.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2
- Key Insights: But now we're going to add the AZ the instance was launched in, using this environment verbal called EC2, availability, zone that I created from before.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 13:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So it's going to give us a little bit more info about EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So I'm going to go ahead and launch this instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this has been launched and it is right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next I'm going to go into another region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, Northern Virginia, so US East one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then I will launch an instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And same settings.
- Hidden/Implicit Meaning: Platform automation signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So again, no key pair required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So proceed without a key pair.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will allow HTTP as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: And for advanced details, I will provide the exact same EC2 user data script.
- Hidden/Implicit Meaning: Platform automation signal.

Line 25:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Then we click on launch instance and we're good to go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And finally I'm going to go into one last region, for example Singapore.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And in Singapore I'm going to launch an instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we'll leave it as t2 micro, we will choose no key pair.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll allow HTTP from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then, under advanced details, I'm going to paste in the data and launch this instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, so we have three instances now being started in three different regions.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have one in Frankfurt, one in Northern Virginia, and one in Singapore.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Lastly, what I'm going to do is that I'm going to launch a load balancer in Frankfurt, for example.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 35:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So here I'm going to create a load balancer and choose an application load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Create.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then the unique name will be DemoRoute53ALB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is fine, it's going to be internet facing, on IPv4.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will choose for mapping, one, two, and three subnets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And for security group I can choose up to five.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to choose the one that I've created just from before, which was the launch user two, which had AWS and HTTP enabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This way we're sure that HTTP is enabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the protocol is on 80, you're going to forward to a new target group, that we're going to have to create, based on instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I'll call it this one demo tg route 53.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And, what I want to do is next and register my one instance right now that I just created from before.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you do include as pending below.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then on the review targets, you have one target.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then create the target group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the target group is not created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So back into model balancers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I can refresh this and select the demo tg group route 53.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And everything looks good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Let's create our load balancer, and then click on view the balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here we go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now to summarize, let's see if everything has been working properly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So, we have one EC2 instance right here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And let's take the public IP, so I'll just copy the IP itself, make sure using the IP via http.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it says hello world from blah, blah, blah.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is good, so what I'm going to do is that I'm going to, under a text file, just to have a mark of a trace of everything, I'm going to put the IP address as well as the region I'm in.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So EU central one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see, it says hello from AZ EU central one B.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, so this instance is working.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'm just testing whereas everything's working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to also take this public IP right here, paste it in, and it says yes hello from US East one A.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect, so this is US East one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the last instance right now it's here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then I'm going to copy this IPv4 address, paste it in, and it says hello from AP Southeast one b.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this one's working as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go here, AP southeast one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: And finally, if I go under my ALB and take the DNS name right here, let's see if it has been provisioned.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it is provisioned as we can tell.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this can take a bit of time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for you, it may not work, for me it worked.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so because it is pointing to one EC2 instance, it's a hello world from AZ EU Central one B.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 76:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So now we have properly set up all our instances, as well our GNS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And keep this information handy, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/12_AWS CLI, SDK, IAM Roles & Policies/127_AWS EC2 Instance Metadata.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So now let's talk about EC2 instance metadata or IMDS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's a very powerful feature, but not many developers know about it, and this is how C two works as it is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go over it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: So the idea is that with these instance metadata service the IMDS, you have C two instances that can learn about themselves without using an IAM Role for that purpose.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So they can just talk to a specific URL this 169.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: 254.169.254 and then they're able to learn about their own metadata.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll see this in the hands-on in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So the idea is that from the metadata you can know the instance name, you can know the public IP the private IP, you can know a lot of things.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And also you can retrieve the IAM Role name from the EC2 instance metadata.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: You can even get some credentials out of it, but you cannot know what IAM policy is attached to the role.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So metadata means information about the instance and user data that we've seen before is the launch script of the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this URL allows us to access both the metadata and the user data. but in this lecture we're looking at the metadata service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can practice in next lecture and see what we can do with it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But first, I want to tell you about the two versions of the IMDS service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So IMDSv1, which is the instance metadata data service v1 is accessing the URL directly and everything works out of the box.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But with the rollout of Amazon, the next 2023, there is IMDSv2, that's enabled by default and it's a more secure version.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And to access the metadata service, you actually need to do two steps.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first one is to get the session token by using a PUT command, and we'll see this in the hand-on, and then from this token, we can call the IMDS URL bypassing in the token as a header; so it's a bit more overhead.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: AWS did it for security reasons to go from IMDSv1 to a MDSv2, and I will be demoing to you how to use a more complicated version because it's important for you to know how it works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/12_AWS CLI, SDK, IAM Roles & Policies/128_AWS EC2 Instance Metadata - Hands On.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So let's go ahead and practice using the EC2 instance metadata service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So I'll call this one DemoEC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I'm just creating EC2 instance, and I wanna show you something.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, if we use Amazon Linux, and we choose Amazon Linux 2023 AMI, which is the latest AMI I have right now, and we scroll all the way down into advanced details, and we scroll down.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As we can see, we'll find it in one moment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As we can see here, there is the metadata version that we can select between V1 and V2 or V2 only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it turns out that if you use Amazon Linux 2, by default, it will be V2 only, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is what I'm gonna show you after.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if you chose something like Amazon Linux 2, so instead of 2023, use Amazon Linux 2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, this one, this is Amazon Linux 2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you could, for example, under the metadata version, choose V1 and V2 or V2 only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But right now, I'm going to use the Amazon Linux 2023, the latest one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: And from this point onwards, you have to use the DB IAM V2, and I will show you this in a moment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can proceed without a key pair.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And in terms of security group, we can just create a new security group that allows SSH from anywhere and there will be enough.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Then we scroll down, and for IAM instance profile, for now I will not select anything but later I will select whatever profile is available for me just to show you how it's being accessed using the metadata service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So again, we are not going to specify a metadata version, but I will show you that it's V2 only in a second.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay so this is enough.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: We're going to launch our instance, and then we're going to issue commands within our instance using V EC2 Instance Connect service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So now let's connect to our instance using EC2 Connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here we go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we are inside and we want to query the metadata service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to type IMDS V1 on Google, and then I'm going to just have a look at this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is documentation, because the commands can be quite complicated.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if we look at the commands, this is the URL we have to request, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So first we have to issue this command, and then we have to issue the second command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But this is IMDS V2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: First I wanna show you that IMDS V1 does not work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So I'm going to click on retrieve instance metadata, which is just going to give me the URL for the instance metadata when we're using IMDS V1.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So in EC2 Instance Connect, I'm just going to type curl and then this URL.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as a result of this, we get a 401 unauthorized.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means that we cannot access this URL.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This would work if you're using Amazon Linux 2 for example and you've enabled IMDS V1.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But you can see on Amazon Linux 2023, this does not work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we need to address this of course, and to do so, we're going to use IMDS V2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So before being able to query this URL, we need to retrieve a token.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is what this command is showing you right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll take all the command right here from token equals and paste this in.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so this token is querying this URL called the latest API token passes in the header for the token aspiration.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now this is done, and if we do echo dollar token, then this is the token that was retrieved from this first call, this first HTTP call.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now that we have this, I'm going to clear my screen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We can issue a command against the metadata service bypassing the token as a header to the curl.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we are again going to go into here, press enter, and as you can see, things are working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now we don't get unauthorized.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we are gonna remove this minus V option just to get a cleaner output.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we remove our minus V, oh, and I need a space.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here we go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay and we see that when we query this URL, passing in the token that we had from before, then we get access to all these bits of information.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So whenever you have a trailing slash, that means it's like I call it a directory.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means there is more data within, but when there is no trailing slash it's a value.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: For example, if you wanted to retrieve the host name of this instance, just type in host name at the end of the URL call, and then we get the host name from the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: As you can see, this is how the EC2 instance knows about its own host name.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We can have another one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We can have, for example, local IPV4 I believe and here we go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have the local IPV4.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So lots of different options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can definitely try it out.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And again, by having a trailing slash you have all the information.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So now how does it work for when the EC2 instance is an IAM role and wants to obtain the credentials to use that role?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, it turns out that if you go into identity credentials, then we're gonna find some stuff.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So identity minus credentials, and then we add a trailing slash always.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 62:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: As we can see right now we have EC2, we go in and then we have info and security credentials.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll go into info first, and we say, okay there's a success.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's not what we need.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's go into the other one called security credentials.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here we get a not found.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So that means that currently we don't have any security credentials attached to our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 68:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: And that makes sense because we don't have an IAM role attached to our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 69:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: What we can do is that we can click on our instance and then we're going to go under security and we're going to give it an IAM role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 70:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So to do so, we'll do action, security, and then modify IAM role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And we'll give it whatever role you want, really have tons of roles created for this course, but choose whatever role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This doesn't really matter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: The idea is that you attach a role to your EC2 instance and then we're going to wait about 30 seconds.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now let's issue the command again, press enter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Oh, I get a not found, but the reason I do is because I'm missing a trailing slash.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So make sure you are adding trailing slash and make sure you don't make any typos as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So just press enter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And now we have the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 79:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we're going to add slash EC2 instance, and then we'll be good to go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 80:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And as we can see, so it's a long URL, we had slash metadata, slash identity credential, slash EC2 slash security credential slash EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 81:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECR
- Key Insights: But out of it, we get this JSON, and what we get out of it is an access key ID, a secret access key and a token and an expiration date, which said that this role expires in the next whatever, 24 hours maybe.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here we have the, and it's probably more like one hour than 24 hours.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: Anyways so here, this is how the EC2 instance obtains the credentials that allows it to use its own IAM role because the IAM role provides credentials through the EC2 instance metadata service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Not something you have to do anything with because the EC2 instance and the AWS, CLI, and SDK are smart enough to do things behind the scene, so that you don't have to worry about these things.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 86:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But I want to show you how the behind the scenes work and the value that the metadata service was providing to EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: When you're ready, you can just take this EC2 instance and terminate it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right, I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/24_AWS CICD_ CodeCommit, CodePipeline, CodeBuild, CodeDeploy/371_CodeDeploy for EC2 and ASG.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at a few more concepts for, CodeDeploy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design, Deployment Automation
- Services: Amazon EC2
- Key Insights: So when we approach an EC2 instance, we're going to have the appspec.yml at the root of your code and then deployment strategy.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we can do, for example, in place updates to your fleet of EC2 instances, and then we can use hooks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: We set them in the expert Hemel to verify the deployments after each deployment phase.
- Hidden/Implicit Meaning: Platform automation signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here we have a half at a time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So half of them is going to be taken down, then upgraded to version two.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The other half is going to be taken down.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: I've got your version two, and this is an in-place deployment.
- Hidden/Implicit Meaning: Platform automation signal.

Line 9:
- Concepts: Deployment Automation
- Services: Auto Scaling
- Key Insights: Now for ASG deployments of code, the deployment's a little bit more complicated.
- Hidden/Implicit Meaning: Platform automation signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have two options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: We have in-place deployments and blue/green.
- Hidden/Implicit Meaning: Platform automation signal.

Line 12:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So in-place we'll be doing the exact same thing we saw before.
- Hidden/Implicit Meaning: Platform automation signal.

Line 13:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: It will update existing EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Platform Design, Deployment Automation
- Services: Amazon EC2, Auto Scaling
- Key Insights: And in case you create a new EC2 instances in your ASG automatically, it's going to get a deployment by CodeDeploy, which is very nice.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 15:
- Concepts: Compute Operational Context
- Services: Auto Scaling
- Key Insights: So this is where it could differ with ASG is very powerful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: So this is for in-place deployment, but we also have blue/green deployments.
- Hidden/Implicit Meaning: Platform automation signal.

Line 17:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: And in this case, a new auto-scaling group is going to be created and settings are going to be copied.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Platform Design
- Services: Amazon EC2, Auto Scaling
- Key Insights: Then we get to choose how long do you keep the old EC2 instances, you old ASG.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then the ELB, that redirects from one target group to the other, is going to fall over.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's set an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Deployment Automation
- Services: Elastic Load Balancing
- Key Insights: So this is our blue/green deployments or the ELB.
- Hidden/Implicit Meaning: Platform automation signal.

Line 22:
- Concepts: Compute Platform Design
- Services: Amazon EC2, Auto Scaling
- Key Insights: We have our EC2 instances on launch template V1 within the ASG, and then CodeDeploy is going to deploy the V1 application to these EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now, in case we want to upgrade to version two, then new instances are going to be created.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then with launch pad V2, CodeDeploy is going to deploy the application to these EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Platform Design, Deployment Automation
- Services: Elastic Load Balancing
- Key Insights: Then the ELB is going to receive traffic from both the V1 and V2 instances for says for a bit, then, if everything is healthy, V version one will be taken down and we will have done a blue/green deployment.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Finally, around the redeploys and rollbacks.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Deployment Automation
- Services: Amazon CloudWatch
- Key Insights: So a rollback is when, when you want to redeploy a previously deployed revision of your application, so you want to go back in time, and deployments can be rolled back in two ways: either automatically, for example, when we have a failure of the deployment or when we have a CloudWatch Alarm that is being triggered and say, Hey the deployment has failed, or manually.
- Hidden/Implicit Meaning: Platform automation signal.

Line 28:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: If we disable rollbacks, then there will be no rollbacks performed for this deployment.
- Hidden/Implicit Meaning: Platform automation signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: And when the rollback happens, what happens is that CodeDeploy actually redeploys the last known good revision as a new deployment, okay, it doesn't go back in time.
- Hidden/Implicit Meaning: Platform automation signal.

Line 31:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: It actually performs a new deployment with a last known good version that was known to do a good deployment.
- Hidden/Implicit Meaning: Platform automation signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's not a restored version.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: It's definitely a new deployment, and this is something that exam may test you on.
- Hidden/Implicit Meaning: Platform automation signal.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, very theory, but I know, but it's going to be helpful for your exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/032_EC2 Basics.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: And on EC2, in which we will create our first website on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So what is Amazon EC2?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, EC2 is one of the most popular of AWS offering.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It is definitely used everywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And what is it?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Well, it stands for Elastic Compute Cloud, and this is the way to do Infrastructure as a Service on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So EC2 is not just one service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's composed of many things at a high level.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So you can rent virtual machines on EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: They're called EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: You can store data on virtual drives or EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: You can distribute load across machines, elastic load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 13:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: You can scale services using an auto-scaling group or ASG.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And all these things, do not worry, we will see in depth during this course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Knowing how to use EC2 in AWS is fundamental to understand how the cloud works, because as I said from before, the cloud is to be able to rent those compute whenever you need, on demand.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And EC2 is just that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So EC2, what can we choose for our instances, so our virtual servers that we rent from AWS?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So what operating system can we choose for our EC2 instances?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Three options, Linux, and is going to be the most popular, Windows, or even macOS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: How much compute power and cores you want on this virtual machine, so how much CPU.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you need to choose how much random access memory, or RAM, you want, and how much storage space.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: Amazon EBS, Amazon EFS
- Key Insights: So, for example, do you want storage that's going to be attached through the network, and we'll see about it with EBS or EFS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Or do you want it to be hardware attached?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: In this case, it will be an EC2 instance store.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we have a whole section on storage, so don't worry about it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then finally, the type of network you want attached to your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So do you want a network card that's going to be fast?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What kind of public IP do you want?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And finally, we need to handle the firewall rules of our EC2 instance, and that is the security group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Platform Design
- Services: AWS Config, Amazon EC2
- Key Insights: And I lied, finally, finally, there's the bootstrap script to configure the instance at first launch, which is called the EC2 User Data.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we have lots and lots of options, and as you'll see in the hands-on, even more options at other certification levels that you need to know in EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But at a core of it, what you need to remember is that you can choose pretty much how you want your visual machine to be, and you can rent it from AWS, and that is the power of the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can do this by just in the blink of an eye, really.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So it is possible to bootstrap our instances using the EC2 User Data script.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what does bootstrapping mean?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, bootstrapping means launching commands when the machine starts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that script is only run once, and when it first starts, and then we'll never be run again.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 38:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the EC2 User Data has a very specific purpose.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: It is to automate boot tasks, hence the name bootstrapping.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 40:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: So what tasks do you wanna automate usually when you boot your instance?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, you want to install updates, install software, download common files from the internet, or anything you can think of, really, anything you can think of.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So it could be whatever you want, but just know that the more you add into your User Data Script, the more your instance has to do at boot time.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Simple, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: By the way, the EC2 User Data Scripts runs with the root user, so any command you have will have the sudo rights, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So this was a short introduction to EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Don't worry, it's gonna get very, very practical very soon.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Welcome.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So in this lecture we are going to launch our first EC2 instance running Amazon Linux.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So for this we'll be launching our first EC2 instance, which is well a visual server and we'll use the console for this.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: We'll get a high level approach to all the various parameters you have when launching an EC2 instance, and you'll see there are many, but we'll learn the most important ones.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then we will launch a web server directly on the EC2 instance using a piece of code we will pass to the EC2 instance that is called the user data.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Finally, we'll learn how to start, stop and terminate our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So let's get started and launch our first EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: For this, I'm gonna go into the EC2 Console, then I will click on Instances and then click on Launch Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So in there I'm able to launch my first EC2 instance and to do so I need to add a name and tags.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So the name is going to be My First Instance and that is an app that is the name tag.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And if you wanted to add additional tags to tag your instance differently, then you could click there, but you don't need to click on this using just name as My First Instance is good enough.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Next, you need to choose a base image for your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: This is the operating system of your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see, there's a full catalog that you can search from, but we're going to use the ones from the quick start that are very, very helpful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the one we'll be using is the Amazon Linux, which is provided by AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So in it I will choose the Amazon Linux 2 AMI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you can see that one is free tier eligible.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll just leave it as is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this gives me Amazon Linux 2 and the architecture I will choose is 64-bits x86.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So everything left pretty much as a default and we'll see in this section and more and the other ones, you can create your own AMIs and you can found them in here, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But currently we're just going to use the ones provided by AWS as quick starts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Next, we need to choose an instance type.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so instance types are going to differ based on the number of CPUs they have, the amount of memory they have and how much they cost.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see right now I have a t2.micro selected.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This one is free tier eligible, so it will be free to launch one of them during an entire month if we leave it running.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is what we'll be using.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: But in here you could scroll down and look at other types of instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, t1.micro is also free tier eligible, but that's older generation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And as you can see, you have a bunch of instances right here available to you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Some of them are going to be free tier eligible, some of them will not.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And by default, the one that's gonna be free tier eligible is a t2.micro.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll be using that one a lot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: If you wanted to compare the instance types, you would just click on that link and it shows you all the type of instances in here as well as how much memory they have and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So right now we'll be using a t2.micro.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay next, a key pair to log into your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So this is necessary if we use the SSH utility to access our instance and we will be using the SSH utility in this course.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Therefore, it is required for us to create a key pair.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as we can see right now there is no key pair and we could proceed without a key pair, but for now we won't do this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So let's go ahead and create a new key pair and the name is going to be EC2 Tutorial.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you need to choose a key pair type.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll be using the RSA encrypted, okay, this is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then the key pair format.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you have Mac or Linux or Windows 10, then you can use the .pem format.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you have Windows less than version 10, for example Windows 7 or Windows 8, then you can do our shortcut and directly use a ppk, which is going to be used for PuTTY and PuTTY is how you do SSH on windows 7 and Windows 8.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So remember anything else but Windows 7 and Windows 8, choose .ppm else use ppk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, I should be clear enough, I'm going to create this key pair and it is downloaded for me directly.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now it is selected automatically here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next we have to go into network settings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for now, I will not touch anything.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: My instance is going to get a public IP and then we need to connect to our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 51:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: And so for this, there's going to be a security group attached to our instance, which is going to control the traffic from and to our instance, and therefore we can add rules.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And the first security group created will be called launch-wizard-1.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So created by the console directly and we can define multiple rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the first rule we want to have is to allow SSH traffic from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So we leave it as this and this will create a rule in our security group to allow SSH traffic, but we also want to allow HTTP traffic from the internet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we'll tick that box and this is because we're going to launch a web server on our EC2 instance, so we need it as well.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As we're now going to use HTTPS for now, we don't need to tick the second box.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: Let's configure the storage so then we can configure the storage.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as we can see we have eight gigabits gp2 root volume that will leave it as is, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: Because in the free tier we can get up to 30 gigabytes of EBS general purpose SSD storage.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we only have one volume necessary.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 63:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: If you go into advanced, you could configure them and see a little bit more information, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the one important thing to note in here is the delete on termination.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: By default, it is unable to yes, I just did advanced to show you that one detail, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: That means that once we terminate our EC2 instance, then that volume is also going to be deleted.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we leave everything as is and we'll be get back into the simple mode.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next, for advanced details, this is where it gets interesting.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So I will skip spot, I will skip IAM instance profile.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Don't worry, I will go over them once we need to explore them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will skip all of that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's scroll down.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's scroll down, let's scroll down all the way to the bottom.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And at the bottom there is user data.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: User data is when we pass a script.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So some comments to our EC2 instance to execute on the first launch of our EC2 instance and only the first launch.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And therefore on the first launch, we want to be able to pass these command right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So for this, you go into your code, you go to the EC2 fundamentals, and then the EC2 user data set file, you copy entirely this, so all of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you paste it here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you paste everything.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And that means that this script is going to be executed when the instance is first started and only once, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 83:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: In the whole lifecycle of the instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And what it's going to do is that it's going to update a few things, then install the HTTPD web server on the machine and then write a file, an HTML file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That will be our web server.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so you don't need to know code or know these commands.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is provided to you to illustrate a few things on this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So finally for summary, we want to start one instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 90:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is great and we can review everything we have here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It all looks good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We are very happy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you can see in the free tier, we get a first year of 750 hours of 2.micro, which is running it for one month.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's every month.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 95:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you don't have a t.2micro in your region, then it's going to be a t3.micro, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 96:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: And then also we get 30 gigabytes of EBS storage and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 97:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So let's launch this instance and the instance is going to be launched.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 98:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Let's go to View all Instances, Refresh.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 99:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And now my instance is in pending state.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 100:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So it's gonna take about 10, 15 seconds for the instance to come up.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 101:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is the whole power of the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 102:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Thanks to the cloud, I am able to create an instance or 100 of them very quickly in less than 10 seconds without me owning any single server.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 103:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that is extremely powerful and we just scratched the surface of the power of the cloud, obviously because the course is just getting started, but you can get a feeling of the advances and the speed we can have on the cloud thanks to this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 104:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So as you can see now my instance is running and right now I wanna show you a few things, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 105:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: The first one is that the instance name is My First Instance, and there's an instance ID which is just a unique identifier for my instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 106:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There is a public IPv4 address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 107:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: This is what we're going to use to access our EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 108:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Or there is a private IPv4 address, which is how to access that instance internally on the AWS network, which is private.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 109:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: The instance site is running and we get some information around host name, private DNS, which instance that we have.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 110:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So t2.micro as well as if you scroll down the AMI we're using, which is Amazon Linux 2, and the key pair we're using, which is EC2 tutorial, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 111:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can have a look at a few details in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 112:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have more information.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 113:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: For example, on security, we get some information on the security group, which was created called launch-wizard-1 with these inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 114:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So port 22 accessible from everywhere and port 80 accessible from everywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 115:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you should have something similar, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 116:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you don't start over because you probably missed a step.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 117:
- Concepts: Compute Platform Design
- Services: Amazon RDS
- Key Insights: And the rule allowing all communication outwards, which allows the instance to access the internet.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 118:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For storage we saw that, yes, we created one volume of eight gigabytes, so we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 119:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So now let's have a look at the web server running on my instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 120:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for this you go on public IPv4 address, you copy this or you click on Open Address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 121:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, it doesn't work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 122:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Or if you click on it, copy and then paste it, you press Enter, it's going to work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 123:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it depends on the web browsers you have and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 124:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 125:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But the reason it doesn't work here is that in the URL you need to make sure that you're using the HTTP protocol, so http:// and then the IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 126:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Because if you use HTTPS, this is not going to work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 127:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's going to give you an infinite loading screen which was happening right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 128:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So please make sure to use http:// and then the IP address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 129:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you're going to get this screen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 130:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in programming, when you do something for the first time, you usually say Hello World.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 131:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this web server is saying, Hello World from and this IP right here, which is not the public IP, this IP right here, 172-31-33-135 actually corresponds to the private IPv4 address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 132:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is something that I program myself.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 133:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we use the public IP address to access it, but we have the private IP address in here and we have the hello world.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 134:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you go too fast, you're going to get no messages.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 135:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you go too fast, just wait five minutes, get back to it, refresh this page and you'll see it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 136:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so cool, we have a web server running, this is great.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 137:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let's explore a few options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 138:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we have an EC2 instance and it's running, but if we don't need it, we can go to instance states and then click on Stop Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 139:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And in the cloud you can start and stop instances just as you wish.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 140:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And why would you stop an instance?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 141:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, the longer you leave it running, the more you're going to pay of course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 142:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: But if you decide to stop an instance, then AWS will not bill you for it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 143:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: The instance state is kept because you have a volume attached to it, but at least you're not paying for it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 144:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we can see right now, well the instance is in a stopping state, and if we try to refresh this page, it's going to, of course it's not going to work because well you don't have the server running anymore.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 145:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can see it gets to some like infinite loading experience.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 146:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 147:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So my instance is now stopped and if I wanted to actually I could get rid of it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 148:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And in the cloud it's very common to start instances and then get rid of them.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 149:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We're very quickly just to try it out because this is the cloud and we can do whatever we want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 150:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we can do in instance state and then terminate instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 151:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: If we do so, we're going to get a warning message and don't click on Terminate because I want to keep this instance with me, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 152:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But this is how we would get rid of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 153:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So I cancel this, but what I'm going to do now is I'm going to start my instance again.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 154:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So I go to Instance State and then Start Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 155:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now as you can see, the state is pending, so it is getting started and I just wait for it to be started in the green state and I will show you something very interesting.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 156:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, so my instance is now running, and if I go here and stop the refresh and try again to refresh, as you can see, it still goes into an infinite loop.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 157:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, you may say while the server is running, Stefan.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 158:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So why is it not displaying the message now?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 159:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It is displaying here, but like from the old one, of course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 160:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here the IP start with 54, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 161:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But here, if you click on here, now the public IP start with 3.250.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 162:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the public IP actually has changed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 163:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if you stop an instance and then you start it later on, then AWS will maybe change its public IPv4.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 164:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So therefore you need to copy the new IPv4, make sure to use HTP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 165:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And voila, we have access back to our EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 166:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: But one thing that has not changed is the private IPv4, the private IP will always stay the same, but the public IPv4 may change.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 167:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 168:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So well, so that's it for this hands-on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 169:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have seen quite a lot of things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 170:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: We've launched our first EC2 instance, which is very exciting.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 171:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Our first web server in the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 172:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We've had to look at some of the power of the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 173:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: You're just using some API calls to stop an instance, start instance, and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 174:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/034_EC2 Instance Types Basics.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Okay, so now let's talk about EC2 instance types.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So there are different types of EC2 instances that you can use for different use cases, and they have different types of optimization.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And let's go check out this link, and we'll see we have for now seven different types of EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: So this website on the AWS website is what we're interested into.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And as we can see, we have different types of instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We have general purpose, computer optimized, memory optimized and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so for each type of instance, we have different families.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: And so, as we can see, this website is going to be the reference for us to look at EC2 instance types and know their costs and other specificity.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What I'm going to do though is just walk you through a high level overview of how they work in AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: AWS will have the following naming convention.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: For example, we'll be talking about a m5.2xlarge.instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What does that mean?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Well, M is going to be called the instance class, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And this is going to be, for example, in this case a general purpose type of instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Five is generation of the instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as it improves the hardware over time, it will release a new generation of hardware.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so after m5, if they improve the m type of instance class, then it will go to m6.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then finally, the 2xlarge represent the size within the instance class.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it starts as small and then large, and then 2xlarge, 4xlarge and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So it represents the size of the instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the more the size, the more the memory, the more the CPU you're going to have on your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So from an exam perspective, what do you need to know?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Well, we'll talk about a few different type of instance types.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you have general purpose, and these are great for diversity of workloads, such as web servers or code repositories.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: They will have a good balance between compute, memory, networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so in this course, we'll be using general purpose instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We'll be using the t2.micro, which is the free tier general purpose type of instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: Amazon EBS
- Key Insights: On the website that I just showed you, you will see all the different types of instance that are general purpose, and this is gonna evolve over time so I won't update this slide, but you can always refer back to the AWS website to check what the instances are in the general purpose type of family.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: Then we have compute optimized, and these are instances that are great and optimized for compute intensive tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what requires a high level of processor?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: Well, for example, it could be if you're batch processing some data, if you're doing media transcoding, if you need high performance web servers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: If you're doing high performance computing, it's called HPC, if you're doing machine learning, or if you have a dedicated gaming server.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: So all these things are tasks that require a very good CPU, a very good compute side.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so EC2 instances do have this kind of particularity.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And for now, all the compute optimized instances in EC2 are of the C name, so C5, C6 and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Next, we have some EC2 instances that are memory optimized, and they're going to have a really fast performance for the type of workloads that will process large data sets in memory.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So memory means RAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so the use cases are, this is going to be high performance for relational or non-relational databases that are mostly going to be in memory databases.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Distributed web scale cache store.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: Amazon ElastiCache
- Key Insights: So for ElastiCache, for example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In memory databases that are optimized for business intelligence or BI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And applications performing realtime processing of big unstructured data.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So in terms of the names for the memory optimized instances, that's going to be the R series because R stands for RAM.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But there's also going to be X1, High Memory and Z1.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Again, you don't need to remember the name of the instances, but good to know at a high level.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, and finally we'll have storage optimized instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They're great when you are accessing a lot of data sets on the local storage.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so the use cases for storage optimized instances are going to be high frequency online transaction processing, so OLTP systems, relational and NoSQL databases, and we'll see those in detail when we get to the database sections.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Cache for in-memory databases, for example, Redis.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Data warehousing application, distributed file systems, and the storage optimized instances in AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll start with a I or D or H1, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But again, don't have to remember this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'm just giving you examples.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what does it mean?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Let's compare a few instance types.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for example, for t2.micro, we have one vCPU and one memory, one gigabytes of memory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you look for example at the r5.16xlarge, we have 16 vCPU and 512 gigabytes of memory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can see there's a lot of more emphasis on the memory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If we compare it for example to a c5.d.4xlarge, we can see we have 16 vCPU and 32 gigabytes of memory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: So less memory, more CPU and so on, different network performance, different EBS bandwidth and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So just to give you a point of comparison.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Platform Design
- Services: Amazon EBS
- Key Insights: And if you wanted a website to compare all the instances together, there's one that I really like.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 63:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: It's called ec2instances.info, and I'll show it to you right now.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 64:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So I am on the ec2instances.info website, and as we can see, we have a list of all the instances available in AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So really a lot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We also get some information around the Linux On Demand cost, the Linux Reserved cost and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So some cost information.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We get information around the memory, the number of vCPU.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We can order by name, we can search it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: So it's quite handy, and I really like this website.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: And if you go and use AWS, you probably will use this website as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/035_Security Groups & Classic Ports Overview.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Let's talk about these firewalls around our EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Operational Guardrails
- Services: AWS Config
- Key Insights: So we briefly configured one in the previous lecture, but security groups, yet again, are going to be fundamental into doing network security in the AWS cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: They will control how the traffic is allowed into and out of your EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Security groups are going to be very easy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They only contain allow rules.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can say what is allowed to go in and to go out.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: And security groups can have rules that reference either by IP addresses, so where your computer is from, or by other security groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So as we'll see, security groups can reference each other.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here, let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: We are on our computer, so we are on the public internet, and we're trying to access our EC2 instance from our computer.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: We are going to create a security group around our EC2 instance, that is the firewall that is around it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And then this security group is going to have rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And these rules are going to say whether or not some inbound traffic, so from the outside into the EC2 instance is allowed.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And also if the EC2 instance can perform some outbound traffic, so to talk from where it is into the internet.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let's do a deeper dive, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: Security groups are a firewall on our EC2 instances, and they're going to really get and regulate access to ports.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They're going to see the authorized IP ranges.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Would it be on IPv4 or IPv6?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: These are the two kinds of IP on the internet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: This is going to control the inbound network, so from the outside to the instance, and the outbound network from the instance to the outside.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And when we look at security group rules, they will look just like this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So there will be the type, the protocol, so TCP, the port allowing it, so where the traffic can go through on the instance, and the source, which represents an IP address range.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And 0.0.0.0/0 means everything.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this here means just one IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let's look at a diagram, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So we have our EC2 instance, and it has one security group attached to it that has inbound rules and outbound rules, so I've separated them onto this diagram.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So our computer is going to be authorized on, say, port 22, so the traffic can go through from our computer to the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But someone else's computer that's not using my IP address because they don't live where I live, then if they try to access our EC2 instance, they will not get through it because the firewall is going to block it, and it will be a timeout.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: Then for the outbound rules, by default, our EC2 instance for any security group is going to be by default allowing any traffic out of it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EBS, Amazon EC2
- Key Insights: So our EC2 instance, if it tries to access a website and initiate a connection, it is going to be allowed by the security group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is the basics of how the firewall works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Now, good to know, what do you need to know with security groups?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Well, they can be attached to multiple instances, OK?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: There's not a one-to-one relationship between security group and instances, and actually an instance can have multiple security groups too.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Security groups are locked down to your region/VPC combination, OK?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECR
- Key Insights: So if you switch to another region, you have to create a new security group, or if you create another VPC, and we'll see what VPCs are in the later lecture, well, you have to recreate the security groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: The security groups live outside the EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So as I said, if the traffic is blocked, the EC2 instance won't even see it, OK?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: It's not like an application running on EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: It's really a firewall outside your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: To be honest, and that's just an advice to you from developer to developer, but it's good to maintain one separate security group just for SSH access.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Usually SSH access is the most complicated thing, and you really want to make sure that one is done correctly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So I usually separate my security group for SSH access separately.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: If your application is not accessible, so timeout, so we saw this in the last lecture, then it is a security group issue, OK?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: So if you try to connect to any port and your computer just hangs and waits and waits, that's probably a security group issue.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: But if you receive a connection refused error, you actually get a response saying connection refused, then the security group actually worked, the traffic went through, and the application was errored or it wasn't launched or something like this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is what you would get if you get a connection refused.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: By default, all inbound traffic is blocked and all outbound traffic is authorized, OK?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Elasticity and Availability, Operational Guardrails
- Services: Elastic Load Balancing
- Key Insights: Now there is a small advanced feature that I really, really like, and I think it's perfect if you start using load balancers, and we'll see this in the next lecture as well, which is how to reference security groups from other security groups.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let me explain things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So we have an EC2 instance, and it has a security group, what I call group number one.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And the inbound rules is basically saying, I'm authorizing security group number one inbound and security group number two.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So why would we even do this?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: Well, if we launch another EC2 instance and it has security group two attached to it, well, by using the security group run rule that we just set up, we basically allow our EC2 instance to go connect straight through on the port we decided onto our first EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 55:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: Similarly, if we have another EC2 instance with a security group one attached, well, we've also authorized this one to communicate straight back to our instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And so regardless of the IP of our EC2 instances, because they have the right security group attached to them, they're able to communicate straight through to other instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's awesome because it doesn't make you think about IPs all the time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And if you have another EC2 instance, maybe with security group number three attached to it, well, because group number three wasn't authorized in the inbound rules of security group number one, then it's being denied and things don't work.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 59:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So that's a bit of an advanced feature, but we'll see it when we'll deal with load balancers 'cause it's quite a common pattern.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I just want you to know about it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Again, just remember this diagram.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And by now you should be really, really good at security groups and understand them correctly.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, going into the exam, what ports do you need to know?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, we need to know something called SSH or secure shell.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we're going to see this in the very next lectures.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is the port 22.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And this allows you to log into an EC2 instance on Linux.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have port 21 for FTP or file transfer protocol, which is used to upload files into a file share.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you have SFTP, which is also using port 22.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, because we're going to upload files, but this time using SSH, because it's going to be a secure file transfer protocol.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we have port 80 for HTTP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we've been using it in the previous lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: This is to access unsecured websites.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: And you've seen this whenever you go on the internet and you enter HTTP colon slash slash, and then the address of the website.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you've seen most likely a lot more like this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: You've seen HTTPS, which is to access secured websites, which are the standard nowadays.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for HTTPS, it is port 443.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Finally, the last port you need to remember is 3389 for RDP or the remote desktop protocol, which is the port that's used to log into a Windows instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 80:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: OK, so 22 is SSH for Linux instance, but 3389 is RDP for a Windows instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 81:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Now, this is all the theory about security groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture for some practice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/036_Security Groups Hands On.txt

Line 1:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So we've launched our EC2 instance and now let's have a look at security groups.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So we have a short idea of security groups by just clicking on security in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: And we get some overview of the security groups attached to our instance as well as the inbound rules and the outbound rules.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: But what I will do is that I will just access the more complete page of security groups from the left hand side menu.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So under networking and security, you click on security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And we can see so far that we have two security groups in our console so far.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So the default security group that is created by default as well as the launch wizard one which is the first security group that was created when we created our EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And so a security group has an ID.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So an identifier, just like an EC2 instance has an ID.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we can check the inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the inbound rules are the rules that allows connectivity from the outside into the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we have two inbound rules in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the first one is of type SSH, which allows port 22 in our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And let me just click on edit inbound rules to see better.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So set first one as SSH on port 22 from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So 000/0 is anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the second one is HTTP from port 80, again, anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this rule right here is what allowed us to access our web servers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if you go back to the EC2 console, go to our instance and we were doing this IPv4 address.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: Okay, so we were opening it as an HTTP website.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This worked thanks to this rule, port 80.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's verify this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if we delete this rule on port 80 and save the rules, as we can see now we only have port 22.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if I go back to this and refresh my page, now as we can see, there is an infinite loading screen right here on the top of my screen, which shows that well, indeed I don't have access to my EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here is a very important tip for you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Any time you see a timeout, okay, this is a timeout because it keeps on trying to connect but it doesn't succeed and then it will eventually fail, called a timeout.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So if you see a timeout when trying to establish any kind of connection into your EC2 instances, for example, if you try to SSH into it, but there's a timeout, or if you try to do an HTTP query, but there's a timeout, or if you try to do anything with it and there is a timeout, this is 100% the cause of an EC2 security group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Okay, so in that case, go to your security group rules and make sure that they are correct, because if they're not correct, then you will get a timeout.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So to fix this, we can add back a rule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We will do HTTP, which allows to get port 80 in here automatically.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then from anywhere IPv6, IPv4, excuse me, right here, which allows this block right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We save the rule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now the rule is done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If I go back to my page and refresh as you can see, now it is fully working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this inbound rule really did the trick.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But we could add any sort of inbound rule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we could define the port or the port range that we want to.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we could say, for example, any port we want, for example 443, which is HTTPS or choose directly from a dropdown here as a little shortcut the type of protocol you want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, HTTPS is 443 automatically.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you can define where you want to allow from.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So you have different CIDR blocks and we don't need them right now, or security groups or prefix list, but we'll get to see them later on, okay, in this course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For now, just know that you could have either a custom CIDR anywhere which adds this blog or if you want to, can select my IP to only allow access to your IP.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 43:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But just be aware that if your IP changes, then you will get a timeout and will not be able to access your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Finally, one last bit of information.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can have a look at outbound rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we allow all traffic on IPv4 to anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So this allows our EC2 instance to get full internet connectivity anywhere.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 48:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And something you should know, so we have two security groups right here default and launch wizard, and an EC2 instance can have many security groups attached to it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 49:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So it can attach one but two or three if you want maybe five security groups and the rules will just add on to each other.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And also this security group we have created from default so for example, this launch wizard one can be attached to other EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 51:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: Okay, so you can attach as many security groups as you want as well as as many EC2 instances you want to one security group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/037_SSH Overview.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You're getting to one of the trickier bits of running in the Cloud, which is how do you connect inside of your servers to perform some maintenance or action.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, for Linux servers, we can use SSH to do a secure shell into our servers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So based on the operating system you have on your computer, you have different ways of achieving it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I have separated Mac, Linux, Windows before version 10 and Windows after version 10.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the SSH is a command line interface utility that can be used on Mac or Linux as well as Windows over version 10.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then if you have Windows less than version 10, you can use something called putty.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Putty will exceed the exact same thing as SSH.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So when I say you should SSH, if you're on Windows, you can use putty.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And putty is valid for any version of Windows.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: They do the exact same thing, they allow you to use the SSH protocol to connect into your EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then finally, there's something new called the EC2 Instance Connect, which is going to use your web browser.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So not a terminal nut putty your web browser to connect to your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I like it a lot because it is valid for Mac, Linux, Windows, all versions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The cool thing about EC2 Instance Connect is that it works, but it only works for now with Amazon NX2 And this is why I've been using Amazon NX2 in this tutorial.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now what should you do?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you are on Mac or Linux, then please watch the SSH lecture on Mac/Linux.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you're on Windows, then you can either watch the Putty Lecture or if you have Windows 10, then I have created an SSH on Windows 10 lecture as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Regardless, I am going to personally use in the future lectures, EC2 Instance Connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you wanna have a look and play with it, I find it really simple.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: You don't need to install anything or use the command line interface if you're not familiar with it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this could be very handy for all of you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Nonetheless, SSH is in my experience and I've taught hundreds of thousands of students what caused the most troubles in this course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So if you get a problem with SSH we can re-watch the lecture, you may have missed something, maybe a security group rule, maybe you command, maybe a typo, I don't know you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There's also a troubleshooting guide that I've put together after these lectures so have a look.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I would recommend your try, EC2 Instance Connect as well as sometimes fixes all problems.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if none of these method works, sorry if one method works, then you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You don't need to have them all working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If one works, you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if no method works, that's completely okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This course is just introductory and he won't use SSH much and you'll be fine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it that just for the introduction.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now find your right lecture and it will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/038_How to SSH using Linux or Mac.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So now we're going to add SSH into our EC2 Instance using our Linux or our Mac computer.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you may say, what the hell is SSH?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What are you talking about Stephane?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, SSH is one of the most important function when you deal with Amazon Cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It basically allows you to control a remote machine or server, all using your terminal or your command line.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how does that look like with the diagram?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, we have our EC2 machine, and we launched Amazon Linux 2 on it and our machine has a public IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now we want to access that machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And so for this, I don't know if you remember but we have a security group and on it we allowed the Port 22 of SSH.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So what's going to happen is at our computer, so my laptop for you, for me, or whatever for you, then we'll access over the web.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Through that Port 22, it will access the EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Basically, our command line interface is going to be just as if we were inside that machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's get started.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we are going to SSH into our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So remember that PEM file you've downloaded called EC2 Tutorial.pem?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Please make sure to remove the space in it if you have a space, even if you have a PPK file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Please rename it and remove the space from it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So EC2Tutorial.pem is removed for me.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, you go ahead and place it in a directory you like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for me, I took my file and I pasted it, and I placed it in a folder called aws-course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is the first step to making sure you are ready.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So next, what I'm going to do is that I am going to go in my EC2 instance overview page and find my first instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So here we have my first instance and we're going to SSH into it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're going to open a remote terminal into it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for this, I need to get the public IPv4 address, so I can copy this, and I will use it later.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: The other thing I need to do is to look at the security of my instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So again, if you did everything with me, then your security groups have this rule in it called Port 22 which is the SSH port from anywhere by 0.0.0.0/0.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you have that rule, then you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: If not, please click on the security group and add the missing rule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next, I need to try to do an SSH.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So first of all, ssh ec2-user@ and then the IP you have.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the reason we do ssh ec2-user is because the Amazon Linux 2 AMI has one user already set up for us and that user is named ec2-user.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we have at, to say that we want to access that user on the specific server.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, we have the IP right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: This is the public IP of our EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we try this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we do SSH and then we're going to get a too many authentication failure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So that means that we don't authenticate into our EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, that makes sense because we haven't specified the key that we downloaded from before yet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You may get another kind of error but right now this is the one I get.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So for this, we need to reference the file we just downloaded called EC2Tutorial.pem into our command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So make sure again, there is no space.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, you need to make sure your terminal is exactly where your file is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if I do ls right here to list the files in my folder and I'm sorry if this is too advanced for you but I have to cover the grounds for everyone.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if I do ls, as you see right now, it says EC2Tutorial.pem that's because I placed my command line in the correct directory on my computer.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, if you were not in the correct directory, for example if I was line level up, so I do cd .., which puts me one level up, then I do ls.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Of course, I don't see my EC2Tutorial.pem.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So to do so, what you can do is just check where you are.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So pwd is where you are.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, I'm in user stephanemaarek and I know that I placed my folder aws-course within my home.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So right under user stephanemareek, there is aws-course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, then I know that I can do ls or ll just to confirm that my folder exists.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see right here is my aws-course folder, so this is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what I do is I will do cd and then aws-course which now puts me in the directory of my aws-course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if I do pwd, I am in the correct directory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And if I do ls, I can see my EC2Tutorial.pem file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The reason we have to do this is that because now in the next command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the SSH command, you do ssh -i then you specify the EC2Tutorial.pem file and that will not work if you're not in the correct directory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So please make sure to get there and if you're missing the bit of the Linux here, please try to go online, but I should be good with what I showed you.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 67:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then, ec2-user@ and we reference the public IP of our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this one right here, we reference it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Press enter, and now we get another kind of error which is saying that we have an unprotected key file and we need to change the permissions for it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for that reason, we'll have to enter another command and that command is chmod.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So chmod 0400, and then we pass in the file itself so EC2Tutorial.pem.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So I clear my screen and then I'm going to try the exact same command as before.
- Hidden/Implicit Meaning: Platform automation signal.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I press enter and I am logged into my machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So you may have seen a screen where they prompt you for yes/no to trust the instance as well, just enter yes if you do get that screen.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 75:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So as you can see, now I have done the SSH into my instance and now it says ec2-use at this IP, which means that now all the commands are issued are going to be issued directly from the Amazon Linux 2 AMI EC2 instance that I've just launched from before.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's try a few commands.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: For example, if you do whoami then it says ec2-user or I can ping google.com and we see the google.com is responding to our pings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we can launch some commands directly from the Amazon Linux 2 AMI, and I did control C to stop that command, Now to exit the instance itself, you can either type exit and I think this should work, or you do control G and then you will close the connection into the EC2 instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 79:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And if you ever want to get back into it remember this command, ssh -I EC2Tutorial.pem if you are in the correct directory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Please make sure to do so.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: As well as ec2-user@ and then the public IP of your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 82:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Remember that if you stop and then start your instance then the public IP can change.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So make sure to change that part as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/039_How to SSH using Windows.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we are going to learn how to SSH into our EC2 Instance using Windows.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for this, we used to say, what is SSH?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, SSH to me is one of the most important function, especially when you deal with Amazon cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It will basically allow you to control a machine remotely all using the command line.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so what does it look like?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, basically we have our EC2 machine, and it's running Amazon Linux 2, and it has a public IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And I don't know if you remember, but we had an SSH security group on it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And basically we allowed SSH on port 22 to any IP, which basically allows our Windows machine to connect over the internet directly into the machine and control it using the command line.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll see how to do the requirements for parameterizing basically our Windows.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so we'll use PuTTY to do SSH.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is a free tool available online.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, it's a little bit tricky to use the first time, but we'll get used to it, and we'll learn how to SSH into Windows, into Linux using PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's get started.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we are going to SSH into our EC2 Instance and I'm running on Windows.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for this, I assume that you have Windows 7, or Windows 8, or an older version Window.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you have Windows 10, there is an alternative in the next lecture, both work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's try for, even if you're on Windows 10 you can do this technique.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, you would go and download PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So PuTTY is a free SSH client for Windows.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So download PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then I will choose, for example, the 64 bits installer, the first one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then I go ahead.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I perform the install of PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So next, next, yes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And yes, I want to install PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So PuTTY is installed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I have to install PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we have two things here on PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have the PuTTY app, as well as PuTTYgen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's first open PuTTYgen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in case you did not download your file in the PPK format, you can actually generate the PPK format directly from here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let me show you how it's done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, I need to go ahead and load my file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I click on load, and then find where my file is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for me, it's on my desktop.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And you can see, I see nothing, but if I go to the bottom right, and show all files I will find my EC2 tutorial in the PEM format.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I can select it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It says, okay, you have successfully imported this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you can save it as a private key.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So click on save private key.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And said you wanna have a pathways, you say, if you don't wanna have path, you say yes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you save it on your desktop.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So EC2tutorial.PPK Now your file is saved and you have converted successfully a PEM file into the PPK format.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you have done this already, then you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Next, we need to set up PuTTY to access our EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this time you open the PuTTY app, and here we have to enter a host name or an IP address of where we are trying to connect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So this we know it's My First Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You copy the public IPv4 address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You paste it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it's SSH.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: You're going to save this under EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you click on save, but we're not done just yet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We need to specify the key itself.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's specify the key in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So, you have it saved under EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I double clicked.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, I have to accept this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if we accept because we trust the host, we say, yes, accept.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But we still have the login as prompt and it will not work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if I do, for example, EC2 user, it says okay, I cannot authenticate right now.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, we go back into PuTTY, and we're going to fix things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So click on EC2 Instance and load this profile.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first thing I'm going to add is in the host name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I have EC2 minus user at the IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the IP is where we access our server, and the EC2 user is a user already created for us on Amazon Linux 2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I can click on save again.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're done in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This will be saved.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then for the key, we need to go into the SSH.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You click the plus, you have the Auth, you click the plus, excuse me, no need to click the plus.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you just click on Auth, and then you need to find a private key file for authentication.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Click on browse, go to your desktop.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then you find the EC2 tutorial, that PPK file, you have just generated using Puttygen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Or, if you had downloaded it already from the AWS console, that works as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this file is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Don't click on open just yet, go back to session, and then click on save, to save this profile.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This way you don't have to redo all these steps all at once, over again.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So click on open.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And now it says, okay, you're authenticating using the EC2 user.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we have this file we just opened.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so now we are into our Amazon Linux 2 AMI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have successfully performed the SSH using PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if in the course I refer to SSH, just for you, just that means you should PuTTY into the Instance, at least once.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now what I can do, who am I?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And you find that I am EC2 user.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Or ping google.com and start running some commands.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So to stop this, just do control C, and it will stop the command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 95:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then if you want to just exit this, you can just close this, exit this session, and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 96:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And let's check if you go back into PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 97:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So click back on PuTTY, and you load the EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 98:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Hopefully all you're seeing there is save.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 99:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, the top settings are saved, and my SSH Auth also has saved.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 100:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And therefore, if I click on open, then yes, I have access directly into my EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 101:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we've successfully performed SSH on this Windows 7 or Windows 8, through PuTTY.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 102:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture in case you have Windows 10, to show you how to SSH using Windows.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/040_How to SSH using Windows 10.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So on Windows 10, we can use the SSH command, so I opened Windows PowerShell and I typed SSH and if you see this, that means that it's available.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, you can also use the command prompt and do SSH and if you see this, that means the command is available.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you don't see the SSH command on your Windows, that means that you don't have it and therefore, you must use the patching method I just showed in the previous lecture.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: In my instance, I'm just going to use PowerShell to do these exercises, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, next what I have to do is to actually run this SSH command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the first thing I have to do is to be in the directory of where my pem file is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So right now, I'm in C:\users\stephanemaarek and I do ls, and as you can see, well, I don't have my pem file because it's under, for me, under desktop.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So I do cd.\Desktop to just change directory, I clear my screen then I do ls again and I can see my EC2Tutorial.pem file which is the one I downloaded, as well as the ppk file but this is not relevant, if you don't have it, it is fine, this is only if you want to use PuTTY.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The only file that is of relevance for us is the EC2 tutorial.pem file.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Okay, so we need to make sure that on the security group of course we have the port 22 open for SSH, which we do and next we need to enter our SSH command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, it is very similar to the one we have on Mac, so we do SSH minus I then you pass in the name of the tutorial file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So I did to get this, I did EC2 and then I press tab and I get auto suggested the EC2Tutorial.pem file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I press tab again, I can switch between ppk and pem.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Okay so, by pressing tab, I get the autocomplete of this, so I do SSH minus I or you can just type this, EC2Tutorial.pem and then when to type EC2 minus user at and at, well, the public IP of my EC2 instance which is right here, so I copy and paste it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So now this command is saying, please enter this IP using this user, the EC2 user which is the one we have because we use Amazon next to using this key right here, so let's press enter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it says, well, the authenticity of the host cannot be trusted, do you want to continue?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You say, yes and we are in the machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So sometimes you will get permission issues.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So sometimes the permissions will not be happy and I will show you how to fix them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So first let's exit this and clear the screen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in case you get a permission issue when running this command, what you have to do is to find your keys, so for me, it's in my desktop.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You right click on your pem file, you do properties, you go to the security tab and this is where we're going to change permissions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: To do so, we're going to do advanced and the first thing you need to make sure of is that the owner of this file is yourself.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So it's working for me, but you can just click on change and then for object types, you can find yourself, locations make sure it's on your computer and then type the object name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it would be for me, Stefan but I'm already an owner so just type your name and then you can be an owner of this file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The owner is also indicated in here, in your app permission entries.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The second thing you have to do is just remove these entities, so system and administrator don't need to have access to it and we need to disable inheritance.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So first let's disable inheritance, for this, we're going to remove all inherited permissions from this object.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then in here, I just select the principal so myself, I just go enter Stephan Maarek.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as we can see, I did Stephan Maarek in here, check names and this entered my principal name and we are going to give myself full control over this, press okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now the owner is myself and the principal that owns that file is myself as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We do okay and okay, so if I right click again on this file and do properties under security now, I only see myself, Stefan Maarek with full permission.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then if you have that and you do this command again for sure you will not have any permission issues and you will not be prompted with a yes, no question ever again.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to, you could try this command, so let's exit this and we can, for example, open the command prompt, go to my desktop.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Again, if you don't go to desktop, it will not work and then paste in this command and it will work, as well you can do an SSH from the command prompt.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we've successfully seen how to SSH onto our EC2 instance directly from Windows to exit, you can just type exit or do Control + D and we're good to go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now we can get started with this course, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/042_EC2 Instance Connect.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I want to show you an alternative to SSH that I found a lot easier which is the EC2 Instance Connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So for this, you click on My First Instance and then you click on the top, it says connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have multiple options including the SSH client we saw from before.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But one option I wanna show you is the EC2 Instance Connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So this allows us to do a browser based SSH session into our EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For this we verified the public IP address, which is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The username is provided by default, which is EC2 user because it get guessed by AWS that we are using Amazon and X2 and therefore EC2 User is the right username, but if you wanted to, you could override it, but it doesn't work unless you enter EC2 users.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll leave it as is for now, and then, as you see there's no SSH key option, because, well, when we do connect to it, it's going to upload for us a temporary SSH key and establish a connection this way.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So with this methodology, we don't even need to manage SSH keys which I found lovely.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you click on Connect and it's going to open a new tab.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And very quickly you are into your Amazon Linux 2 AMI and you can start running some commands such as whoami or ping google.com.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, everything is working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the cool thing about it is that, well, your session is in the browser instead of using a different command line interface such as terminal and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so you do ping google.com or do any kind of commands you want really on it without using the SSH utility beforehand.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But in this course, if I say use SSH, you have either the option to use your own terminal mssh or to use for example, party, or to use the SSH command on windows or to use, regardless of you here on windows, Linux, or Mac, the EC2 Instance Connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now this is relying on the SSH behind the scenes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: So if I go, for example, to my Instance look at the security group and I want to edit the rules.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So I click on my security group in here, the inbound rules I'm going to edit them and I'm going to remove the SSH inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So I delete it and save the rules and then go back to my EC2 Instances, and I close this one and I'll try to establish a new EC2 Instance Connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So let's connect, as you can see, this is not working because while there's a problem connected to your Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first thing is that you need to open the port 22.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So back into my launch wizard, I can fix this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will edit the inbound rule, add the SSH rule from anywhere IPV4, save the rule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's go back in here and just in case, if it doesn't work for you, sometimes it's because you're using IPV6, excuse me.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So therefore you need to do from anywhere IPV6 as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So you need to add these two entries for your EC2 Instance Connect to work sometimes, depends on your setup.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And now if we try to connect to the Instance itself, so let's try to connect in here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Voila, we are into the Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So there was a quick demo of EC2 Instance Connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will use it a lot in this course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/043_EC2 Instance Roles Demo.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So let's practice using IAM roles for our EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So at first, I'm going to connect to my EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: You can SSH, or you can use EC2 Instance Connect if you wanted to.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I will use EC2 Instance Connect because it's just going to be in my web browser and a little bit simpler.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So back into my instance with EC2 Instance Connect right here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And we are in our Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So as we can see, we are ec2-user@ and the private IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So regardless if you're using EC2 Instance Connects or SSH through your terminal, or whatever, through PuTTY.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Then if you see this, we are at the same stage, okay?
- Hidden/Implicit Meaning: Platform automation signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now you can just do some Linux commands.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, ping Google, and you can get some information out of Google.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will do Control + C to go out of it or issue any kind of Linux commands you want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, you don't need to know the next command going into the exam, but this is just a Linux terminal available to you right now in the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll type clear to clear the screen and next we have to run some IAM commands.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So the cool thing is that's the Amazon Linux AMI we're using right now comes with the aid of a CLI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so, as you can see, it is installed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what we can do is start using some commands.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, aws iam list users.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if we do so, it says unable to look at credentials.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: You can configure credentials by using aws configure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Container Runtime Operations
- Services: AWS Config, Amazon ECR
- Key Insights: So we could indeed run aws configure to configure the credentials and specify an Access ID a Secret Access key, and a region name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But this is a really, really, really bad idea.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design
- Services: AWS Config, Amazon EC2
- Key Insights: And the reason is that if we run aws configure and enter our personal details onto this EC2 Instance, then anyone else in our accounts could again connect to our EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: For example, using EC2 Instance Connect and retrieve the value of these credentials in our instance, which is not what we want.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is something that's really, really bad.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so as a rule of thumb, never, ever, ever enter your IAM APA key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 28:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECR
- Key Insights: So the Access Key ID and the Secret Access key into an EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is horrible and if you see someone doing it, please show them this video.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Instead, what we have to do is use IAM rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So if you remember, when we were in the management console and we were in IAM, we had created an IAM role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So let's go back into the Roles.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: We had this demo role for EC2 that had one policy attached called IAMReadOnlyAccess.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So we are going to attach this role onto our EC2 Instance to provide it with credentials.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so how do we do this?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For this, we can go into Security.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: And as you can see, there is no IAM Role right now onto our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: So what we can do is go back to our Instances, Action, Security, and then Modify IAM role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Here we have to choose an IAM role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So we have DemoRoleForEC2 and click on Save to attach this IAM role into our Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So if you go back to Security, now the IAM role attached to Instance DemoRoleForEC2.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the effect of this is that now if we do aws iam list users and press Enter, where we are getting a response around the users from IAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So as we can see, we did not run the command aws configure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: We just attached an IAM role and ran this command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And as a proof, if we go into this role and detach this permission, so now it's gone, and run the command again, we're getting an access denied.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So the role is really linked now to the EC2 Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 48:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And this is how we provide AWS credentials to our EC2 Instances only, only through IAM roles, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 49:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So if we go back to IAM and we attach a policy to this role and go back to IAMReadOnlyAccess, attach this policy and then rerun the command, we get an access denied because sometimes it can take a little bit of time to propagate the changes from IAM into AWS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if we run it one more time, we're getting the output we expect, which is what we want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So this is very important for you to understand this, use IAM roles for your EC2 Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is hopefully good for you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you like this hands-on and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/044_EC2 Instance Purchasing Options.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Hi, and welcome to this lecture on EC2 Instances Purchasing Options.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we've been using so far, on-demand EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: They allow us to run instances on demands, that means they're good for short workloads, we get predictable pricing, and we're going to pay by the second.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if you have different kind of workloads, you can optimize your discounts and your pricing by specifying it to AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: For example, you can use reserved instances and you have one year or three years term, and they're meant for long workloads.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if you know you're going to run a database for a long time, then a reserved instance is great.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Platform Design
- Services: Amazon Lex
- Key Insights: And if you want to have a flexible instance type, so for example, you want to change the instance type over time, then convertible reserved instances are for you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And by the way, don't worry, I'm going to do a deep dive in all of those over time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, next we have savings plan and savings plan are one and three years term, and they're more modern because instead of committing to a specific instance type, you commit to a specific amount of usage in dollars, and there again, for long workloads.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Spot instances instead are meant for very short workloads, they're very, very cheap, but at any time you can lose these instances and that makes them less reliable.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Dedicated host allows you to book an entire physical server and control instance placements.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And dedicated instances means that no other customers will share your hardware.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Finally, capacity reservations allow you to reserve capacity in a specific AZ for any duration.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Now let's look at EC2 on-demand.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you're going to pay for what you use.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that means that if you're using Linux or Windows, you're going to be getting a billing per second after the first minute, or for all the other operating systems, you're going to get a billing per hour.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It has the highest cost but no upfront payments and no long-term commitments.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means it's definitely recommended for a short-term and uninterrupted workload where you cannot predict how the application will behave.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now for reserved instances, and by the way, the numbers I show you can change over time, so I will not update this video every time, but it gives you an idea of what the numbers can be.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So the reserved instances give you a 72% discounts compared to on-demand.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And you reserve a specific instance attributes.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: For example, the instance type, the region, the tenancy, and the OS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You specify a reservation period one year or three years, to get even more discounts, and whether or not you wanna pay upfront, partially upfront, or not upfront.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And all upfront of course gives you the maximum amount of discounts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In terms of the scope, do you want the scope to be into a specific region or a zone?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means reserve capacity in a specific AZ.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so you would use reserved instances for the steady-state usage applications, think for example, for a database.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And you can buy or sell your reserved instances in a marketplace if you don't need them anymore.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And there is a specific kind of reserved instances called the convertible reserved instance, which is allowing you to change the instance type, the instance family, the operating system, the scope and the tenancy.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Operational Context
- Services: Amazon Lex
- Key Insights: And because you have more flexibility, well you get a bit less discounts you get up to 66% discounts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So that's for reserved instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: And now you have the EC2 savings plans which is to allow you to get a discount based on long-term usage, which is the same 70% as reserved instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But instead, you're going to say, "I want to spend $10 per hour for the next 1, 2, 3 years." And any usage beyond the savings plan is going to be billed at the on-demand price.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So with savings plans, you're locked to a specific instance family and region.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Platform Design
- Services: Amazon Lex
- Key Insights: For example, you say, "I want to have M5 type of instance family in us-east-1." But you're flexible across the instance size.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can have m5.xlarge, m5.2xlarge and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The OS, so you can switch between Linux and Windows and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the tenancy, you can switch between host, dedicated and default.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now, for spot instances, they have the most aggressive discounts, so up to 90% discounts compared to on-demand, but they are instances you can lose at any point of time because you define a max price you're willing to pay for your spot instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if the spot price goes over it, then you're going to lose it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So they're the most cost-efficient instances in AWS and they're going to be very helpful if you have a workload that is resilient to failure.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what could they be?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: AWS Batch, Amazon Lex
- Key Insights: Well, it could be batch jobs, data analysis, image processing, any kind of distributed workloads, or workloads that have a flexible start and end time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They are not suited for critical jobs or databases and the exam will test you on that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next we have dedicated hosts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So you get an actual physical server with EC2 instances capacity fully dedicated to your use case.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you want to have dedicated hosts in the use case of, you have compliance requirements or you need to use your existing server-bound software licenses that has billing based on a per-socket, per-core, per VM software licenses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is in these kind of use cases that you need to access the physical server and get a dedicated host.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for dedicated hosts, you get on-demand, and you're gonna pay per second, or you can reserve them for one or three years.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They're the most expensive option of AWS because you actually reserve a physical server.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so again, a use case is when you have a software that comes with a licensing model that is bring your own license.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Or if you have a company that has strong regulatory or compliance needs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We also have dedicated instances, and there are instances that runs on hardware that's dedicated to you, which is different from the physical server.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 54:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM
- Key Insights: But you may share the hardware with other instances in the same accounts and you have no control over instance placements.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 55:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So there's a difference between dedicated instances and hosts, that is here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: At the exam, honestly, it doesn't trick you into one or the other, but remember that dedicated instances mean that you have your own instance on your own hardware, whereas dedicated host, you get access to the physical server itself and it gives you visibility into the lower level hardware.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Next, we have capacity reservations for EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So you can reserve on-demand instances in a specific AZ for any duration.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you get access to that capacity whenever you need it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have no time commitment so you can reserve capacity or cancel your reservation at any time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And no billing discounts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The only purpose is to reserve capacity.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 63:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if you want to get billing discounts, you need to combine it with regional reserved instances or your savings plan.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 64:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And you're charged at the on-demand rates, whether or not you run instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 65:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So that means that your reserved capacity, you're going to be billed for it, and you know for sure that if you want to launch instances they're going to be available, but if you don't launch them, you're still going to get charged.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So they're very suitable for short-term uninterrupted workloads that need to be in a specific AZ.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it gets difficult to understand which purchasing option is right for me, especially if you are a beginner.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But let me give you a summary.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first one is on-demand.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll take a resort as an analogy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And with on-demand, you have a resort and you come in whenever you like and whenever you like, you pay the full price.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For reserved, well, you like to plan ahead and you know you're going to stay a very long time in your resort, one, two, three years, and then you're going to get a good discount because we know you're going to stay long time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Savings plan is saying, "Hey, I know for sure that in my resort I'm going to spend a specific amount.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to spend maybe $300 per month every month for the next 12 months." And therefore, you may wanna change the room type over time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So king, suite, sea view, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: But the savings plan is saying, "Hey, you're to commit to a specific spending in your hotel." Spot instances are whenever the hotel runs very last-minute discounts because they have empty rooms and they wanna attract people.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So they get empty rooms and people bid on getting this empty room.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so you get very, very discounts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But in this specific resort, well, you can get kicked out of at any time if someone is willing to pay more for your room than what you did.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But I don't wanna stay in such a resort.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Dedicated host is saying, "Hey, I want to book the entire building of the resort." So you get your own hardware, your own resort.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then capacity reservation is saying, "I'm going to book a room, I'm not even sure if I don't stay in, but I know that if I want to stay in, I will have it." And you will pay full price for booking that room nonetheless.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In terms of price comparison, I've just put together this table to give you one example at one point of time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I took an m4.large in us-east-1, and the on-demand price is 10 cents, but then the spot price is going to be up to, for example, 61% off in my example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Then if you want to reserve your instance, as you can see, you have different pricing.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you wanted to have for one year, for three years, and pay no upfront or all upfront.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: Same for the EC2 savings plan we see that it is the same as a reserved instance discounts.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 88:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We also get reserved convertible instances and we have dedicated host, which is at the on-demand price.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The dedicated host reservation which is up to 70% off because you reserve your host.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And capacity reservation again at the on-demand price.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So the exam will ask you to just know which type of instance is the right one based on your workloads.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And by now, you should have some good hints, and don't worry, we will practice this over time.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/045_Spot Instances & Spot Fleet.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Okay, so let's do a deep dive on EC2 spot instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, we know that with a spot instance, you can get a discount up to 90% compared to On-Demand, so that's huge cost saving.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so how does that work?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We define a max spot price that we're willing to pay for that spot instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then as long as the instance is having a spot price that is less than the max price we're willing to pay, then we keep that instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, that max spot price, I will show it to you in the next slide, but the hourly spot will vary based on offer and capacity, and so it will go up and it will go down.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if somehow the current spot price goes over the max price you have defined, then you have two options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for these two options, you have a two minutes grace period.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, that gives you a little bit of time to do these things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the options can be either you're stopping your instance, that means that you shut down everything you are doing then you stop your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so, if one day the spot price goes below your max price, then you can restart your instance and continue where you left it off or if you don't need the state on your EC2 instance, you can just choose to terminate your instance and let it go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then that would assume that anytime you would restart your work, you can start with a fresh new EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, two strategies based on the type of workload you have but you have a two minutes grade period to do so.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: The other strategy, if you don't want your spot instance to be reclaimed by AWS, is to use a spot block.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the spot block is when you block a spot instance for a specified timeframe.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this can be between one to six hours, and you get that block without any interruption, at least on paper because in the documentation-- but it's really rare.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: In rare situations, the instance may be reclaimed but overall, when you consider a spot block thing that the instance will not be reclaimed, that's the whole purpose of the spot block.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, when do we use spot instances?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: They're for batch jobs, data analysis, workloads are resilient to failures.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as I said, they're not great for critical jobs or databases.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now let's have a look at the spot instance pricing.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is a graph that I obtained directly from the AWS console.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And as we can see here, this gives us the price for a m4 large instance over three months in the spot zone.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, as you can see, you have six lines for us-east-1a.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Sorry, the region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: And you have six availability zones.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, six prices.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, as you can see, the spot price does vary based on the AZ you're considering.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so as we can see, over three months it has varied quite a bit.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, if you look at that yellow line, it has varied between 0.4 to 0.45, all the way down to almost 0.35 let's say, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so, let's assume that we are defining a user defined max price to be this black horizontal bar/dotted line, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so, what we'd see is that if the yellow line is above the dotted line, then the current spot price is going to be more than the max price we have defined.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so, in this instance right here, we're going to lose our spot instance, so we have to terminate it or stop it but if the price goes down, so if the yellow line goes down our dotted line, that means that we are willing to pay that price.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so, we are gaining that spot instance in this meantime.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this is how we can optimize the cost of our workload very easily.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so as you can see, the On-Demand price is $0.10 per hour.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's really, really cheap.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then the spot instance price is even cheaper.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's around $0.4 I would say.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, it's a 60% saving in that instance for the spot instance pricing.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, lots of savings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And obviously if you were to define your user defined max price to be something like $0.05 per hour, then no spot instances will be reclaimed because you're always willing to pay more than the actual spot instance price.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, no one can predict how the price goes over time but as you can see, it can be rather stable, it can fluctuate a little bit but overall, it still provides you huge savings compared to On-Demand, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: How do you terminate a spot instance?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we have to first understand how a spot request works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so for this, let's consider a spot request.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, with the spot request, you are defining how many instances you want, your maximum price you're going to pay, the launch specification, so the AMI and so on, and when your request is valid from and until but it can be infinite.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then the request type.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it's very important to understand there's two types of requests.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: You can do a one-time request for spot instances or a persistent request for spot instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look at the difference.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, if it's a one-time request, as soon as your spot request is fulfilled, your instances are going to be launched and then your spot request will go away because it was a one-time request type.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in this case, your spot request is going to go away and you're fine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: But if it's a persistent request type, that means that we want this number of instances to be valid as long as the spot request is valid from to valid until.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so, that means that if somehow your instances do get stopped or interrupted based on the spot price, then your spot request will go back into action.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And when things can be validated, we'll restart spot instances for you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 58:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if somehow you stop a spot instance in persistent mode and your spot request is still active, your spot request automatically will be smart enough to restart a launch and instance for you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is something you can also see in this diagram but I won't spend too much time on it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, what you understand out of it is that if you want to cancel a spot request, it needs to be in the open state, the active state, or the disabled state.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means that basically it's not failed, it's not canceled, or it's not closed, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And when you want to cancel a spot request, so if you take the spot request on the left-hand side and you cancel it, it's not going to terminate any instances that you have launched from before.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 63:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, it is still your responsibility to terminate these instances and not the responsibility of AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 64:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So as such, if you want to terminate spot instances for good and not have them relaunch, you need to first cancel the spot request and then you terminate the associated spot instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 65:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Because if you were to terminate the spot instances first, remember it goes back into the spot request and the spot request says, "Okay, you wanted six instances "but I can see you have zero right now. "I'm going to launch six instances for you." So again, the right order to cancel and to terminate spot instances is to first cancel the spot request to make sure that no new instances will be launched by AWS and then you terminate the associated spot instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I'm spending a bit of time on this because this is something that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, next: spot fleets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this is the ultimate way to save money.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, spot fleets is going to be a way to define for you to get a set of spot instances and optionally On-Demand instances, that's why it's called a fleet.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the spot fleet will try its best to meet the target capacity with the price constraints you defined.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, it will launch from possible launch pools.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: (none explicit)
- Key Insights: So, it can have different instance types, different OS, and availability zones.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 73:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so, you're going to define multiple launch pools, so multiple instance types, multiple everything.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then the fleet will choose the best and most appropriate launch pool for you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Platform Design
- Services: AWS Budgets
- Key Insights: And when your spot fleet either reaches your budget or reaches the capacity you wanted, then it will stop launching instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 76:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so, you define a strategy to allocate spot instances in your spot fleet, and that's something to remember.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 77:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: The first one is lowest price, and that's going to the most popular one going into the exam, which is that the spot fleet will launch instances from the pool that has the lowest price and that gives you a lot of cost optimization.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is a great option if you have a very short workload.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: (none explicit)
- Key Insights: You can also have a diversified way to launch your spot instances, in which case the launch in the spot instances will be distributed across all the pools that you have defined from before, which is great for availability and long workloads because if one pool goes away, then your other pools are still active.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you have capacity optimized.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, you have a pool with the optimal capacity for the number of instances you want.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you have price capacity optimized, which is first choosing the pool with the highest capacity available and then select within that the one that has the lowest price, which is the best choice for most workloads.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, the idea is that spot fleets can be complicated but what you have to remember is that using the spot fleet, you're able to define multiple launch pools and multiple instance types until you're just interesting in raw power.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 84:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then if you use the lowest price discounts or the lowest price strategy for spot fleets, then the spot fleets will automatically request the spot instances with the lowest price for us.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 85:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so, spot fleets gives us an extra saving based on spot instances because it's smart enough to choose the right spot instance pool to allow us to get the maximum amount of savings.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is the benefits of spot fleets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And again, you need to understand the difference here of doing a very simple spot instance request where you know exactly the type of instance you want and the AZ you want to using a spot fleet and saying, "Okay, you can choose all these instance types "and all these AZ, "and what I need from you "is to give me the lowest price, for example, okay?" So, that hopefully is giving you a lot of insights into how spot fleets and spot instances are different.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/046_EC2 Instances Launch Types Hands On.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So let's have a look at all the ways we can launch our EC2 instances, and the first one is using a spot request.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: On the left hand side, I click on Spot Request and we can have a look at first the pricing history for our EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if we look, for example, at a c3 or a c4.large, for example, you're running Linux/Unix and I'm going to look at three months range, we can see how the price has evolved over time based on April, May, June, and we have the on-demand price as a black bar right here, and then we have, based on the different AZ, the price.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, well the price has been quite low and quite stable.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And based on the different range you're looking at, you're looking at savings of around 69 to 70% for this type of instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So huge savings if you're using a spot instance of type c4.large.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So how do we request a spot instance?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Well, we click on Request Spot Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I am in my spot fleet request screen, and there's a lot of parameters that I can see, but I want to go quickly over them just so to get an idea of how spot fleet request works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design
- Services: AWS Config, Amazon EC2
- Key Insights: So you can either use your launch templates or manually configure launch parameters, and you can specify Amazon Linux 2, the key pair you want to use, as well as some additional launch parameters you would specify if you were to create an EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So this defines how your EC2 instances are created and this makes sense.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next, we have request details, so we have more settings in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: We can say what's the max price you wanna have, when is the request valid from and valid until, do we want to terminate the instances when the request expires or not, and are we linking these EC2 instances to one or more classic load balancer or a target group to have it, for example, for an application balancer.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll use the defaults for this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Then for target capacity, how many instances do we want to have as part of our spot fleets.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we can say, for example, 10 instances, okay.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We could also specify it in terms of vCPUs if your unit of compute was more important, or megabytes of memory if RAM was more of your target.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can say, for example, we want 10 vCPUs, we want to maintain the target capacity and then what happens?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Well, in case of interruption, please terminate my instances, but you can also stop them or hibernate them, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you can also rebalance the capacity if need be.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is just some tweaking around the target capacity.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then for networking settings, so where do you wanna launch them, in specific AZs or not, in a specific VPC or not.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Then for the instance type, do we want to have some restrictions, so you can manually select the EC2 instances that are matching some specific criteria for your spot fleet request, for example, c3.large, c4.large, and so on, or you could specify just instance attributes and this can say, hey, how many vCPUs you want, min and max, how much memory you want, min and max, and then other attributes if you wanted to.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then based on what you specify right here is going to give you the matching instance types.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we see the more restrictive you have you are around these parameters, the less instant type matches you're going to have.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But the idea is that you want to just launch whatever AWS has in store for you so that you maximize the savings while having some compliance with the restrictions you said before.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then the allocation strategy, so do you want to optimize for capacity so to make sure that you have the right capacity all the time, or do you want to have the lowest price and you're going to get the strongest savings based to that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then if you had chosen the manually selected instance types here, for example, one, two, three, four, then you could select this option right here to maintain a diverse pool of instances across all the instance types you selected right here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So once you've done it, you get some summary of your fleet request, and whether it's a strong fleet, how many instances match and so on in which AZ.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then it gives you the estimated hourly price for this fleet, so 0.156 per hour at target capacity, which is going to give me a 73% savings compared to on-demand.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So no need to know exactly how these work, okay, but just you can see all the parameters you can have to do a spot fleet request.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: If you want to launch a spot instance directly, just go to Instances and then Launch an instance, and in there, you can scroll down and you will find under the Advanced details, the option to request a spot instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 33:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So should you do so, then you are requesting spot instances and by default, the request of the spot price is capped at the on-demand price, which is quite good, but you can customize this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 34:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So you can, for example, enter your own maximum price if you wanted to, per instance, per hour, then you can choose the type of request you want.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So by default, it is a one-time request.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: That means that whenever you request a spot instance in case it gets reclaimed, it will automatically be terminated, this is the only correct interruption behavior, or you can choose a persistent type of request.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Runtime and execution-path signal.

Line 37:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: In that case, then the spot instance will keep on coming back when the price requirements are set.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In that case, you have to set a validity of your request.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You say, okay, this request is persistent until a date or just no expiry, as well as what happens in case the price goes over the maximum price you have.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In that case, you have an interruption behavior of either hibernate or stop.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And finally you see here, block duration.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is going away on December 22nd, on December 31st of 2022, so I'm not describing it to you right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is a outdated feature that you may not even see on your account right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next, let's have a look at all the other options available to us.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we have reserved instances and reserved instances allows us to purchase a specific reserve instance of a specific type.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, we can look for a c5.large and we can do a search of all the offerings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we have different offerings available to us.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: For example, we have a 12-months or a 13-months term and it could be a standard or a convertible type of instance, and this is all upfront, but we scroll down, we can get so all upfront, we can get no upfront, we can get partial upfront.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We say how many you want, for example, we want two of these, so I'll just have the number two in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then on the right hand side, you can just click on Add to carts to add this reserved instance to your carts.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 51:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: If you click on View carts, you can have a look at what type of reserved instance do you want and then we can order all.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if you click on that, you will pay a lot of money, so I would suggest not to do this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: As we can see, reserved instances, I think, will soon go away because now the AWS Savings Plans, maybe something that's easier to use, and so this is why it's recommended to use the savings plan.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 54:
- Concepts: Compute Platform Design
- Services: Amazon Lex
- Key Insights: So the Savings Plan is available here on the left hand side, which is allow you to dedicate a specific amount of dollar per hour you spend on a one, two, three-year term and gives you flexibility of how you want to launch your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 55:
- Concepts: Compute Platform Design
- Services: Amazon Lex
- Key Insights: It gives you flexibility in terms of instance type, AZs, and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll go now, go over it, but it gives you the option.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next, we have dedicated hosts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So dedicated host is for you to launch a host that you get access to a lower level kind of hardware, which gives you better licensing pricing, which is why if you click on this, it will direct you to a license manager, which is a way to think in terms of licenses and not think in terms of host, and in which case, it's going to simplify the management of your dedicated host.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: But if you wanted to launch a dedicated host directly from this UI, you click on Allocate Dedicated Host, then you would name it, you would specify the instance family, for example, c5, you would specify an AZ.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 60:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So on this dedicated host of the c5, we can launch multiple instance types and then a bunch of settings as you go, and then you click on Allocates and you will have a dedicated host.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But again, I will not do this because this will cost you a lot of money.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Finally, for capacity reservations, this is when you want to ensure that capacity is available within your EC2 instance launch.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 63:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So for example, we're saying, "Hey, I want to make sure that I have enough m5.2xlarge available to me," so I want them to be in eu-central-1, and I want them to have four EC2 instance type m5.2xlarge available to me no matter what, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 64:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then you can say, when the reservation ends, is it manually on a specific time, and then this will guarantee that the instances will be available to you, but you will have to pay for this reservation regardless whether or not you are launching your instances in it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: We've seen all the ways to launch your EC2 instance types.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/105_Route 53 - EC2 Setup.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's get started.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: And before we use Route 53, I want to go ahead and create three EC2 instances in different regions, as well as one ALB.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So in one of these regions I'm going to go into instances and then launch an instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And very simply, I will choose Amazon Linux2 on this architecture, a T2 micro type of instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I don't need a key pair, because I will use, if I need to, I will use EC2 instance connect.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And then for network settings, I'm going to create a security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will allow SSH as well as HTTP from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then I will just, in advanced details, specify a bootstrap user data script.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, to do so, just go into your Route 53 user script and you copy this entire script.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you paste it here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So what's going to do is it's going to say hello world from the instance, just as before.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2
- Key Insights: But now we're going to add the AZ the instance was launched in, using this environment verbal called EC2, availability, zone that I created from before.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 13:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So it's going to give us a little bit more info about EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So I'm going to go ahead and launch this instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this has been launched and it is right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next I'm going to go into another region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, Northern Virginia, so US East one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then I will launch an instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And same settings.
- Hidden/Implicit Meaning: Platform automation signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So again, no key pair required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So proceed without a key pair.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will allow HTTP as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: And for advanced details, I will provide the exact same EC2 user data script.
- Hidden/Implicit Meaning: Platform automation signal.

Line 25:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Then we click on launch instance and we're good to go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And finally I'm going to go into one last region, for example Singapore.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And in Singapore I'm going to launch an instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we'll leave it as t2 micro, we will choose no key pair.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll allow HTTP from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then, under advanced details, I'm going to paste in the data and launch this instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, so we have three instances now being started in three different regions.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have one in Frankfurt, one in Northern Virginia, and one in Singapore.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Lastly, what I'm going to do is that I'm going to launch a load balancer in Frankfurt, for example.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 35:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So here I'm going to create a load balancer and choose an application load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Create.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then the unique name will be DemoRoute53ALB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is fine, it's going to be internet facing, on IPv4.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will choose for mapping, one, two, and three subnets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And for security group I can choose up to five.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to choose the one that I've created just from before, which was the launch user two, which had AWS and HTTP enabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This way we're sure that HTTP is enabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the protocol is on 80, you're going to forward to a new target group, that we're going to have to create, based on instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I'll call it this one demo tg route 53.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And, what I want to do is next and register my one instance right now that I just created from before.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you do include as pending below.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then on the review targets, you have one target.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then create the target group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the target group is not created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So back into model balancers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I can refresh this and select the demo tg group route 53.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And everything looks good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Let's create our load balancer, and then click on view the balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here we go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now to summarize, let's see if everything has been working properly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So, we have one EC2 instance right here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And let's take the public IP, so I'll just copy the IP itself, make sure using the IP via http.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it says hello world from blah, blah, blah.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is good, so what I'm going to do is that I'm going to, under a text file, just to have a mark of a trace of everything, I'm going to put the IP address as well as the region I'm in.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So EU central one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see, it says hello from AZ EU central one B.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, so this instance is working.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'm just testing whereas everything's working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to also take this public IP right here, paste it in, and it says yes hello from US East one A.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect, so this is US East one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the last instance right now it's here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then I'm going to copy this IPv4 address, paste it in, and it says hello from AP Southeast one b.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this one's working as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go here, AP southeast one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: And finally, if I go under my ALB and take the DNS name right here, let's see if it has been provisioned.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it is provisioned as we can tell.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this can take a bit of time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for you, it may not work, for me it worked.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so because it is pointing to one EC2 instance, it's a hello world from AZ EU Central one B.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 76:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So now we have properly set up all our instances, as well our GNS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And keep this information handy, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/30_Other Services/383_Instance Scheduler on AWS.txt

Line 1:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So now let's talk about Instance Scheduler on AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's a bit of a weird one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: It's not a service, it's an AWS solution that's deployed through CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here is the architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: It's quite complete and quite complicated, but the idea is that you deploy this using CloudFormation and this provides you a capability in your account to automatically start and stop your AWS services in order to reduce costs, maybe up to 70%.
- Hidden/Implicit Meaning: Platform automation signal.

Line 6:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: For example, if you have a use case where you want to stop the company's EC2 instances outside business hours, then you may want to use the Instance Scheduler solution on AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2, Amazon RDS, Auto Scaling
- Key Insights: So this has support for EC2 instances, EC2 Auto Scaling Groups and RDS instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 8:
- Concepts: Compute Platform Design, Serverless Execution Model
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: Now, all the schedules are managed in a DynamoDB table and the idea behind how this service works is that there's a Lambda function that will look up the schedule in DynamoDB and then it will trigger other lambdas that will automatically stop or start the required instances in the required services.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is a complete solution.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It supports cross-account and cross region resources and is production ready.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you are interested, this is the link and the exam may ask you about the idea behind this solution.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So again, this allows you to just stop and start resources to save on costs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now I just wanna show you how this gets deployed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: We're not going to use it, but I want for you to see it in action for the deployment part.
- Hidden/Implicit Meaning: Platform automation signal.

Line 15:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So let's type Instance Scheduler AWS, and then we click on the solution and we arrive on this webpage.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Platform Design
- Services: Amazon EC2, Amazon RDS
- Key Insights: So this is to stop and start Amazon EC2 and RDS instances to manage cost.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we get the benefits, we get some information around the version, the release, we can look at the implementation guide and you can download it, it's very helpful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: The source code is there, this is the CloudFormation template and so on.
- Hidden/Implicit Meaning: Platform automation signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we have a developer guide and an operator guide.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's quite a complete solution and one of the most, I would say complete one on AWS and this is architecture and it shows you what is step 1, step 2, step 3, step 4, step 5, step 6 and step 7.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Obviously, using it is out of the scope of this course, but we're just going to do the quick start to see how we can get started.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So the way to actually launch the stack is to use the management console and you click on launch solution here and this takes you directly into CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 23:
- Concepts: Compute Platform Design
- Services: Amazon S3
- Key Insights: And then automatically is going to pre-fill the instance at this template and the Amazon S3 URL and then we click on next.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So this is going to deploy the solution as a CloudFormation template so I'll call this one Instance Scheduler and you don't have to do it, I just wanna show you how it's done.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here we get some information around the different parameters.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have...
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I need to have no space, okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have here the tech key is Schedule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is every five minutes that we're going to look at if we can shut down things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What's the default time zone?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you want to enable yes or no scheduling, so no if you want to disable it or yes, if you want to enable the solution.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we have services.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon DocumentDB, Amazon EC2, Amazon Neptune, Amazon RDS
- Key Insights: So do we want to allow it to enable EC2 scheduling, yes; RDS, RDS cluster as well as Neptune, DocumentDB and auto-scaling so it's possible that over time more services are added to this, but the main ones to remember are EC2 instances and RDS instances and cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you have tagging.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So this is what happens when an instance is started or stopped.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: A tag is going to be added automatically describing how instant scheduler actually did an action on this date, on this time zone.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, more service specific things that we don't need to really look at.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Platform Design
- Services: Amazon RDS
- Key Insights: Do we want to have RDS instances snapshot on stop?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Compute Operational Context
- Services: Auto Scaling
- Key Insights: What do we want to look at for ASG and so on?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's quite a very complete, I would say solution monitoring and then other things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But for now, we're good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's click on next and then let's click on yes and click on next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And so this is going to create based on all these parameters, a stack on CloudFormation with all the solution.
- Hidden/Implicit Meaning: Platform automation signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now I'm just going to wait for it to be created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Okay, so the stack is now created and what's important to see is the resources.
- Hidden/Implicit Meaning: Platform automation signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see, there's a lot of resources that have been created and so we can tree view or a flat view.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: Amazon DynamoDB
- Key Insights: And what I wanna show you though is a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So if a type dynamo, okay, we have three tables, we have the config tables, and that's the most important table here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, in this table that you would set your schedules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's explore the table item and here we go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have here the types of things that happen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have the name, the begin time, the description, the end time, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is just an example, but it tells you like for example, how to have office hours or days in the week or working days or every first Monday of each quarter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is where you would actually schedule and set up everything.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: And then for the rest, then if you go into the Lambda console over here, it's just a bunch of Lambda functions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can see I have a lot of them right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: This bunch of Lambda functions are going to do all the scheduling.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Of course, getting into the details of the architecture is not what's necessary, but for you to understand the idea behind it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I went a little bit too deep into it probably, but it's good for you to see it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And I'm just going to go ahead and delete my stack and we'll be done.
- Hidden/Implicit Meaning: Platform automation signal.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/043_Solution Architecture on AWS.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: [Instructor] - Now let's talk about solution architecture on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: At a very high level, because there are so many combinations, but it all looks a little bit similar if you look at it from a high level.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have our users, and they need to get access to our application, so the first thing they do is talk to a DNS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the DNS layer is usually going to be your route 53.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then they have two possible routes from there.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: They have to find some static content and some dynamic content.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Usually the static content is going to be spread all around the world, it's going to be cached by having a CDN layer, a content delivery network, and usually that is going to be CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: Amazon Glacier, Amazon S3
- Key Insights: And CloudFront is going to source this data, usually in a static form from S3 or Glacier, but we all know that CDN of CloudFront can also get it from custom sources and we'll learn all these topics one by one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What I want to expose to you right now is all the plus switches we have and the kind of architectures we have to get into and the choices we have to make.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: Amazon Glacier, Amazon S3
- Key Insights: So, on a static asset layer surge, we have S3, which is going to be perfect for CloudFront, or Glacier for archives and it doesn't work directly with CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Okay, on the web layer now, which is the more dynamic content, we have to set up a load balancer or a gateway.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 13:
- Concepts: Elasticity and Availability, Serverless Execution Model
- Services: API Gateway, Elastic Load Balancing
- Key Insights: So we have classic load balancer, application load balancer, network load balancer, API gateway, or even an elastic IP, if we don't need that amount of layer, for example if you have a very simple solution in the backup.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 14:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability, Serverless Execution Model
- Services: AWS Batch, AWS Lambda, Amazon EC2, Amazon ECS, Amazon EMR, Auto Scaling
- Key Insights: Then that web layer has to talk to a compute side, and that compute side may be something like EC2, or an auto scaling group, AWS Lambda, ECS, Fargate, Batch or EMR, and obviously you cannot connect EMR with a web layer but what I wanna show you is that if there's no web layer, then we can still have a compute layer that does some batch computations.
- Hidden/Implicit Meaning: Constraint or limitation signal; Elasticity and resilience signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's really hard to represent all the solutions architecture and AWS into one slide, but I want to be able to divide to you the different categories so you get a better understanding of all the kind of things we're going to do a deep dive on in the future lectures.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: By the way, the platform layer can also be in front of your web layer, as you can see in the arrow from the CDN to the web layer so it is possible to get different directions as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: Amazon Aurora, Amazon DynamoDB, Amazon RDS, Amazon Redshift, Amazon S3
- Key Insights: Okay, next your data needs to be somewhere so usually you have a database, and that database can have multiple forms, it can be RDS, Aurora, DynamoDB, ElasticSearch, S3 is considered a database as well, or Redshift if you have more analytical type of workloads.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: Amazon DynamoDB, Amazon RDS
- Key Insights: It's also very possible that you will need a caching layer, and so you can cache stuff or it can have a section layer for cashing your section data, so it could be Elastic cache, DAX if you have infinite of DynamoDB, DynamoDB itself can also be a session layer, and RDS, it's very possible to put your sessions in RDS, even though ElactiCache is probably going to be a little bit more scalable and faster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EFS
- Key Insights: Okay, next there's possible that your instances will need to fetch static data as well, so this data can be on EBS, EFS or directly on the instance stores.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Again, it depends on the kind of requirements you are going to have for your solution architecture and you need to be able to decouple your solutions if you have a micro services type of architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Serverless Execution Model
- Services: Amazon Kinesis
- Key Insights: And so it could be using SQS, SNS, Kinesis where they have streams of data, Amazon MQ, Step Functions for orchestration, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Platform Design
- Services: Amazon S3
- Key Insights: Finally, it is possible that your compute layer also needs to be accessing some static assets, so S3 Englisher is a definite option.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: (none explicit)
- Key Insights: So these are all some kind of combinations, and if you try to permit all of them, you can get really an infinite number of solution architecture, but what I want you to realize at this high level is that as we get into solution architecture discussions based on what you choose for your database, your computer caching, your orchestration, your storage, your static, your web layer, your CDN, everything, it will have some impact into the cost, into the availability, the durability, the scalability, and so on, so it's really up to you as a solution architect to understand which type of technology is going to be the best for which moment, and this is what the exam will be testing you on.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now in this section, we're going to do a deep dive into everything in this slide, so don't worry, there will be specific solution architectures for each of these components, and we'll get a better discussion to which one is more appropriate and when and why.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for a small introduction.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you're all excited, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/044_EC2.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So first let's do a deep dive into EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: EC2 is a very, very big topic, but hopefully this is something that you already know at a very high level based on your previous experience.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will try to summarize everything that's going to be important going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So first, when you have an EC2, you need to choose an instance type and they have different families.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have R, which is for example, R5X.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That is usually for applications that need a lot of RAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for example, in-memory caches would be great.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: C, for applications that need a good amount of CPU for computations.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So they are great for databases as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: M, which is sharp balance.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So M is for something like medium, which is for general web applications.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I, which is when you need very good local I/O.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So this is when you have an instance store attached to your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is great for high performance databases.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: G, when you need to have a GPU.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is when you're doing machine learning or video rendering.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then you have different kind of smaller instances or T2 and T3, which are burstable up to certain capacities.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So they are instances that need to react very quickly and get good performance in case on spikes but gets a baseline performance that's average in the meantime.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And then if you have T2 or T3 unlimited, you can get unlimited burst if you have a very specific type of workload.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 20:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: Finally, if you need to find the right instances for you, you have this website called ec2instances.info, which is great to understand which instance type is right for you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Okay, so now we know that based on the EC2 we have, we have different kind of families and each family is appropriate for different kind of workloads in terms of if the institution type is optimized for that workload, then the workload will finish faster and we are probably going to pay a lot less.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Next, when you launch these EC2 instances you have to place them and by default when you launch an EC2 instance it's placed randomly in AWS's data center and you just have it right away.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: But you can tell or hint to AWS where you want your instance to be placed.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that is the purpose of placement group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you have multiple strategies.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM
- Key Insights: The first one is cluster where you want all your instances to be within the same AZ into a cluster that will give it a low-latency group.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is great when you want to perform some high performance computing, so HPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Next you have spread where you want your instances to be spread across the underlying hardware.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So you don't want it to be on the same rack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 30:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so it's maximum of seven instances per group per AZ.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And these are for the applications that needs to not have a hardware failure that is spread to different instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So by having a spread instance group, instead of placement group you will have your instances very far away from each other, they're spread out and therefore they won't fail all at once.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 33:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then partition is when you have a higher number of EC2 instances that you need to place them across different partitions.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is when you have, for example, something like Hadoop, Cassandra, or Kafka.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: These are great for a partition placement group strategy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, it is possible and you need to know this, to move an instance into or out of a placement group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: First, you need to stop that instance, then, you need to use the CLI to modify the instance placement.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you're saying in this placement group or out of this placement group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then you can start your instance and it will be in the placement group you need.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's very important that you know this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next, we have the placement group of type cluster that we need to do a deep dive on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is what a cluster looks like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Platform Design, Deployment Automation, Elasticity and Availability
- Services: AWS SAM
- Key Insights: All the instances are going to be on the same rack in the same availability zone.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal; Platform automation signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that we get a great network.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we get 10 gigabytes per second bandwidth between these instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So they can communicate very, very fast with a low latency.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM
- Key Insights: The concept that if the rack fails, so if the underlying hardware fails, then all the instances, because they're placed next to each other they will all fail at the same time.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 48:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And when we have such a cluster placement group, it's great to choose an instance type that has enhanced networking because they will have faster networking capability between each other.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the use case for a cluster placement group would be a big data job that needs to complete very fast, high performance computing or applications that need extremely low-latency and high network throughput, but at the risk of failing all at once.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So spread, here it looks like, we have different hardware across different AZ and each EC2 will be placed on a different hardware up to seven EC2 per AZ.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that gives us some good pros.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first is that you can span across multiple AZ and the reduced risk of simultaneous failure is really, really low.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: EC2 instances are on a different physical hardware.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 54:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: Now for the cons, it's up to only seven instances per AZ per placement groups so you're limited in scale.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 55:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: (none explicit)
- Key Insights: And the use case would be for an application that needs to maximize high availability or critical applications where each instance failure must be isolated from each other.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal; Elasticity and resilience signal.

Line 56:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: So this is the safest kind of deployment for your application.
- Hidden/Implicit Meaning: Platform automation signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And partition is a little bit different.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So your AZ will be divided in multiple partitions and then your EC2 instances will be spread across all these partitions and you get up to seven partitions per AZ and that gives you hundreds of EC2 instances for the partition kind of placement group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 59:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the instances in the partition do not share racks with the instances in other partitions.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you have, again, some separation of hardware.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: A partition failure can affect many EC2 but it won't affect other partitions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And EC2 instances can get access to which partition they belong to thanks to the EC2 metadata service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the use cases for this would be HDFS, HBase, Cassandra, Kafka.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Next, we have several ways of launching an EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 65:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we have on demand instances and this is when you have a short workload and you're going to get predictable pricing and you wanna have reliability.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 66:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Instead, if you wanna go for very cheap instances for short workloads as well, you can use spot instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 67:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: In that case, you're going to get a deep discount but you run the chance of losing instances meaning you cannot run reliable long workloads on spot instances.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if it's resilient to failure, it's a great choice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Next, we have reserved instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The minimum period is one year.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the reserved instances are for long workloads and you want to get big discount because you know, for example, you're going to run an EC2 instances for three years.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 72:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: You also have convertible reserved instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 73:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So this time, again, you workload is long but you wanna convert the instance type over time.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 74:
- Concepts: Compute Operational Context
- Services: Amazon Lex
- Key Insights: Therefore, it's a bit more flexible with a bit less discounts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have different level of payments.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you pay everything upfront, you're going to get a deeper discount.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you pay partial upfront, you're going to get less discounts, and no upfront even less discounts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So your payment plan really impacts as well the amount of discount you're going to get for these instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 79:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Dedicated instances will provide you the guarantee that no other customers will share your hardware, and dedicated host, books you an entire physical server on which you can control the instance placements.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The use case for them is software licenses that operate at a core or CPU socket level.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM
- Key Insights: And you can define host affinity so that the instances reboots are kept on the same host.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You also need to know what is Graviton.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So Graviton processors deliver you the best price performance for your EC2 instances and that is for newer generation kind of instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this supports Linux OS, Amazon Linux 2, RedHat, SUSE, Ubuntu, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And it is not available for Windows instances, remember this.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 86:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: You have Graviton2 which gives you 40% better price performance over comparable fifth generation x86-based instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 87:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And Graviton3 which gives you three times better performance compared to Graviton2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the use case is, is that you wanna have good performance at a better price.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So this could be app servers, microservices, high performance computing, machine learning, video encoding, gaming, in-memory caches, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Okay, now for including metrics in EC2, we know there is CPU where you get digitalization as well as the credit usage and balance for T2 Micros.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The network, network in/network out, the status checks will be very important to know them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So you have instance status where you can check the EC2 VM and system status where you check the underlying hardware.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is AWS that provides these metrics for us.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Platform Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: The disk where we can look at read/write for Ops and bytes and this is only when you have an EC2 with an instance store, otherwise you can get these metrics for the EBS volumes directly.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 95:
- Concepts: Compute Platform Design
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: And something extremely important that I think I've said all the time in all my courses, which is that RAM is not included in the EC2 metrics and you need to push them directly from the EC2 instance into CloudWatch as a custom metric if you need it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 96:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Okay, now let's talk about EC2 instance recovery in detail because it is something you need to know.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 97:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The status checks we have, we have two as I said.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 98:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: The first one is the instance status and then we have the system status.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 99:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so something we may want to do is to recover an instance in case these status checks are failing.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 100:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here's what it looks like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 101:
- Concepts: Compute Platform Design
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: Our EC2 instance is going to be monitored by a CloudWatch alarm.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 102:
- Concepts: Compute Operational Context
- Services: Amazon CloudWatch
- Key Insights: And this CloudWatch alarm currently is set up to be checking the status of the system status check.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 103:
- Concepts: Compute Platform Design
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: And so in case it fails, you can use your CloudWatch alarm to define an action called the EC2 instance recovery to recover your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 104:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: The action of using an EC2 instance recovery is that you will remain, obviously some things will be lost but you will keep the same private IP, the same public IP, the same elastic IP, the same metadata, and the same placement group.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 105:
- Concepts: Compute Platform Design
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: So this is something quite nice if you have an instance and it's critical and you want to make sure you can recover it in case anything goes wrong at the instance level or the system level, in which case setting up a CloudWatch alarm that will perform an EC2 instance recovery action is a great way to do it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 106:
- Concepts: Compute Platform Design
- Services: Amazon CloudWatch
- Key Insights: Finally, because it's a CloudWatch alarm it can alert an SNS topic and you can chain it up with other kind of actions, for example, for notifying a Slack channel in case you need to be aware that your instance has been recovered.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 107:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Okay, so that's all you need to know for EC2, very, very important.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 108:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Hopefully this is not too much new stuff for you, but remember, it's all really important going into the exam that you know all the details.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 109:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it, I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/048_Spot Instances & Spot Fleet.txt

Line 1:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So now let's talk about EC2 spot instances and they allow you to get discounts up to 90% compared to on-demands.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: How does it work?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, you define a max spot price and you're going to get the EC2 instance as long as the current spot price, and it always determines that spot price based on offer and demand.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 4:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So as long as the current spot price is less than your max, then you're going to get the instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But then if the offer and the demand vary and the capacity varies, then the spot price may go up.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And if the spot price goes over your max price, then you can choose to either stop or terminate your spot instance and you have a two minutes grace period.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is where you can clearly shut down your application, save your files, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Platform Design
- Services: AWS Batch
- Key Insights: So spot instances are great for batch jobs, data analysis or any kind of workload that is resilient to failure, but you should not use them for critical jobs or databases while because they can be reclaimed by AWS very quickly and you can lose them.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in terms of the spot price, what does it look like?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is an example for M4 large for a duration of three months in US East 1.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as we can see it's the price varies based on the AZ.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you have one A, one B, one C, et cetera, you have a different price and the price can vary over time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if you define your user max price at here, this dotted black line that's horizontal, then as long as the price is underneath that black line, we get an instance, and then as long as it's above it, we lose, we terminate or stop that instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so as we can see, the spot price is quite lower than the on-demand price.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if your user defined max price, it's very high, then you will never lose your spot instance based on this graph.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if it's quite low, for example, where it is right now, there's a chance for example for the red line that sometimes the price is gonna be higher than what you want and sometimes it's gonna be lower than what you need.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it depends how you want to bid.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM
- Key Insights: But the idea is that with the spot instances, you want to define a max price that you're comfortable with for your economics, but at the same time that we'll make sure that if you lose your spot instance then you haven't lost your data and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, next spot fleets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is the ultimate way to save money.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So spot fleets is going to be a way to define for you to get a set of spot instances and optionally on-demand instances, that's what it's called a fleet.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the spot fleet will try its best to meet the target capacity with the price constraints you're defined.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it will launch from possible launch pools.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: (none explicit)
- Key Insights: So it can have different instance types, different OS and availability zones.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so you're going to define multiple launch pools.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So multiple instance types, multiple everything.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then the fleet will choose the best and most appropriate launch pool for you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Platform Design
- Services: AWS Budgets
- Key Insights: And when your spot fleet either reaches your budget or reaches the capacity you wanted, then it will stop launching instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so you define a strategy to allocate spot instances in your spot fleet, and that's something to remember.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: The first one is lowest price, and that's gonna be the most popular one going into the exam, which is that the spot fleet will launch instances from the pool that has the lowest price and that gives you a lot of cost optimization.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is a great option if you have a very short workload.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: (none explicit)
- Key Insights: You can also have a diversified way to launch your spot instances, in which case the launch in the spot instances will be distributed across all the pools that you have defined from before, which is great for availability and long workloads because if one pool goes away, then your other pools are still active.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you have capacity optimized.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So you have a pool with the optimal capacity for the number of instances you want.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you have price capacity optimized, which is first choosing the pool with the highest capacity available and then select within that the one that has the lowest price, which is the best choice for most workloads.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So the idea is that spot fleets can be complicated, but what you have to remember is that using the spot fleet, you're able to define multiple launch pools, multiple instance types, and so you're just interesting in raw power.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then if you use the lowest price discounts at the lowest price strategy strategy for spot fleets, then the spot fleets will automatically request the spot instances with the lowest price for us.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so spot fleets gives us an extra saving based on spot instances because it's smart enough to choose the right spot instance pool to allow us to get the maximum amount of savings.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is the benefits of spot fleets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And again, you need to understand the difference here of doing a very simple spot instance request where you know exactly the type of instance you want and the AZ you want to using a spot fleet and saying, okay, you can choose all these instance types and all these AZ, and what I need from you is to give me the lowest price, for example, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So that's hopefully is giving you a lot of insights into how spot fleets and spot instances are different.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you like this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/061_Route 53 - Part 1.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about Route 53.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And first, let's talk about the record types that exist within Route 53.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have the A that maps a hostname to IPv4.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Quadruple A which maps the hostname to IPv6.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have CNAME to map a hostname to another hostname in which the target of the hostname is being A or an AAAA record.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you cannot create a CNAME on top of, the top node of the DNS namespace which is the Zone Apex.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, you cannot create a CNAME for example.com.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: We can create a CNAME for www.example.com, and we'll see how to solve that problem with Alias records.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then finally, NS which are name servers for the hosted zone which control how traffic is rooted to a domain.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: So, these records are all you need to know for the Solutions Architect professional exam, so, don't worry about the rest.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, for the A record, how does that work?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, the client wants to access an EC2 instance that has a public IP, is going to first query for example.com in Amazon Route 53, and then get an IP back, and then thanks to the IP, reach our EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this is for a very simple A record, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, let's talk about difference of CNAME and Alias.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So, all the resources in AWS, for example Load Balancer, CloudFront, et cetera, they expose an AWS hostname.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 16:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So, for example, this is the hostname of a Load Balancer, and maybe we want this Load Balancer to be instead myapp.mydomain.com.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, how do we do this?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, if we have a CNAME, as remembered, it is a hostname that points to any other hostnames.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, it is very possible for us to do app.mydomain.com points to anything.com, and so therefore it would work for the example above, but this only works for non root domain, so, it must be something.mydomain.com.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, for an Alias record though it has difference.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's to point hostname only to a specified AWS resource.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, it's app.mydomain.com into something.amazonaws.com, so, it must be a resource from AWS, and this works for root domain and non root domain.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So, it works for mydomain.com and it's free of charge and it has native health check as a feature, so that means that for the Load Balancer in AWS you cannot do a CNAME for mydomain.com, but you can do an Alias record for mydomain.com.
- Hidden/Implicit Meaning: Constraint or limitation signal; Elasticity and resilience signal.

Line 24:
- Concepts: Deployment Automation, Elasticity and Availability, Serverless Execution Model
- Services: API Gateway, AWS Elastic Beanstalk, AWS SAM, Amazon EBS, Amazon RDS, Amazon S3, Elastic Load Balancing
- Key Insights: In terms of the targets for the Alias records we get Elastic Load Balancers, CloudFront Distribution, API Gateway, Elastic Beanstalk environments, S3 websites, VPC interface endpoints, Global accelerator Accelerator, as well as any other Route 53 record in the same hosted zone.
- Hidden/Implicit Meaning: Elasticity and resilience signal; Platform automation signal.

Line 25:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And you cannot set Alias record for an EC2 DNS name.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now each record in Route 53 is going to have a record TTL which is the Time To Live.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here's an example, the client wants to talk to our web server, but we have a DNS request for myapp.example.com.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We're going to get a response, for example A record, but this will have a TTL, and this response is going to be cached for the time of the TTL.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then once the TTL expires then the record will be renewed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So while the TTL is still present and the record is saved on the client side, then the requests are going to go to the IP that was refetched from before.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: So, in case you do a high TTL, for example, 24 hours that means that you're going to get less traffic on the Route 53, but you have possibly updated records, for example, if you update them in DNS side then it will take up to 24 hours for clients to get the new values.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: Otherwise, if you set a very low TTL, for example 60 seconds that means you're going to get more traffic on the DNS side which is going to cost you some money, but on the flip side, the records are going to be outdated for less time and it's going to be easier to change records, so, it's always a trade off.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And except for the Alias record the TTL is mandatory for each DNS record, very important to remember.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, now let's look at the routing policy, so we have the simple routing policy which is to route traffic to a single resource and this cannot be associated with the health check and this is the only kind of routing policy that is not associated with the health check.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, here's an example, so client goes to food.example.com and then gets a value back.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Super simple.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: But you can also specify multiple values in the same record, and if that's the case then a random one is going to be chosen by the clients.
- Hidden/Implicit Meaning: Platform automation signal.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the client is asking for a DNS request and then gets multiple values as a result.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The client is going to choose a random value.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's very simple.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next, we have Weighted.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, Weighted gives you the ability to control the percentage of the request that go to a specific resource.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So in this example, we have 70% of the request going to my first EC2 instance then 20% to my second EC2 instance and then 10% to my last EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this kind of record can be associated with the health checks to make sure that we don't send traffic to a resource that is not healthy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: The use cases for Weighted records is around load balancing between regions, testing the application versions, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: Then we have latency based records which is to redirect resources that have the least latency close to us which is super helpful when latency is a user priority.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the latency is going to be defined on the traffic between the users and the specified AWS region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, it's further possible for Germany users to be directed to the US, if that's the lowest latency, and for example, your app is in Asia.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: So, these kind of records can be associated with health checks as well which gives a failover capability.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 50:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: So if we have, for example, two ALB, one in US-East-1 and one in AP-Southeast-1, and our users all around the world it's very possible for these users to go to US-East-1 and for the others to go to AP-Southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next we have Failover for active-passive type of record.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we have a primary record and then a secondary disaster recovery record.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so there's going to be a health check performed on the primary one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then in case the primary fails then we are going to have a failover to the second instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 55:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And this will be characterized by DNS request that either reply with the first EC2 instance or the second EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we have Geolocation which is different from latency based, so this is to route based on the user location itself.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can specify by continent, by country or even by US states.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you have overlapping then the most precise location is going to be selected.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you should create a default record in case you have no match on location.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: And then use case for geolocation is to be doing website localization, to restrict content distribution or load balancing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And these can be associated with health checks, so, here's an example, we have a map of Europe right here, and some Germany users could be sent to this record, French users could be sent to that record and then anyone else could be sent to the default IP right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Another one is called Geoproximity which is to route to resources based on the geographic location of users and resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And thanks to something called the bias you can shift traffic to some resources more or less based on that number.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So, you change the specify, you change the bias value to expand traffic to resource, you're going to increase it from one to 99 or to shrink you're going to decrease it from minus one to minus 99 which is going to send less traffic to the resource.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the resource can be an AWS resource or it could be a non-AWS resource, and in that case, we need to specify a latitude and longitude for the Geoproximity and for it to be effective and to be set up, you need to use the traffic flow feature of Route 53.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, it's better to see where the diagram, how that works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, if you have US-East-1 and US-East-1 then they're going to be bias zero zero, so you're going to get a line in the center of the US geographically.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so half the users are gonna go to West and half the users are gonna go to East.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But in case you increase the bias in US-East-1 and for example, you set a bias to something much higher, say 50, then if you leave it to zero on US-West-1 then the line is going to be closer to US-West-1 and therefore more users to the right of that line are gonna go to US-East-1, and the other ones are gonna go still to US-West-1.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So with the bias you're able to really manipulate how much proximity you want users to be next to locations.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Which brings onto Traffic flow.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: Amazon Lex, Amazon RDS
- Key Insights: So traffic flow is a feature of Route 53 which allows you to easily create and maintain very complex and large records as well as Geoproximity records.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: Amazon Lex
- Key Insights: So it's a visual editor and it gives you complex routing decision trees available to you that you can set up easily.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: And these configurations are saved as Traffic Flow Policies, and they can even be applied to different hosted zones if it needs to, and they support versioning.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Finally, we have one last type of record called the Multi-Value record which is to use when routing to multiple resources, and then the Route 53 is going to return multiple values and resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But because this can be associated with a health check we can only make sure that the return values are full healthy resources.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 77:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: So the Multi-Value returns up to eight healthy records at each query.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: And a Multi-Value is a good balancer, but it's not a substitute for having a load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here's an example, We can set up a multi A record to set two multiple IPs, and then if they're all healthy then they will all be returned back to the clients.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about another routing policy called the IP-based routing which is very intuitive to think about because you're going to define the routing based on the client IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: Elastic Disaster Recovery
- Key Insights: In Route 53, you're going to define a list of CIDRs, they are IP ranges for your clients.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you're going to say based on the CIDR which location the traffic should be sent to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the use cases will be to optimize performance because you know the IP ahead of time or to reduce network costs because you know where the IP is are coming from.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, an example is that if you know that you have a specific internet provider and they have, they are using a specific CIDR of IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can route them to a specific endpoint thanks to this strategy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go for an example, in Route 53 I'm going to define two locations with two different CIDR blocks.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see, one start with 203 and the other one start with 200.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the defined IP ranges.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, we are going to link these locations to a specific record.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So for example.com, we're going to have location one, so the first CIDR block to send to the value 1,2,3,4, and the second location, the block CIDR number two to send to 5,6,7,8, and these represents the public IP of two EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 91:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Now, as you would expect, if a user comes in with a specific IP that is part of the location one CIDR block, they will be directed to the first EC2 instance of IP 1,2,3,4.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 92:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And the user B with a second IP address that belongs to the location two, will be redirected and will have a DNS query response to the EC2 instance of IP 5,6,7,8.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for the basics of Route 53, I hope there is nothing new for you, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/062_Route 53 - Part 2.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon RDS
- Key Insights: So next, the second part of this Route 53 lecture ...so we have Hosted Zones and this is a container of records to define how to route traffic to a domain and its subdomains and we have two kinds.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have the Public Hosted Zones, to allow the internet to resolve them for public domains, but also we get the Private Hosted Zones and these can only be resolved from within your VPC and you can define private URL's.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 3:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EBS, Amazon EC2, Amazon S3, Elastic Load Balancing
- Key Insights: So, the difference is that the Public Hosted Zone is accessible publicly and you can have the target being the Public IP of an EC2 Instance, the Public IP of an Application Load Balancer or a CloudFront distribution or an S3 Bucket website for example.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 4:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But in the Private Hosted Zone, it's used from within your VPC and it's very helpful to link to the Private IP of your EC2 Instances or the Private IP of your Database Instances and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Other good things to know for Route 53 is that in case you have a Private Hosted Zone with a Private DNS then in your VPC you must enable two settings called the enableDnsHostnames and enable DnsSupport.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Also, on Route 53 you get support for the DNS Security Extensions (DNSSEC) and it's a protocol for securing DNS traffic to verify the DNS data integrity and origin.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It helps you to be protected against Man in the Middle (MITM) attacks on the DNSSEC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And Route 53 has support for both DNSSEC for Domain Registration and also DNSSEC Signing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It only works with Public Hosted Zones.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Finally, you can use Route 53 with a 3rd Registrar in which case you buy the domain outside of AWS but you still use Route 53 as your DNS provider.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: For this, you just update the NS records on the Registrar and you appoint them to AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Onto Health Checks, so you get Public Health Checks on Route 53.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: That means that for example, if you have two ALB's in two distinct regions then you can set up two Health Checks to check the health of these ALB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you use the Health Check, to link them to a specific DNS record and this gives you automatic DNS Failover.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, you have three kind of Health Checks.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You get Health Checks that will monitor an endpoint health so: application, server or maybe another AWS resource.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You get Health Checks that will monitor other Health Checks and they are called Calculated Health Checks.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: Amazon CloudWatch
- Key Insights: And you get Health Checks that monitor CloudWatch Alarms, which gives you full control because you do whatever you want with a CloudWatch alarm.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: Amazon DynamoDB, Amazon RDS
- Key Insights: So you can monitor, for example, throttles of DynamoDB alarms on RDS or any custom metrics which is very helpful for private resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: Amazon CloudWatch
- Key Insights: Now all of these Health Checks will publish also CloudWatch metrics if you ever need to.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as we said we have Calculated Health Checks which is to combine Health Checks into a Parent Health Check and for this you can use the OR, AND, or NOT condition.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can monitor up to 256 Children Health Checks in one Parent Health Check and you specify how many of the Child Health Checks need to pass to make the Parent Health pass as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: So the use case of a Calculated Health Check is to perform maintenance on your website without causing, for example, all the Health Checks to fail.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can also monitor an Endpoint using Health Checks.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we can monitor Public Endpoints and Health Checkers all around the world will do HFTP request to the health route that you set, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And when you do set something up you get about fifteen Health Checkers that will check your Endpoint health so it needs to be a Public Endpoint, of course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then the Health Checks are going to pass only if the Endpoint is going to respond with the 200's or the 300's status codes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now there's a cool feature that you need to know about that is coming up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Is that the health check can be set up to fail or pass based on the value returned by the Endpoint that you are checking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if in the first 5120 bytes of the response you have some specific text that you specify then you make the Health Check pass or else the Health Check does not pass.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so how do we do Health Checks of stuff in Private Hosted Zones?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, because the Health Checkers are outside the VPC they cannot access Private Endpoints.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, Private VPC or on-premises resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Platform Design
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: And so therefore to monitor the health of an EC2 Instance, what you can do is that you can create a CloudWatch Metric then you associate a CloudWatch Alarm with it and then you base the Health Check to monitor the CloudWatch Alarm itself and this is how you would effectively monitor the health of an internal resource.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: So let's take an example of a Solution Architecture for multi-region failover with RDS.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have a main database and we have an Async replication into a different region, so we have us-east-1 to us-west-2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Then we have two ways, either we set up an EC2 Instance to monitor the health of the database and to expose a HFTP call /health-db route and that is one way of doing it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Compute Operational Context
- Services: Amazon CloudWatch
- Key Insights: Or option two which I like more, is to define a CloudWatch Alarm and link the CloudWatch Alarm into a Health Check.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: Amazon CloudWatch
- Key Insights: Once the Health Check is off, we can link it to a CloudWatch Alarm as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Serverless Execution Model
- Services: AWS Lambda, Amazon CloudWatch
- Key Insights: This is going to be linked to an SNS Topic or an CloudWatch Event which is going to trigger a Lambda function and then the Lambda function will update the DNS of your application into Route 53 and then promote your Read Replica in us-west-2 and effectively you have achieved automated failover using Health Checks and Route 53.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, I hope that was helpful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/063_Route 53 - Resolvers & Hybrid DNS.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's view an advanced use case that comes up a lot in the exam, which is around Hybrid DNS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have our region and there is the Route 53 resolver.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And by default, this resolver is going to automatically answer DNS queries for local domain names for EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for example, here's our VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: We have an EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There is this DNS name, the Route 53 resolver knows how to reply to these queries.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is fine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: Any records in your private hosted zone as well is going to be easy to answer to, and records in public name servers, for example, for a public hosted zone, or any name server out there that is public on the internet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, if you want to resolve DNS queries between your VPC and other private networks, your own networks that has other DNS resolvers, then you're going to need a hybrid DNS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So these networks can be PeeredVPC for example, or it could be an on-premises network that is going to be connected to our VPC through Direct Connect or AWS VPN.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, let me introduce you two concepts that we're going to see with diagrams in the next slides.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So these are about resolver endpoints.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So there is two things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There's an inbound endpoint and an outbound endpoint.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So inbound endpoints are allowing DNS resolvers on your external networks to forward DNS queries to your Route 53 resolver and answer these queries.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So these resolvers will help to resolve domain names for the resources of AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: Amazon EC2, Amazon RDS
- Key Insights: For example, your EC2 instances or records that you create in your Route 53 private hosted zone.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you get both answers for your internal systems, and also for AWS private host zones, and I will show you a diagram, it will make a lot more sense very, very soon.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, your outbound endpoint is to conditionally forward DNS queries to your on-premises DNS resolvers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for this, we're going to create resolver rules to forward them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Deployment Automation, Elasticity and Availability
- Services: AWS SAM
- Key Insights: Now we associate these endpoints with one or more VPCs within the same region, and we create in two availability zones for high availability.
- Hidden/Implicit Meaning: Elasticity and resilience signal; Platform automation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now each endpoint supports about 10,000 queries per second, per IP address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you need more, well, you create more IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And these resolvers remove the need from before where people have to run their own DNS resolvers on AWS and link them to their resolvers on premises.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, these are managed resolver endpoints by AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at a diagram, it will make a lot more sense.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So let's take an example where we have an EC2 instance, and lives in a VPC, and we have a private hosted zone that we create, for example, aws.private, and we have also an on-premises data center that has a server.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Now, if you look at the EC2 instance, I gave it a CNAME of app.aws.private, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: This is a CNAME, which is linked maybe to its EC2 DNS, or it could be an A record linked to its private IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It doesn't matter right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Now what's happening is that the server at web.onpremises.private wants to access this EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so first, the on-premises data center and the AWS cloud are going to be linked using a VPN connection, or Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now we're going to have on-premises as well as some DNS resolvers, for obviously the zone of our on-premises data center.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So they're going to be for the zone onpremise.private.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, when the server will issue a DNS query for app.aws.private the DNS resolvers are going to say, hey, you know what?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: I don't know these, but what we're going to happen is that we're going to create a resolver inbound endpoint, and behind the scenes this resolver inbound endpoint has two ENIs, again for high availability.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now these ENIs are associated with private IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what's going to happen is that within our DNS resolvers on premises, we're going to say that for the domain name, aws.private, we're going to forward to these two IPs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: And what's going to happen is that now the DNS query for app.aws.private matches this domain name that was configured on-premises, and therefore the DNS resolver is going to say, hey, I know I should forward these queries to a DNS server that has this information.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's going to forward them to these IPs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now the resolver inbound endpoint is linked to the Route 53 resolver, and then from the private hosted zone, we're going to get our final lookup and give us the final information for this query.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is what's called inbound endpoints because requests coming from the exterior and go inbound on AWS, so on-premises to AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you may expect, the outbound endpoints are quite similar, but they go the other way.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So we have again, the same setup, okay?
- Hidden/Implicit Meaning: Platform automation signal.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But this time we want to be able to resolve the DNS names of the on-premises data center.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So our EC2 instance is going to ask our Route 53 resolver, Do you know about web.onprem.private?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for this, we're going to create a resolver outbound endpoint, which has two different ENIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we're going to create a forwarding rule, which is saying, hey, for on-prem.private here is the target IP, and this target IP corresponds to the IP of my DNS resolver on-premises.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the Route 53 resolver is going to send this to this endpoint, and the endpoint is going to forward the DNS query into the on-premises DNS resolver.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: And then we will have automatically the response from the records stored in the DNS of our on-premises data center.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now to manage this outbound endpoint, we need resolver rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the outbound endpoint is going to set, to have a set of rules, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it's going to explain how to forward DNS queries on your network.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So there's conditional forwarding, which are the forwarding rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that we're going to say for specific DNS queries in this domain, please match all of it to a target IP address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can say, for example.com or acme.example.com, here is the target IP, or here are the target IPs for these domains.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can also override them with a system rule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is to define overriding behavior, which is saying, hey, for a whole subdomain, do not use these forwarding rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This could be something you can create.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then finally we have auto-defined system rules, which is for domains that we know are resolved internally.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: For example, domain names that are internal to AWS or private hosted zones, for example compute.amazonaws.com or EC2.internal.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now in case of multiple rules matched, the Route 53 resolver is going to choose the most specific match, in terms of how to choose which rule to apply.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Finally, these resolver rules can be shared across accounts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you're using AWS resource access manager or RAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means that you can share them across multiple accounts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means that you can manage them centrally in one dedicated account for these resolver rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you can send DNS queries from multiple VPC to the target IP defined in the rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So there are a way to have a central management of your resolver rules in the central accounts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is how you have a hybrid DNS on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Remember inbound endpoints and outbound endpoints usually are used together to have in and out traffic from your both DNS systems from AWS and on-premises, and the exam will ask you about them for sure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/064_AWS Global Accelerator.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let's talk about AWS Global Accelerator.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is a way for you to leverage the internal network of AWS to route to your application.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for this, it will use what's called an Anycast IP, and two of them will be created for your application.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now the Anycast IP is going to be used to send traffic directly to the Edge locations all around the world.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then from the Edge location, the traffic will be sent to your application, but using the internal traffic of AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: How does that work?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: Well say that all your applications wants to access a public ALB in India, but your clients are in Australia, America, and Europe, well, the way it's going to work is that they're going to use the Anycast IP, which is going to redirect them to an Edge location.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And from the Edge location, the traffic will go privately on the Edge OS network from the Edge location into your desired endpoints.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This global accelerator really gives you some of course, accelerations.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: The targets can be Elastic IPs, EC2 instances, ALB, NLB, could be public or private.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It supports IP preservation of your clients, except for the Elastic IP endpoints.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You're going to get consistent performance because, well, you're going to get intelligent routing from the lowest latency, and you're also going to get fast regional failover.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You're going to get no issue with client cache, because the IP does not change.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So your two Anycast IP are going to be there for the rest of your lifecycle of Global Accelerator, and it will leverage the internal AWS network as fast as possible.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In terms of health checks, while the Global Accelerator performs health checks of your application, which makes your application global.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in case something is unhealthy, then the failover happens usually in less than one minutes.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's great for disaster recovery then, because of the health checks with a fast recovery time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For security, only two external Anycast IP need to be whitelisted, which is great.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you're going to get DDoS protection thanks to AWS Shield.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what's the difference between CloudFront and Global Accelerator?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, they both use the global network of AWS, and they both leverage the Edge locations around the world.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: They all have integration with SHIELD for DDoS protection, but CloudFront is here by giving you cached content at the Edge, such as images or videos, or dynamic content such as API acceleration and dynamic site delivery.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But for CloudFront, all the content is going to be delivered at the Edge, whereas Global Accelerator is here to improve performance overall.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it could be not only for HTP but also for TCP or UDP.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it's going to proxy packets directly from an Edge location into your application running, wherever it's running in the AWS network.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And therefore it's going to be a good fit for non-HTTP use cases such as gaming for UDP, IOT using MQTT, or Voice over IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it's also going to be great if you have an HTTP use case that requires to use a static IP address, or if you have a use case that requires deterministic fast regional failover.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/065_Comparison of Solutions Architecture.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have seen a lot of different components so far and now it's time to just take a step back and compare all the kind of options we have when we do solution architecture, just with the web layer and the application layer.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design, Container Runtime Operations, Serverless Execution Model
- Services: API Gateway, AWS Lambda, Amazon EC2, Amazon ECS, Auto Scaling, Elastic Load Balancing
- Key Insights: So we are going to compare EC2 with its own Elastic IP, EC2 with Route53, ALB + ASG, ALB + ECS on EC2, ALB + ECS on Fargate, ALB + Lambda, API Gateway + Lambda, API Gateway with AWS Service and then finally API Gateway with an HTTP backend, for example an ALB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's get started.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: First EC2 with Elastic IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we have our user talking to our public instance and has a public IP and an elastic IP attached to it and with an elastic IP address.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And what we want to do is have some kind of failover.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 7:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we're going to have a standby instance and this standby instance is going to be there.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We want to failover.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 9:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So in case we want to failover we're going to have the elastic IP address move all the way to the second EC2 instance in case of the elastic recovery.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 10:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Then our user will be redirected automatically because they've been using the elastic IP address to the standby instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That is very classic.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It provides you quick failover.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 13:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: The client should not see the change happen because it can make with the same elastic IP address.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's very helpful if the client needs to resolve only by static public IP address.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But it does not scale because you can only have one EC2 instance at any time serving traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And on top of it, it's cheap.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's one solution architecture and it's not too bad.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay so next we have stateless web app.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We want to scale them horizontally.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So let's say we have three EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They're public, but there's no elastic IP this time and we have users.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: What the users will do is that they will perform a DNS query on Route53 and they will get back an A record and thanks to this A record, they're going to be able to talk to our EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But what happens if one of these EC2 instances is being terminated?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example in which case, some of our users will not be able to reach our application and that can be a problem.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in this case, we are to download something called DNS-based load balancing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Because based on the DNS results, we are getting different answers and this is how load balancing works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So here we are able to use multiple instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And Route53 TTL implies that some clients may get outdated information.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So even though we're able to have a health check for example, it will take some time, maybe one hour in this case because that's where the TTL is for our users to be redirected to the correct instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Finally the clients may have some logic to deal with hostname resolution failures, for example if somehow one host name does not work, it may be interesting for us to do something, which is to redo a DNS query, force it, and resolve the new DNS results to try another URL.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM
- Key Insights: Finally I think an instance if you do that with its own same scheme they may not receive full traffic right away due to the DNS TTL.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 32:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Again, you need to wait for the new clients to re-resolve the DNS for a new instance to receive some traffic.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this works fine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is architecture that the both often choose, but it's not perfect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: Auto Scaling, Elastic Load Balancing
- Key Insights: Okay, then we have ALB + ASG.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: So here's something that we've seen a thousand times where we have our Route53 DNS query pointing as an Alias Record to an ALB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Auto Scaling, Elastic Load Balancing
- Key Insights: The ALB will have health checks, multi AZ enabled, and then will be routing to three availability zones, five instances that are living in an auto scaling group.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so we've seen this as a very classic architecture on AWS that scales very well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Auto Scaling
- Key Insights: The new instances that are added to our auto scaling group will be in service right away because the load balances will be routing traffic directly to them and the users will never be sent to instances that are out-of-service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal; Elasticity and resilience signal.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Thanks to the health checks, this is very beneficial.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The time to scale though is pretty quite slow because in case you add EC2 instances you need to wait for the EC2 instance to start up, then there is the EC2 user data bootstrap script and somehow if you use an AMI that has all these things clear already, it can help speed up the time to scale.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But it's quite slow I would say, we're talking about a few minutes, but that's okay, that's very proper for many types of architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: The ALB is elastic, but it cannot handle sudden huge peak of demands, okay, so you need to pre-warm it if you except a massive load happening very, very soon.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 44:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And in case some instances are overloaded, it's possible that you're losing a request, meaning that your clients have to retry some requests over time in case they don't through.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 45:
- Concepts: Elasticity and Availability
- Services: Amazon CloudWatch, Auto Scaling
- Key Insights: CloudWatch can be used for scaling the auto scaling group.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 46:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: And we've seen that there is Cross-Zone load balancing, if you want to evenly distribute across all AZ from the load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 47:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: Okay and so just a real world tip, which is that if you're trying to scale your auto-scaling group a good target utilization rise off CBU, a good number would be within 40% to 70% depending on how you feel about your application.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability
- Services: Amazon EC2, Amazon ECS, Auto Scaling, Elastic Load Balancing
- Key Insights: Okay, next we have ALB + ECS on EC2 that is backed by an auto scaling group.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is extremely similar to what we had before.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design, Container Runtime Operations, Deployment Automation
- Services: AWS SAM, Amazon ECS, Auto Scaling, Elastic Load Balancing
- Key Insights: It has the exact same properties as the discussion we just had before when we just had an ALB and an ASG, but now instead of having the task of instance run the application itself, we have ECS tasks on the instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 51:
- Concepts: Compute Platform Design, Container Runtime Operations, Deployment Automation
- Services: AWS SAM, Amazon EC2, Amazon ECS
- Key Insights: So the application has to be run on Docker and because we're using ECS it is possible to use a dynamic port mapping feature to run multiple tasks on the same application on EC2 instance, potentially helping us maximize the utilization of an EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 52:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Auto Scaling
- Key Insights: The thing is though with this architecture as we discussed already is that it's really really tough to orchestrate ECS service auto-scaling alongside ASG auto-scaling.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability
- Services: Amazon EC2
- Key Insights: So it is very possible that you will need to have two sets of auto-scaling rules in place to scale both your EC2 instances that will run your tasks and your service itself that will run the tasks as well.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 54:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So the answer to this is to use ECS on Fargate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: In this case we don't have any auto-scaling group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability
- Services: Amazon EC2
- Key Insights: We don't have any EC2 instances to manage, we have Fargate that has service auto-scaling.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And the tasks will be launched on the AWS network automatically for you, and we don't need to manage that at all.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the application again is run on Docker.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: Service auto-scaling is going to be very easy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The time to be in service is going to be very very quick, so we don't need to launch an EC2 instance in advance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 61:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: The only thing we need to launch is a Docker container.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 62:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So it could be really really quick to launch a Docker container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 63:
- Concepts: Operational Guardrails
- Services: Elastic Load Balancing
- Key Insights: YOu're still limited by the ALB in case of sudden peaks of request.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 64:
- Concepts: Compute Platform Design, Serverless Execution Model
- Services: (none explicit)
- Key Insights: And the things we've made serverless in this instance is the application tier.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 65:
- Concepts: Serverless Execution Model
- Services: Elastic Load Balancing
- Key Insights: I don't like to call ALB serverless, I like to call it managed, because it doesn't scale as nicely, but still it's a very nice architecture, something very common that scales really well that is no management or that requires no management on your side and is going to be very safe and very scalable.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Serverless Execution Model
- Services: (none explicit)
- Key Insights: Next we're going to the serverless world.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: So we have Lambda.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: AWS Lambda, Amazon ECS, Elastic Load Balancing
- Key Insights: So we can use the application of ECS alongside Lambda so we see that target groups of an ALB could be Lambda.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Platform Design, Operational Guardrails, Serverless Execution Model
- Services: AWS Lambda
- Key Insights: In which case, we're going to be limited by Lambda's runtime.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 70:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Remember we have specific client runtimes and we can also have customer runtimes.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 71:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability, Serverless Execution Model
- Services: AWS Lambda, Amazon ECS
- Key Insights: But in case we won't have Docker it's more and more access recommended to use ECS instead, but we're going to have seamless scaling thanks to the Lambda runtime.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's going to be very helpful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Serverless Execution Model
- Services: API Gateway, AWS Lambda
- Key Insights: Remember when we have 1000 Lambda functions that be convertly executed, it's going to be a very very simple way to expose your Lambda function as HTTP or HTTP/S without using all the features from API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Serverless Execution Model
- Services: API Gateway, AWS Lambda, Elastic Load Balancing
- Key Insights: And as you can expect you get a lot of cost saving factors like 20X or 10X by using the ALB + Lambda, but you don't have the features of the API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: The cool thing is that you can combine this with the Web Application Firewall for security on your ALB, and it's good for hybrid microservices.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: AWS Lambda, Amazon ECS
- Key Insights: As an example, you can use ECS for some requests and use Lambda for other requests, depending on the type of workload, your Docker container, or if it's a very simple function.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is a very fine solution architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: One other thing that is lesser known on AWS, but extremely helpful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Serverless Execution Model
- Services: API Gateway, AWS Lambda
- Key Insights: Otherwise, the one that is more known is going to be when you have API Gateway and Lambda.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Elasticity and Availability, Serverless Execution Model
- Services: (none explicit)
- Key Insights: In which case, you eventually pay for requests, seamless scaling, fully serverless.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Operational Guardrails, Serverless Execution Model
- Services: API Gateway
- Key Insights: You need to be aware of soft limits, 10,000 requests per second on your API Gateway, and 1000 concurrent in execution but both these things are sublimits and you can increase that.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 82:
- Concepts: Operational Guardrails, Serverless Execution Model
- Services: API Gateway
- Key Insights: Because you have an API Gateway we get more features such as authentication, rate limiting, caching, API keys and all the things we've seen from before.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 83:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: Lambda Cold Start time may increase some latency for some requests especially if you start as well chaining up a bunch of these architectures together.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: AWS X-Ray
- Key Insights: We've seen this, but the good thing is that it's fully integrated with X-Ray, so we can get full tracing of all the requests made within your infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Serverless Execution Model
- Services: API Gateway
- Key Insights: Finally we see the API Gateway can be used with AWS Service as a proxy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: An okay architecture would be to do this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Serverless Execution Model
- Services: API Gateway, AWS Lambda
- Key Insights: It's not the best, where you have the clients, API Gateway and then Lambda, and Lambda will be for example putting a message into an SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Serverless Execution Model
- Services: API Gateway
- Key Insights: The better architecture would be to have the client talk to the API Gateway and the API Gateway be integrated with SQS directly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we definitely would do this, number one, because we get lower latency and it's cheaper.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: We avoid invoking Lambda and it makes more sense.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: We're also not using Lambda concurrent capacity.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Serverless Execution Model
- Services: API Gateway
- Key Insights: There's no custom code to maintain and we are exposing AWS API securely for the API Gateway which is what it was intended to be in the first place.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Serverless Execution Model
- Services: (none explicit)
- Key Insights: So this could not be joined only SQS, it could be SNS, Step Functions and so on.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 94:
- Concepts: Operational Guardrails, Serverless Execution Model
- Services: API Gateway, Amazon S3
- Key Insights: One thing to remember though is an API Gateway has a payload limit of 10 MB and so it can be a problem if you're trying to have an API Gateway as a proxy for S3.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 95:
- Concepts: Serverless Execution Model
- Services: API Gateway, Elastic Load Balancing
- Key Insights: Okay, lastly, API Gateway with HTTP backend and for example an ALB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 96:
- Concepts: Serverless Execution Model
- Services: API Gateway
- Key Insights: So we have this architecture and we would use this for getting the API Gateway features on top of a custom HTTP backend.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 97:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we would want the authentication, the rate control, API keys, caching, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 98:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: It can connect to on-premise servers, an application load balancer, or even a third party HTTP service.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 99:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, so that's it, we've visited all the ways to make a web layer and a compute layer so far.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 100:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope everything makes sense.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 101:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope these discussions of solution architecture are bringing your thinking forward and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/067_AWS WaveLength.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let's talk about AWS WaveLengths.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: So, WaveLength Zones are infrastructure deployments, embedded within the telecommunications providers' datacenters at the edge of 5G networks.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The idea is that whenever you see 5G in your questions, this is most likely going to be WaveLength, but let's go a little bit deeper in this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you're able to deploy some AWS services directly to the edge on the 5G networks.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EBS
- Key Insights: For example, you can deploy easy two instances, EBS volumes, even VPC to a WaveLength Zone.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, say you have a, for example a telecom carrier, has a 5G network and you're going to have a WaveLength Zone and through a carrier gateway, you're able to actually deploy an easy two instance on that Zone.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But that zone belongs to the 5G network itself, so that whenever a user on the 5G for a mobile device accesses your WaveLength Zone, they have really, really low latency because the application is really deployed at the edge.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this is the whole idea behind WaveLength is to give ultra-low latency to applications through 5G networks.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The traffic, for example, in this example, never leaves the Communication Service Provider, the CSP network.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It actually never reaches AWS, but in case you do need to have a secure connection to AWS, we can.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, the wavelength zone is connected to the parent region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: In case, for example, your easy two instances in your WaveLength Zone needs to access a database.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Operational Context
- Services: Amazon DynamoDB, Amazon RDS
- Key Insights: For example, RDS or DynamoDB, within your main parents, AWS Region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There is no additional charges or service agreements for using WaveLength.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the use cases for this are multiple.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: This is to have Smart Cities, ML-assisted diagnostics, ConnectedVehicles, Interactive Live Video Streams, AR and VR, Real-time Gaming.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Anything that requires really low latency and to be very, very close at the edge to your users.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is a use case enabled by 5G.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/068_AWS Local Zones.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Here's something that the exam now asks you, which is about AWS Local Zones.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So the idea is that we have these availabilities zones and these regions all around the world, but now there's the concept of local zones, which allows you to place compute storage database and other services that are selected by database closer to end users, to run latency sensitive applications.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: So the idea is that you will extend your AWS region to one or more locations, one or more quote-unquote availability zones, one or more.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then they're called, they're actually called local zones.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EBS, Amazon EC2, Amazon ECS, Amazon ElastiCache, Amazon RDS
- Key Insights: So this is compatible with EC2, RDS, ECS, EBS, ElastiCache, Direct Connect and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so here's an example, and we'll see this in the hands on very quickly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So there's a region Northern Virginia, US-East-1, and has six AZ by default, but you can extend these AZs with more local zones.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we have Boston Chicago, Dallas, Houston, Miami, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, here's your region, US-east-1 with two AZs, but it's possible for you to define a local zone in Boston and then extend your VPC to be going across these AZs and local zones.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then you would be able to launch an EC2 instance into this local zone.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now that may be confusing, So let's go into the console to see how that works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So I am in the EC2 console and let me first pick a region that does not have local zone.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, let me pick, let me pick Europe, Ireland.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to pick Europe, Ireland and then under settings right here, there is zones.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to click on zones, as you can see, in Ireland, we have three AZs right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They're enabled by default, and this is it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There's no local zone, nothing else, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if I switch to US-East-1 for Northern Virginia, as we can see now we have a lot of options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: We have local zones, and then if I scroll down, we have wavelength zones, and then we have the availability zones.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have six AZ in US-East-1.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So there are enabled by default, but our focus right now is local zones.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We can enable a local zone, for example, if we knew that we had users in Boston and we really, really want them to have low-latency access to our applications directly from Boston, then we can enable the local zone in Boston.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I will manage this and then I will enable this local zone and update the zone group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then I will say, yes, enable.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now Boston is actually going to be enabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let me just wait for it to take effect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I just refresh, and as you can see now, the US East Boston, so US-East-1-Boston-1, is enabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so what that means is that if I go into my instances and launch an instance, choose Amazon Linux 2, and then T2 micro, just to show you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Then in the instance details, in terms of network, we have our VPC, editors of subnets, We still have our six subnets, but it's possible for us to create a new subnet.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is quite advanced so, you don't have to follow along with me if you don't understand what I'm doing, but we choose the subnets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll call it Boston subnets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for the AZ, I can actually choose my US-East-1-Boston-1 subnets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now for the CIDR blocks.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So don't worry if you don't understand, this is really advanced, and this is not going to be asked at the exams.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will choose 172.31.96.0/20.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Don't ask me why. this is more advanced than the networking bits of AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But I just want to show you that we can create a subnet and associate it with a local zone.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we are creating a subnet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's successful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now back into my launch wizard.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I can just refer to the PC and then here I have the option to choose my bus and subnets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So that's it really, I will not go ahead with creating these two instance, but at least you saw that it is possible for us to extend our VPC to local zones, and therefore deploy EC2 instances closer to our users.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you understand now what local zones are, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/12_Deployment and Instance Management/119_Elastic Beanstalk.txt

Line 1:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Okay, so let's get into AWS Elastic Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Beanstalk is going to be more on the developer exam, but from a solutions architect professional exam, you need to understand that it is a great platform to re-platform your application from on-premise to the AWS cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that it's a developer-centric view of deploying an application on AWS, and it's just a wrapper around all the components that we know from before.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2, Amazon RDS, Auto Scaling
- Key Insights: So EC2 instances, auto scaling groups, Elastic IP, Elastic Cloud balancers, RDS, et cetera.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But it's in one view and it's easy to make sense of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Deployment Automation
- Services: AWS Config, AWS Elastic Beanstalk, Amazon Lex
- Key Insights: So we still have control over all the configuration of each components, but Beanstalk gives us some flexibility for deployment.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Compute Platform Design
- Services: AWS Elastic Beanstalk
- Key Insights: Beanstalk is going to be free, but you're going to pay for the underlying instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Okay, So Beanstalk has support for many platforms, and you have to remember some of them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Go, Java, Java with Tomcat, and that is very important because if you have a Tomcat application on premise and you want to migrate it to the cloud, Java with Tomcat is a great option on Beanstalk. .Net applications for Windows server, node.js, PHP, Python, Ruby, Packer.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So as you can see, there's a bunch of support for many, many different runtimes.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: AWS Config, AWS Elastic Beanstalk
- Key Insights: And if you don't have a runtime that is supported by Beanstalk, it is possible for you to use a single Docker container, or a multicontainer Docker, or a preconfigured Docker.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: The idea is that if you can dockerize your application, then you can migrate it to Elastic Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: And so the idea is that Beanstalk is going to be a perfect solution to re-platform your application from on-premise to the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: AWS Elastic Beanstalk
- Key Insights: That means moving your runtime onto Beanstalk and have your application run as a native AWS application without changing the code too much.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Okay, so Beanstalk is a managed service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design
- Services: AWS Config, AWS Elastic Beanstalk
- Key Insights: That means that all the instance configuration and the OS configuration will be handled by Beanstalk.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Deployment Automation
- Services: AWS Config, AWS Elastic Beanstalk
- Key Insights: The deployment strategy is configurable, but it will be performed by Beanstalk as well, so we have different rollout strategies.
- Hidden/Implicit Meaning: Platform automation signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The only thing in responsibility of you is the application code.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS Elastic Beanstalk
- Key Insights: And so you have three architecture models on Beanstalk we can see, the number one is a single-instance deployment, which is great for dev.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 20:
- Concepts: Elasticity and Availability
- Services: Auto Scaling, Elastic Load Balancing
- Key Insights: Load balancer plus ASG, which is good for production or pre-production web applications.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 21:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: And finally, just an OTO scaling group, which is good if you have a non-web application in production, and this is usually called a worker environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at how it looks like in terms of diagram.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: AWS Elastic Beanstalk
- Key Insights: So the first thing we have is going to be a single instance, and the architecture chosen by Beanstalk in this example is obviously only one availability zone.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal; Elasticity and resilience signal.

Line 24:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: We have an EC2 instance in it, and we'll have an elastic IP attached to our EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Because in case the EC2 instance is replaced for whatever updates, then the elastic IP can be moved over to the new EC2 instance, and from a client perspective, the change in the upgrade is going to be seamless.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Platform Design
- Services: AWS Elastic Beanstalk, Amazon EC2, Amazon RDS
- Key Insights: Finally, you can set up an Amazon RDS database through Beanstalk for having your EC2 instance communicate with a database layer if you needs to.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: Amazon RDS
- Key Insights: And that RDS instance is going to be, obviously, set up in only one AZ.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design, Deployment Automation
- Services: (none explicit)
- Key Insights: So, these single-instance deployments are great for development environments because you can quickly show your application and it's going to be very cost effective.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 30:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: If you want high availability, a more production-like setup, then you need to use a load balancer, for example, ALB.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 31:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: And then your application is going to be multi-AZ.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in this example, I've only represented two AZ, but it can obviously be three.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2
- Key Insights: So you have two AZ, an auto-scaling group of EC2 instances that can scale over time to handle more or less traffic.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: And then we can even set up an RDS database, again, in terms of storing our backend data.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Deployment Automation, Elasticity and Availability
- Services: Amazon RDS
- Key Insights: But this time, because this is more a production deployment, we should use a multi-AZ deployment of RDS where we have a master and a standby database.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Elasticity and resilience signal; Platform automation signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That is for number two.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then number three is a worker tier, which is very important.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: AWS Elastic Beanstalk, Amazon EC2
- Key Insights: So in this example, we have an SQS queue that is managed by Beanstalk, and we have a worker tier which consists of an EC2 auto-scaling group that will read from the SQS queue and scale based on the queue load.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Deployment Automation
- Services: AWS Elastic Beanstalk
- Key Insights: So the idea is that we have three different kinds of deployment for Beanstalk and you need to know them going into the exam.
- Hidden/Implicit Meaning: Platform automation signal.

Line 40:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Now let's talk about the difference between a web server and a worker environment in Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So in case your application performs long tasks, and this task can take a lot of CPU power and threads from your web servers, it's usually better to upload these tasks into a dedicated worker environment.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And by doing this, you are decoupling your application into two tiers, and that is very common.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so anytime we hear decoupling, remember it has to be SQS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So for example, what are the kind of tasks that could be long to complete?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: While processing a video if you want to add some kind of text on top of the video, or generating a zip file, or creating a very complicated filter for your images, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: On top of it, in your worker environment you are able to define a bunch of periodic tasks to be done using a cron.yami file, which will run cron jobs directly from your worker environment.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 47:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Okay, so let's have a look at a typical architecture for Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Deployment Automation, Elasticity and Availability
- Services: AWS Elastic Beanstalk, Auto Scaling, Elastic Load Balancing
- Key Insights: You would have your web tier for Beanstalk, which consists of your ALB and your auto scaling group, and that is going to be a production-like deployment.
- Hidden/Implicit Meaning: Elasticity and resilience signal; Platform automation signal.

Line 49:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: AWS Elastic Beanstalk, Amazon EC2, Auto Scaling
- Key Insights: And then we're going to have a worker tier, also managed by Beanstalk, which consists of an SQS queue and an EC2 instances managed by an auto scaling group.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 50:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Auto Scaling
- Key Insights: And the idea is that if the web tier has some dedicated task that are going be long to complete, then it would insert, put these tasks into an SQS queue, and your auto scaling group would automatically process these tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 51:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: This is a classic architecture, and the good thing is that both of these tiers can be managed using Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Deployment Automation
- Services: AWS Elastic Beanstalk
- Key Insights: Okay, next we have blue/green deployment, which is not a direct feature of Beanstalk, but the idea is that it gives you zero downtime and release facility.
- Hidden/Implicit Meaning: Platform automation signal.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you would create a new stage environment and you would deploy a v2 there.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So you create a new Beanstalk environment, then you validate that this environment, which is the green environment, can be working as expected, and in case there is any problem, you can roll it back by deleting it, and then you would set up Route 53 to use weighted routing to make sure you can shift a little bit of traffic to the new environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: If you use the Beanstalk Swap URL feature, which is a DNS swap, this basically shifts all the traffic from one environment to another, so you have two different strategies.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here's the example, using weighted routing in Route 53.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the web traffic does DNS queries onto Route 53, and then maybe 90% of your traffic will be sent into your blue environment, and 10% of your traffic will be sent into your green environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that is using a weighted routing policy in Route 53.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you can shift the percentages over time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then when you're ready, you have effectively shifted all your traffic from your v1 to your v2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: And this is called a blue/green deployment, okay?
- Hidden/Implicit Meaning: Platform automation signal.

Line 62:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So that's all you need to know for Beanstalk going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Remember, Beanstalk is going to be a great platform when you want to migrate an application from on-premise to the cloud and re-platform it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And finally, it's going to be a great choice to manage both your web server applications and your worker tiers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Compute Operational Context
- Compute Platform Design
- Container Runtime Operations
- Deployment Automation
- Elasticity and Availability
- Operational Guardrails
- Serverless Execution Model

### 2. Services List
- API Gateway
- AWS Batch
- AWS Budgets
- AWS CloudFormation
- AWS Config
- AWS Elastic Beanstalk
- AWS Lambda
- AWS SAM
- AWS X-Ray
- Amazon Aurora
- Amazon CloudWatch
- Amazon DocumentDB
- Amazon DynamoDB
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon ECS
- Amazon EFS
- Amazon EMR
- Amazon ElastiCache
- Amazon Glacier
- Amazon Kinesis
- Amazon Lex
- Amazon Neptune
- Amazon RDS
- Amazon Redshift
- Amazon S3
- Auto Scaling
- Elastic Disaster Recovery
- Elastic Load Balancing

### 3. Features List
- api gateway
- auto scaling
- batch
- beanstalk
- cloudformation
- ec2
- ecr
- ecs
- hpc
- lambda
- load balancer
- sam

### 4. Use Cases
- 021_NAT Instance (EC2 based NAT).txt:9: Now, that is important to understand when you have your own EC2 Instance, right?
- 021_NAT Instance (EC2 based NAT).txt:29: This is interesting, when your NAT gateways is deleted, you see there is a black hole here because we say the traffic has to go through this but this device does not exist.
- 021_NAT Instance (EC2 based NAT).txt:46: So mostly you want to allow all the traffic from your private Instances not SSH for sure because we are not doing the SSH outbound, but let's open other traffic.
- 021_NAT Instance (EC2 based NAT).txt:74: With respect to the performance, NAT Gateway can scale up to 45 GBPS bandwidth, when it comes to the NAT instance it depends on basically Instance configuration.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:5: So at high level, if you want to optimize the network performance, you can look at three areas.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:10: There are a lot of concepts under enhanced networking, and you need to know well when we talk about enhanced networking and you should be able to pick right answer from the questions.
- 191_Route 53 - EC2 Setup.txt:18: For example, Northern Virginia, so US East one.
- 191_Route 53 - EC2 Setup.txt:26: And finally I'm going to go into one last region, for example Singapore.
- 191_Route 53 - EC2 Setup.txt:34: Lastly, what I'm going to do is that I'm going to launch a load balancer in Frankfurt, for example.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:3: When you create a Key Pair, it's called a Key Pair because there's a private key and a public key.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:6: Then when you create an EC2 instance and you select the associated key, what's actually going to happen is that on the root EBS volume of the EC2 instance, the public key is going to be stored as a copy in a file called authorized_keys in the SSH directory.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:8: Well, because when we want to actually perform an SSH into our EC2 instance, what's going to happen is that the SSH protocol is going to present the private key to our EC2 instance, which is going to match it with the public key it has in store and say, "Yes, the user is authorized to perform SSH on me." So this is the basics of EC2 Key Pairs and SSH.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:9: So the idea is that your private key must be kept secure and there are no ways for you to recover a lost private key.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:30: Well, when what you do it is using the SSM Run Command utility, which is going to automate the process of adding and deleting public keys on EC2 instances.
- 059_Lost EC2 Key Pair - Linux.txt:33: So this is when you don't have a working network connection for whatever reason, and this is only for Nitro-based EC2 instances.
- 060_Lost EC2 Key Pair - Windows.txt:14: And if you set it to enabled, then it's actually going to allow you to set a new password.
- 060_Lost EC2 Key Pair - Windows.txt:27: Alright, so hopefully that gives you lots of options to recover EC2 Windows instances when you have lost a password.
- 269_[CCP_SOA] EC2 Image Builder.txt:7: So we have the EC2 Image Builder service and it is automatically, when it's going to run, it is going to create an EC2 instance called a Builder EC2 instance, and that EC2 instance is going to build components and customize the software, for example, install Java, update the CLI, update the software system, maybe install firewalls, whatever you define to happen on that EC2 instance, maybe install your application.
- 269_[CCP_SOA] EC2 Image Builder.txt:17: So you can define a weekly schedule or you can say you can run whenever packages are updated or you can run it manually, et cetera, et cetera.
- 269_[CCP_SOA] EC2 Image Builder.txt:20: Well, that means that if you create an EC2 instance during this process and EC2 Image Builder will create these EC2 instances, then you're going to pay for these EC2 instances and when the AMI is created and distributed, you're going to pay for the storage of that AMI wherever it has been created and wherever it has been distributed, but that should make sense, right?
- 270_[SOA] EC2 Image Builder Hands On.txt:19: So we can apply the build components that are pre-created by AWS, for example, if we wanted to have Java on our image and our AMI, currently, there is no Java on Amazon Linux 2, but if you select amazon-corretto-11-headless, then you would have Java 11 being installed on your AMI, so great.
- 270_[SOA] EC2 Image Builder Hands On.txt:21: And it is possible for you to really create your own build component if you wanted to, if you wanted to customize and install your own application, for example.
- 270_[SOA] EC2 Image Builder Hands On.txt:40: So I'm creating this role manually because when I did create it automatically, it wasn't correctly working, so I wanna make sure this is done correctly.
- 270_[SOA] EC2 Image Builder Hands On.txt:51: But you could create a new distribution setting, and in here you can set up region 1, but also set up region 2, and region 3, for example, if you wanted to distribute your AMI to different regions automatically, which is really, really handy, but for this hands-on, we'll just use a service defaults, and have the AMI in one region.
- 270_[SOA] EC2 Image Builder Hands On.txt:61: So this instance was created by EC2 Image Builder, and you can verify it by going into tags, for example.
- 270_[SOA] EC2 Image Builder Hands On.txt:69: And the AMI name is MyDemoRecipe, and contains the timestamp of when it was created.
- 032_EC2 Basics.txt:15: Knowing how to use EC2 in AWS is fundamental to understand how the cloud works, because as I said from before, the cloud is to be able to rent those compute whenever you need, on demand.
- 032_EC2 Basics.txt:22: So, for example, do you want storage that's going to be attached through the network, and we'll see about it with EBS or EFS.
- 032_EC2 Basics.txt:36: Well, bootstrapping means launching commands when the machine starts.
- 032_EC2 Basics.txt:37: So that script is only run once, and when it first starts, and then we'll never be run again.
- 032_EC2 Basics.txt:40: So what tasks do you wanna automate usually when you boot your instance?
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:4: We'll get a high level approach to all the various parameters you have when launching an EC2 instance, and you'll see there are many, but we'll learn the most important ones.
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:28: For example, t1.micro is also free tier eligible, but that's older generation.
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:44: If you have Windows less than version 10, for example Windows 7 or Windows 8, then you can do our shortcut and directly use a ppk, which is going to be used for PuTTY and PuTTY is how you do SSH on windows 7 and Windows 8.
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:54: So the first rule we want to have is to allow SSH traffic from anywhere.
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:55: So we leave it as this and this will create a rule in our security group to allow SSH traffic, but we also want to allow HTTP traffic from the internet.
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:76: User data is when we pass a script.
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:82: And that means that this script is going to be executed when the instance is first started and only once, okay?
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:113: For example, on security, we get some information on the security group, which was created called launch-wizard-1 with these inbound rules.
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:130: And in programming, when you do something for the first time, you usually say Hello World.

### 5. Constraints / Limitations
- 021_NAT Instance (EC2 based NAT).txt:13: Now, for this instance, by default, it only accepts the traffic that the destination packet is its own IP address and that is a setting at VPC level.
- 021_NAT Instance (EC2 based NAT).txt:14: That means by default EC2 can only accept the traffic where the packet destination address is itself.
- 021_NAT Instance (EC2 based NAT).txt:20: Again, this EC2 must be in a public subnet, like shown here.
- 021_NAT Instance (EC2 based NAT).txt:63: I cannot, this is from my private EC2 Instance.
- 021_NAT Instance (EC2 based NAT).txt:64: I still cannot.
- 021_NAT Instance (EC2 based NAT).txt:84: Again, IP addresses, NAT Gateway should only have the elastic IP addresses.
- 021_NAT Instance (EC2 based NAT).txt:87: That means you can't really control the traffic there but again, you can use network ACL, as I said.
- 021_NAT Instance (EC2 based NAT).txt:90: You can't do port forwarding or you can't use NAT Gateway as a bastion host, but being an EC2 Instance, again, you can do same thing with NAT EC2 Instance as well.
- 021_NAT Instance (EC2 based NAT).txt:92: So with that, you should be able to clearly make out your choices given the scenarios and mostly it would be the NAT Gateways because that is what is recommended.
- 021_NAT Instance (EC2 based NAT).txt:94: Typically, the source destination check has to be disabled and it should have been public subnet, all those kinds of NAT Gateway related stuff.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:10: There are a lot of concepts under enhanced networking, and you need to know well when we talk about enhanced networking and you should be able to pick right answer from the questions.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:36: Whatever you do here does not take a bandwidth from your regular EC2 instance bandwidth limit.
- 191_Route 53 - EC2 Setup.txt:21: So again, no key pair required.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:5: So you are the only owner of the private key but Amazon EC2 service is going to keep a copy of the public key.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:9: So the idea is that your private key must be kept secure and there are no ways for you to recover a lost private key.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:25: You must also create a new Key Pair and then you add the public key material to the authorized_keys on all EC2 instances.
- 059_Lost EC2 Key Pair - Linux.txt:13: So please note that this method only adds authorized keys.
- 059_Lost EC2 Key Pair - Linux.txt:33: So this is when you don't have a working network connection for whatever reason, and this is only for Nitro-based EC2 instances.
- 059_Lost EC2 Key Pair - Linux.txt:37: And, of course, if you don't have network connectivity, you should also fix that.
- 060_Lost EC2 Key Pair - Windows.txt:12: You don't have to remember the files, okay, I'm just giving you the general idea and that should be enough for you.
- 060_Lost EC2 Key Pair - Windows.txt:23: So for this, of course, the EC2 instance running Windows must have the SSM Agent installed.
- 269_[CCP_SOA] EC2 Image Builder.txt:18: And it is a free service, so you're only going to pay for the underlying resources.
- 269_[CCP_SOA] EC2 Image Builder.txt:20: Well, that means that if you create an EC2 instance during this process and EC2 Image Builder will create these EC2 instances, then you're going to pay for these EC2 instances and when the AMI is created and distributed, you're going to pay for the storage of that AMI wherever it has been created and wherever it has been distributed, but that should make sense, right?
- 270_[SOA] EC2 Image Builder Hands On.txt:6: And we can also say that you should run at the scheduled time only if there are dependency updates, these kind of things, or just run every time based on schedule.
- 270_[SOA] EC2 Image Builder Hands On.txt:20: And if you go to the next page, there's another thing I want to install which is aws-cli-version-2-linux, so currently only version 1 is installed onto my AMI, but if I wanted to upgrade it to version 2 then I could select this build component.
- 270_[SOA] EC2 Image Builder Hands On.txt:48: As you can see, the t2.micro only has the x86 architecture, it doesn't have the ARM64, and this is why we've selected an AMI that was x86, and not ARM64.
- 270_[SOA] EC2 Image Builder Hands On.txt:59: Okay, so my instance is now in the building stage, and so that means that if I go into the EC2 service, I should start seeing an EC2 instance.
- 270_[SOA] EC2 Image Builder Hands On.txt:77: So if we look at it, right now we only distribute to one region, which is eu-west-2, which is where the AMI was created, so nothing much is going to happen.
- 032_EC2 Basics.txt:37: So that script is only run once, and when it first starts, and then we'll never be run again.
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:37: Therefore, it is required for us to create a key pair.
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:46: Okay, I should be clear enough, I'm going to create this key pair and it is downloaded for me directly.
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:62: And we only have one volume necessary.
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:77: So some comments to our EC2 instance to execute on the first launch of our EC2 instance and only the first launch.
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:82: And that means that this script is going to be executed when the instance is first started and only once, okay?
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:115: So you should have something similar, okay?
- 035_Security Groups & Classic Ports Overview.txt:5: They only contain allow rules.
- 035_Security Groups & Classic Ports Overview.txt:62: And by now you should be really, really good at security groups and understand them correctly.
- 036_Security Groups Hands On.txt:23: So if we delete this rule on port 80 and save the rules, as we can see now we only have port 22.
- 036_Security Groups Hands On.txt:42: For now, just know that you could have either a custom CIDR anywhere which adds this blog or if you want to, can select my IP to only allow access to your IP.
- 036_Security Groups Hands On.txt:48: And something you should know, so we have two security groups right here default and launch wizard, and an EC2 instance can have many security groups attached to it.

### 6. Patterns / Architectures
- 191_Route 53 - EC2 Setup.txt:4: And very simply, I will choose Amazon Linux2 on this architecture, a T2 micro type of instance.
- 269_[CCP_SOA] EC2 Image Builder.txt:15: So while EC2 Image Builder is original service, it is possible for you to take that AMI and distribute it to multiple regions, therefor allowing your application and your workflow to be truly global.
- 270_[SOA] EC2 Image Builder Hands On.txt:3: So I'm into the service, we can get started, we can create an image pipeline.
- 270_[SOA] EC2 Image Builder Hands On.txt:4: And so here's our first pipeline, we'll call it my demo pipeline, and then we have the option to create a build schedule.
- 270_[SOA] EC2 Image Builder Hands On.txt:48: As you can see, the t2.micro only has the x86 architecture, it doesn't have the ARM64, and this is why we've selected an AMI that was x86, and not ARM64.
- 270_[SOA] EC2 Image Builder Hands On.txt:53: Everything does look good to me, and I will click on create pipeline.
- 270_[SOA] EC2 Image Builder Hands On.txt:55: Now, let's click on our pipeline, MyDemoPipeline, and I'm going to do action, and run pipeline, and this is going to start an execution.
- 270_[SOA] EC2 Image Builder Hands On.txt:95: Okay, you can leave the pipeline running because while this is a manual pipeline, so it's not going to run on its own.
- 033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt:19: So this gives me Amazon Linux 2 and the architecture I will choose is 64-bits x86.
- 035_Security Groups & Classic Ports Overview.txt:59: So that's a bit of an advanced feature, but we'll see it when we'll deal with load balancers 'cause it's quite a common pattern.
- 092_Route 53 - EC2 Setup.txt:4: And very simply, I will choose Amazon Linux2 on this architecture, a T2 micro type of instance.
- 105_Route 53 - EC2 Setup.txt:4: And very simply, I will choose Amazon Linux2 on this architecture, a T2 micro type of instance.
- 383_Instance Scheduler on AWS.txt:4: And here is the architecture.
- 383_Instance Scheduler on AWS.txt:20: So it's quite a complete solution and one of the most, I would say complete one on AWS and this is architecture and it shows you what is step 1, step 2, step 3, step 4, step 5, step 6 and step 7.
- 383_Instance Scheduler on AWS.txt:58: Of course, getting into the details of the architecture is not what's necessary, but for you to understand the idea behind it.
- 043_Solution Architecture on AWS.txt:1: [Instructor] - Now let's talk about solution architecture on AWS.
- 043_Solution Architecture on AWS.txt:9: What I want to expose to you right now is all the plus switches we have and the kind of architectures we have to get into and the choices we have to make.
- 043_Solution Architecture on AWS.txt:15: It's really hard to represent all the solutions architecture and AWS into one slide, but I want to be able to divide to you the different categories so you get a better understanding of all the kind of things we're going to do a deep dive on in the future lectures.
- 043_Solution Architecture on AWS.txt:21: Again, it depends on the kind of requirements you are going to have for your solution architecture and you need to be able to decouple your solutions if you have a micro services type of architecture.
- 043_Solution Architecture on AWS.txt:24: So these are all some kind of combinations, and if you try to permit all of them, you can get really an infinite number of solution architecture, but what I want you to realize at this high level is that as we get into solution architecture discussions based on what you choose for your database, your computer caching, your orchestration, your storage, your static, your web layer, your CDN, everything, it will have some impact into the cost, into the availability, the durability, the scalability, and so on, so it's really up to you as a solution architect to understand which type of technology is going to be the best for which moment, and this is what the exam will be testing you on.
- 043_Solution Architecture on AWS.txt:25: Now in this section, we're going to do a deep dive into everything in this slide, so don't worry, there will be specific solution architectures for each of these components, and we'll get a better discussion to which one is more appropriate and when and why.
- 062_Route 53 - Part 2.txt:35: So let's take an example of a Solution Architecture for multi-region failover with RDS.
- 065_Comparison of Solutions Architecture.txt:1: So we have seen a lot of different components so far and now it's time to just take a step back and compare all the kind of options we have when we do solution architecture, just with the web layer and the application layer.
- 065_Comparison of Solutions Architecture.txt:17: So that's one solution architecture and it's not too bad.
- 065_Comparison of Solutions Architecture.txt:34: This is architecture that the both often choose, but it's not perfect.
- 065_Comparison of Solutions Architecture.txt:38: And so we've seen this as a very classic architecture on AWS that scales very well.
- 065_Comparison of Solutions Architecture.txt:42: But it's quite slow I would say, we're talking about a few minutes, but that's okay, that's very proper for many types of architecture.
- 065_Comparison of Solutions Architecture.txt:52: The thing is though with this architecture as we discussed already is that it's really really tough to orchestrate ECS service auto-scaling alongside ASG auto-scaling.
- 065_Comparison of Solutions Architecture.txt:65: I don't like to call ALB serverless, I like to call it managed, because it doesn't scale as nicely, but still it's a very nice architecture, something very common that scales really well that is no management or that requires no management on your side and is going to be very safe and very scalable.
- 065_Comparison of Solutions Architecture.txt:77: This is a very fine solution architecture.
- 065_Comparison of Solutions Architecture.txt:83: Lambda Cold Start time may increase some latency for some requests especially if you start as well chaining up a bunch of these architectures together.
- 065_Comparison of Solutions Architecture.txt:86: An okay architecture would be to do this.
- 065_Comparison of Solutions Architecture.txt:88: The better architecture would be to have the client talk to the API Gateway and the API Gateway be integrated with SQS directly.
- 065_Comparison of Solutions Architecture.txt:96: So we have this architecture and we would use this for getting the API Gateway features on top of a custom HTTP backend.
- 065_Comparison of Solutions Architecture.txt:101: I hope these discussions of solution architecture are bringing your thinking forward and I will see you in the next lecture.
- 119_Elastic Beanstalk.txt:19: And so you have three architecture models on Beanstalk we can see, the number one is a single-instance deployment, which is great for dev.
- 119_Elastic Beanstalk.txt:23: So the first thing we have is going to be a single instance, and the architecture chosen by Beanstalk in this example is obviously only one availability zone.
- 119_Elastic Beanstalk.txt:47: Okay, so let's have a look at a typical architecture for Beanstalk.
- 119_Elastic Beanstalk.txt:51: This is a classic architecture, and the good thing is that both of these tiers can be managed using Beanstalk.

## Step 3 - Deep Expansion (Compute Concepts)

### Core Services in This Topic
- API Gateway: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Batch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Budgets: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudFormation: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Elastic Beanstalk: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS X-Ray: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Aurora: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Compute Operational Context: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Compute Platform Design: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Container Runtime Operations: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Deployment Automation: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Elasticity and Availability: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Operational Guardrails: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Serverless Execution Model: treat this as a design lever that changes topology, risk posture, or operational workflow.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Virtual machine compute | EC2 | Azure Virtual Machines | Compute Engine |
| Managed load balancing | ELB | Azure Load Balancer / Application Gateway | Cloud Load Balancing |
| Container orchestration | ECS/EKS/Fargate | AKS / Container Apps | GKE / Cloud Run |
| Serverless functions | Lambda | Azure Functions | Cloud Functions / Cloud Run |
| Infrastructure as code | CloudFormation / CDK / SAM | ARM / Bicep / Azure DevOps patterns | Deployment Manager / Terraform-centered workflows |
| Specialized compute | Batch / HPC / Outposts | Batch / HPC / Azure Stack | Batch / HPC / Anthos edge patterns |

### Trade-offs and Decision Notes
- Compute Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- Workload placement starts with the runtime contract: VM, container, serverless, or managed platform.
- Availability and elasticity are architecture properties, not post-deployment add-ons.

### Phase 2 - Core Services
- Implement scaling, traffic distribution, and deployment controls before optimizing for convenience.
- Treat execution roles, runtime networking, and image provenance as baseline compute controls.

### Phase 3 - Advanced Patterns
- Use event-driven and platform-specific deployment patterns to reduce operational drag at scale.
- Model specialized compute separately when batch, HPC, or platform abstractions change failure behavior.

### Phase 4 - System Design
- Reference architecture: ingress and workload tiers, deployment control plane, and runtime observability loop.
- Scaling considerations: noisy neighbors, placement constraints, rollout safety, and regional boundaries.
- Cost considerations: idle VM waste, overprovisioned scaling floors, and mismatched platform abstractions.
