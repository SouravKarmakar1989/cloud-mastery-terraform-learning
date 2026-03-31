# 01_Billing_Budgets_Visibility.md

## Scope
- Topic: Billing data, budgets, explorer workflows, anomaly detection, and spend visibility
- Files processed: 12
- Extracted non-empty transcript lines: 465
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Cost Control Knowledge Base
- Cross-domain referrals: 3

## Real Material - Architect Learning Build (Cost Control: Billing Budgets Visibility)

This section is the study-first architecture guide for billing data, budgets, explorer workflows, anomaly detection, and spend visibility.

### Phase 1 - Foundations

#### Module: Billing Budgets Visibility Mental Model
- Use billing budgets visibility decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Billing Budgets Visibility Mental Model
- Primary transcript files:
- outputs/aws-solutions-architect-professional/13_Cost Control/134_AWS Budgets & Cost Explorer.txt
- outputs/AWS AI/1. aws-ai-practitioner/04_Course Cost & AWS Budget Setup/019_AWS Budget Setup.txt
- outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/031_AWS Budget Setup.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/031_AWS Budget Setup.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/234_[SAA_SOA] AWS Cost Explorer.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/30_Other Services/377_AWS Cost Explorer.txt
- outputs/AWS AI/1. aws-ai-practitioner/04_Course Cost & AWS Budget Setup/018_Course Cost.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/235_[CCP] AWS Cost Anomaly Detection.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/30_Other Services/378_AWS Cost Anomaly Detection.txt
- Top concept clusters from transcript metadata:
- Service Cost Trade-offs
- Spend Visibility
- Commitment Strategy
- Consumption Accountability
- Optimization Governance
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 12
- Module-selected transcript files: 9
- Key insight candidates scanned (topic): 465
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- So if we look at Cost Explorer, this is the interface, and we get access to a lot of filters, as I said, the same filters for Cost Explorer and for Budgets, as well as some detailed graphs around how your costs are spread out over time, and so on.
- So, with these budgets and access to the free tier on the left hand side to explore, as well as accessing your bills breakdown on the left hand side, you should be able to debug any kind of costing issue and billing issue you have on this course.
- So a small service that can come up in the exam is a billing service called Cost Explorer, which is used to visualize, understand, and manage your AWS cost and usage over time.
- So to make it extra safe, I'm going to show you in the next lecture how to set up a course budget and you set the alarm to whatever amount you feel comfortable so that you make sure that in case you hit your course budget, in case you have a forecast of hitting your course budget, then you'll receive an email notification and you can have a look at your bill to see what is costing you money.
- Now, when the budget exceeds a threshold, then we can send a notification into SNS, which can trigger a Lambda function, and that Lambda function can have the API call embedded into its code, to move the account that has breached its threshold, into a more restrictive OU, where an actual SCP has already been applied.
- So if we like an example of an OU, with management account, and a dev OU of member accounts, then we can create a budget, and then in case the budget reaches a specific threshold, then we can automatically apply an SCP onto the development OU, to make sure to restrict the member accounts.
- And so thanks to Cost Explorer, we get this little popup that will come up and it will tell us what kind of savings plan we can have based on our usage, and it will give us some recommendation, and give us some estimated monthly spend, and so on.
- And here we're saying, "Okay, we want to have a monthly cost budget of, for example, $10." And saying, "Hey, I want to spend no more than $10 per month on this course." And then, the email recipients are going to be again, stephane@example.com.
- So in this case, while the budgets are going to be managed directly into the member accounts, but to simplify distributing these budgets, and creating them in each member account, we can use a CloudFormation stack sets, to deploy these budgets.
- So if we have 10 member accounts, we create 10 budgets in the management accounts, but we apply a filter on each budget, and the filter can be an account filter, so that the budget is tailored to one specific account.
- Talking about Cost Explorer, so it's a way for you to visualize, understand, and manage your AWS cost and usage over time, and you create custom reports that will analyze your costs, and usage data.
- You can filter by service, linked account, tag, purchase option, instance type, region, region availability zone, API operation, et cetera, et cetera, which are the same options as Cost Explorer.

##### Polished Architect Notes
- Transcript signals that so if we look at Cost Explorer, this is the interface, and we get access to a lot of filters, as I said, the same filters for Cost Explorer and for Budgets, as well as some detailed graphs around how your costs are spread out over time, and so on.
- Transcript signals that so, with these budgets and access to the free tier on the left hand side to explore, as well as accessing your bills breakdown on the left hand side, you should be able to debug any kind of costing issue and billing issue you have on this course.
- Transcript signals that so a small service that can come up in the exam is a billing service called Cost Explorer, which is used to visualize, understand, and manage your AWS cost and usage over time.
- Transcript signals that so to make it extra safe, I'm going to show you in the next lecture how to set up a course budget and you set the alarm to whatever amount you feel comfortable so that you make sure that in case you hit your course budget, in case you have a forecast of hitting your course budget, then you'll receive an email notification and you can have a look at your bill to see what is costing you money.
- Transcript signals that now, when the budget exceeds a threshold, then we can send a notification into SNS, which can trigger a Lambda function, and that Lambda function can have the API call embedded into its code, to move the account that has breached its threshold, into a more restrictive OU, where an actual SCP has already been applied.
- Transcript signals that so if we like an example of an OU, with management account, and a dev OU of member accounts, then we can create a budget, and then in case the budget reaches a specific threshold, then we can automatically apply an SCP onto the development OU, to make sure to restrict the member accounts.
- Transcript signals that and so thanks to Cost Explorer, we get this little popup that will come up and it will tell us what kind of savings plan we can have based on our usage, and it will give us some recommendation, and give us some estimated monthly spend, and so on.
- Transcript signals that and here we're saying, "Okay, we want to have a monthly cost budget of, for example, $10." And saying, "Hey, I want to spend no more than $10 per month on this course." And then, the email recipients are going to be again, stephane@example.com.
- Transcript signals that so in this case, while the budgets are going to be managed directly into the member accounts, but to simplify distributing these budgets, and creating them in each member account, we can use a CloudFormation stack sets, to deploy these budgets.
- Transcript signals that so if we have 10 member accounts, we create 10 budgets in the management accounts, but we apply a filter on each budget, and the filter can be an account filter, so that the budget is tailored to one specific account.
- Transcript signals that talking about Cost Explorer, so it's a way for you to visualize, understand, and manage your AWS cost and usage over time, and you create custom reports that will analyze your costs, and usage data.
- Transcript signals that you can filter by service, linked account, tag, purchase option, instance type, region, region availability zone, API operation, et cetera, et cetera, which are the same options as Cost Explorer.

##### Architect Synthesis (Transcript-Derived)
- Treat Service Cost Trade-offs as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Spend Visibility as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Commitment Strategy as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Consumption Accountability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Optimization Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so if we look at Cost Explorer, this is the interface, and we get access to a lot of filters, as I said, the same filters for Cost Explorer and for Budgets, as well as some detailed graphs around how your costs are spread out over time, and so on.
- Design implication: so, with these budgets and access to the free tier on the left hand side to explore, as well as accessing your bills breakdown on the left hand side, you should be able to debug any kind of costing issue and billing issue you have on this course.
- Design implication: so a small service that can come up in the exam is a billing service called Cost Explorer, which is used to visualize, understand, and manage your AWS cost and usage over time.
- Design implication: so to make it extra safe, I'm going to show you in the next lecture how to set up a course budget and you set the alarm to whatever amount you feel comfortable so that you make sure that in case you hit your course budget, in case you have a forecast of hitting your course budget, then you'll receive an email notification and you can have a look at your bill to see what is costing you money.
- Design implication: now, when the budget exceeds a threshold, then we can send a notification into SNS, which can trigger a Lambda function, and that Lambda function can have the API call embedded into its code, to move the account that has breached its threshold, into a more restrictive OU, where an actual SCP has already been applied.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/aws-solutions-architect-professional/13_Cost Control/134_AWS Budgets & Cost Explorer.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/235_[CCP] AWS Cost Anomaly Detection.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/30_Other Services/378_AWS Cost Anomaly Detection.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/234_[SAA_SOA] AWS Cost Explorer.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/30_Other Services/377_AWS Cost Explorer.txt
- Top concept clusters from transcript metadata:
- Service Cost Trade-offs
- Spend Visibility
- Commitment Strategy
- Consumption Accountability
- Optimization Governance
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 12
- Module-selected transcript files: 5
- Key insight candidates scanned (topic): 465
- Key insights inside selected files: 21
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- Talking about Cost Explorer, so it's a way for you to visualize, understand, and manage your AWS cost and usage over time, and you create custom reports that will analyze your costs, and usage data.
- And it will send you an anomaly detection report with the root cause analysis of what is happening in your account.
- So if we look at Cost Explorer, this is the interface, and we get access to a lot of filters, as I said, the same filters for Cost Explorer and for Budgets, as well as some detailed graphs around how your costs are spread out over time, and so on.
- And so thanks to Cost Explorer, we get this little popup that will come up and it will tell us what kind of savings plan we can have based on our usage, and it will give us some recommendation, and give us some estimated monthly spend, and so on.
- You can filter by service, linked account, tag, purchase option, instance type, region, region availability zone, API operation, et cetera, et cetera, which are the same options as Cost Explorer.
- So to summarize, using machine learning, you can have a look at your cost, you can get alerted and quickly analyze the root cause, all of using the AWS cost anomaly detection service.
- So a small service that can come up in the exam is a billing service called Cost Explorer, which is used to visualize, understand, and manage your AWS cost and usage over time.
- And then thanks to Cost Explorer, you can do some cost savings because it allows you to choose an optimal savings plan to lower the prices on your bill.
- Now with Cost Explorer, there's also a nifty feature, in which you can forecast usage of your cost, up to 12 months in advance, based on previous usage.
- Cost Explorer is a great service to allow you to \choose an optimal savings plan.
- It allows you to create custom reports that analyze your cost and usage data.
- So here is a quick lecture on the service named AWS Cost Anomaly Detection.

##### Polished Architect Notes
- Transcript signals that talking about Cost Explorer, so it's a way for you to visualize, understand, and manage your AWS cost and usage over time, and you create custom reports that will analyze your costs, and usage data.
- Transcript signals that and it will send you an anomaly detection report with the root cause analysis of what is happening in your account.
- Transcript signals that so if we look at Cost Explorer, this is the interface, and we get access to a lot of filters, as I said, the same filters for Cost Explorer and for Budgets, as well as some detailed graphs around how your costs are spread out over time, and so on.
- Transcript signals that and so thanks to Cost Explorer, we get this little popup that will come up and it will tell us what kind of savings plan we can have based on our usage, and it will give us some recommendation, and give us some estimated monthly spend, and so on.
- Transcript signals that you can filter by service, linked account, tag, purchase option, instance type, region, region availability zone, API operation, et cetera, et cetera, which are the same options as Cost Explorer.
- Transcript signals that so to summarize, using machine learning, you can have a look at your cost, you can get alerted and quickly analyze the root cause, all of using the AWS cost anomaly detection service.
- Transcript signals that so a small service that can come up in the exam is a billing service called Cost Explorer, which is used to visualize, understand, and manage your AWS cost and usage over time.
- Transcript signals that and then thanks to Cost Explorer, you can do some cost savings because it allows you to choose an optimal savings plan to lower the prices on your bill.
- Transcript signals that now with Cost Explorer, there's also a nifty feature, in which you can forecast usage of your cost, up to 12 months in advance, based on previous usage.
- Transcript signals that cost Explorer is a great service to allow you to \choose an optimal savings plan.
- Transcript signals that it allows you to create custom reports that analyze your cost and usage data.
- Transcript signals that so here is a quick lecture on the service named AWS Cost Anomaly Detection.

##### Architect Synthesis (Transcript-Derived)
- Treat Service Cost Trade-offs as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Spend Visibility as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Commitment Strategy as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Consumption Accountability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Optimization Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: talking about Cost Explorer, so it's a way for you to visualize, understand, and manage your AWS cost and usage over time, and you create custom reports that will analyze your costs, and usage data.
- Design implication: and it will send you an anomaly detection report with the root cause analysis of what is happening in your account.
- Design implication: so if we look at Cost Explorer, this is the interface, and we get access to a lot of filters, as I said, the same filters for Cost Explorer and for Budgets, as well as some detailed graphs around how your costs are spread out over time, and so on.
- Design implication: and so thanks to Cost Explorer, we get this little popup that will come up and it will tell us what kind of savings plan we can have based on our usage, and it will give us some recommendation, and give us some estimated monthly spend, and so on.
- Design implication: you can filter by service, linked account, tag, purchase option, instance type, region, region availability zone, API operation, et cetera, et cetera, which are the same options as Cost Explorer.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/aws-solutions-architect-professional/13_Cost Control/134_AWS Budgets & Cost Explorer.txt
- outputs/AWS AI/1. aws-ai-practitioner/04_Course Cost & AWS Budget Setup/019_AWS Budget Setup.txt
- outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/031_AWS Budget Setup.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/031_AWS Budget Setup.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/234_[SAA_SOA] AWS Cost Explorer.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/30_Other Services/377_AWS Cost Explorer.txt
- outputs/AWS AI/1. aws-ai-practitioner/04_Course Cost & AWS Budget Setup/018_Course Cost.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/235_[CCP] AWS Cost Anomaly Detection.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/30_Other Services/378_AWS Cost Anomaly Detection.txt
- outputs/aws-solutions-architect-professional/13_Cost Control/135_AWS Compute Optimizer.txt
- Top concept clusters from transcript metadata:
- Service Cost Trade-offs
- Spend Visibility
- Commitment Strategy
- Consumption Accountability
- Optimization Governance
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 12
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 465
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- So if we look at Cost Explorer, this is the interface, and we get access to a lot of filters, as I said, the same filters for Cost Explorer and for Budgets, as well as some detailed graphs around how your costs are spread out over time, and so on.
- So, with these budgets and access to the free tier on the left hand side to explore, as well as accessing your bills breakdown on the left hand side, you should be able to debug any kind of costing issue and billing issue you have on this course.
- Talking about Cost Explorer, so it's a way for you to visualize, understand, and manage your AWS cost and usage over time, and you create custom reports that will analyze your costs, and usage data.
- So a small service that can come up in the exam is a billing service called Cost Explorer, which is used to visualize, understand, and manage your AWS cost and usage over time.
- So to make it extra safe, I'm going to show you in the next lecture how to set up a course budget and you set the alarm to whatever amount you feel comfortable so that you make sure that in case you hit your course budget, in case you have a forecast of hitting your course budget, then you'll receive an email notification and you can have a look at your bill to see what is costing you money.
- And so thanks to Cost Explorer, we get this little popup that will come up and it will tell us what kind of savings plan we can have based on our usage, and it will give us some recommendation, and give us some estimated monthly spend, and so on.
- And here we're saying, "Okay, we want to have a monthly cost budget of, for example, $10." And saying, "Hey, I want to spend no more than $10 per month on this course." And then, the email recipients are going to be again, stephane@example.com.
- You can filter by service, linked account, tag, purchase option, instance type, region, region availability zone, API operation, et cetera, et cetera, which are the same options as Cost Explorer.
- So to summarize, using machine learning, you can have a look at your cost, you can get alerted and quickly analyze the root cause, all of using the AWS cost anomaly detection service.
- Now let's talk about AWS Compute Optimizer, which is used to reduce cost and improve performance by recommending optimal AWS resources for your workload.
- And then thanks to Cost Explorer, you can do some cost savings because it allows you to choose an optimal savings plan to lower the prices on your bill.
- Now with Cost Explorer, there's also a nifty feature, in which you can forecast usage of your cost, up to 12 months in advance, based on previous usage.

##### Polished Architect Notes
- Transcript signals that so if we look at Cost Explorer, this is the interface, and we get access to a lot of filters, as I said, the same filters for Cost Explorer and for Budgets, as well as some detailed graphs around how your costs are spread out over time, and so on.
- Transcript signals that so, with these budgets and access to the free tier on the left hand side to explore, as well as accessing your bills breakdown on the left hand side, you should be able to debug any kind of costing issue and billing issue you have on this course.
- Transcript signals that talking about Cost Explorer, so it's a way for you to visualize, understand, and manage your AWS cost and usage over time, and you create custom reports that will analyze your costs, and usage data.
- Transcript signals that so a small service that can come up in the exam is a billing service called Cost Explorer, which is used to visualize, understand, and manage your AWS cost and usage over time.
- Transcript signals that so to make it extra safe, I'm going to show you in the next lecture how to set up a course budget and you set the alarm to whatever amount you feel comfortable so that you make sure that in case you hit your course budget, in case you have a forecast of hitting your course budget, then you'll receive an email notification and you can have a look at your bill to see what is costing you money.
- Transcript signals that and so thanks to Cost Explorer, we get this little popup that will come up and it will tell us what kind of savings plan we can have based on our usage, and it will give us some recommendation, and give us some estimated monthly spend, and so on.
- Transcript signals that and here we're saying, "Okay, we want to have a monthly cost budget of, for example, $10." And saying, "Hey, I want to spend no more than $10 per month on this course." And then, the email recipients are going to be again, stephane@example.com.
- Transcript signals that you can filter by service, linked account, tag, purchase option, instance type, region, region availability zone, API operation, et cetera, et cetera, which are the same options as Cost Explorer.
- Transcript signals that so to summarize, using machine learning, you can have a look at your cost, you can get alerted and quickly analyze the root cause, all of using the AWS cost anomaly detection service.
- Transcript signals that now let's talk about AWS Compute Optimizer, which is used to reduce cost and improve performance by recommending optimal AWS resources for your workload.
- Transcript signals that and then thanks to Cost Explorer, you can do some cost savings because it allows you to choose an optimal savings plan to lower the prices on your bill.
- Transcript signals that now with Cost Explorer, there's also a nifty feature, in which you can forecast usage of your cost, up to 12 months in advance, based on previous usage.

##### Architect Synthesis (Transcript-Derived)
- Treat Service Cost Trade-offs as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Spend Visibility as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Commitment Strategy as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Consumption Accountability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Optimization Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so if we look at Cost Explorer, this is the interface, and we get access to a lot of filters, as I said, the same filters for Cost Explorer and for Budgets, as well as some detailed graphs around how your costs are spread out over time, and so on.
- Design implication: so, with these budgets and access to the free tier on the left hand side to explore, as well as accessing your bills breakdown on the left hand side, you should be able to debug any kind of costing issue and billing issue you have on this course.
- Design implication: talking about Cost Explorer, so it's a way for you to visualize, understand, and manage your AWS cost and usage over time, and you create custom reports that will analyze your costs, and usage data.
- Design implication: so a small service that can come up in the exam is a billing service called Cost Explorer, which is used to visualize, understand, and manage your AWS cost and usage over time.
- Design implication: so to make it extra safe, I'm going to show you in the next lecture how to set up a course budget and you set the alarm to whatever amount you feel comfortable so that you make sure that in case you hit your course budget, in case you have a forecast of hitting your course budget, then you'll receive an email notification and you can have a look at your bill to see what is costing you money.

### Phase 2 - Core Services
- AWS Budgets should be understood in terms of request path, control plane, and operational boundary.
- Amazon EC2 should be understood in terms of request path, control plane, and operational boundary.
- Amazon EBS should be understood in terms of request path, control plane, and operational boundary.
- AWS Cost Explorer should be understood in terms of request path, control plane, and operational boundary.
- Amazon RDS should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Commitment Strategy becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Consumption Accountability becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Cost Control Operational Context becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Optimization Governance becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Service Cost Trade-offs becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design billing budgets visibility with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when billing budgets visibility decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So if we like an example of an OU, with management account, and a dev OU of member accounts, then we can create a budget, and then in case the budget reaches a specific threshold, then we can automatically apply an SCP onto the development OU, to make sure to restrict the member accounts.
- Signal 2: So in this case, while the budgets are going to be managed directly into the member accounts, but to simplify distributing these budgets, and creating them in each member account, we can use a CloudFormation stack sets, to deploy these budgets.
- Signal 3: So if we have 10 member accounts, we create 10 budgets in the management accounts, but we apply a filter on each budget, and the filter can be an account filter, so that the budget is tailored to one specific account.
- Signal 4: Talking about Cost Explorer, so it's a way for you to visualize, understand, and manage your AWS cost and usage over time, and you create custom reports that will analyze your costs, and usage data.
- Signal 5: Transcript signals that so if we like an example of an OU, with management account, and a dev OU of member accounts, then we can create a budget, and then in case the budget reaches a specific threshold, then we can automatically apply an SCP onto the development OU, to make sure to restrict the member accounts.
- Signal 6: Transcript signals that so in this case, while the budgets are going to be managed directly into the member accounts, but to simplify distributing these budgets, and creating them in each member account, we can use a CloudFormation stack sets, to deploy these budgets.
- Signal 7: Transcript signals that so if we have 10 member accounts, we create 10 budgets in the management accounts, but we apply a filter on each budget, and the filter can be an account filter, so that the budget is tailored to one specific account.
- Signal 8: Transcript signals that talking about Cost Explorer, so it's a way for you to visualize, understand, and manage your AWS cost and usage over time, and you create custom reports that will analyze your costs, and usage data.
- Signal 9: It allows you to create custom reports that analyze your cost and usage data.
- Signal 10: Transcript signals that it allows you to create custom reports that analyze your cost and usage data.

### Service-Specific Lab Paths
### Activity 1: Amazon S3 Lab for Billing data, budgets, explorer workflows, anomaly detection, and spend visibility
- AWS console path: AWS Console -> S3 -> Buckets
- Azure equivalent: Azure Blob Storage
- GCP equivalent: Cloud Storage
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> S3 -> Buckets.
3. Build: Create a bucket and upload one sample file.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Open object metadata and test download.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete objects and delete bucket.

### Activity 2: Amazon EC2 Lab for Billing data, budgets, explorer workflows, anomaly detection, and spend visibility
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

### Activity 3: Amazon CloudWatch Lab for Billing data, budgets, explorer workflows, anomaly detection, and spend visibility
- AWS console path: AWS Console -> CloudWatch
- Azure equivalent: Azure Monitor
- GCP equivalent: Cloud Monitoring
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> CloudWatch.
3. Build: Create one dashboard and one alarm.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Trigger alarm condition and inspect alarm history.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete dashboard and alarm.

### Activity 4: Amazon RDS Lab for Billing data, budgets, explorer workflows, anomaly detection, and spend visibility
- AWS console path: AWS Console -> RDS -> Databases
- Azure equivalent: Azure SQL Database
- GCP equivalent: Cloud SQL
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> RDS -> Databases.
3. Build: Create a small dev database instance.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Check endpoint, connect test, and run one query.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete DB instance and snapshots not needed.

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study Billing data, budgets, explorer workflows, anomaly detection, and spend visibility in a cloud-agnostic way: focus on capability first, provider name second.

### Capability Mapping (AWS / Azure / GCP)
| Capability | AWS | Azure | GCP |
|---|---|---|---|
| Identity | IAM / IAM Identity Center | Microsoft Entra ID + RBAC | Cloud IAM |
| Object Storage | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Virtual Machines | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Serverless Functions | AWS Lambda | Azure Functions | Cloud Functions / Cloud Run |
| Databases | RDS / DynamoDB / ElastiCache | Azure SQL / Cosmos DB / Azure Cache | Cloud SQL / Firestore / Memorystore |
| Networking | VPC / Route 53 / ELB | VNet / DNS / Load Balancer | VPC / Cloud DNS / Cloud Load Balancing |
| Observability | CloudWatch / X-Ray / CloudTrail | Azure Monitor / App Insights / Activity Log | Cloud Monitoring / Cloud Logging / Cloud Trace |
| AI/ML | SageMaker / Bedrock / AI services | Azure ML / Azure OpenAI / AI services | Vertex AI / GenAI services |

### Same Lab Across 3 Clouds
| Lab Theme | AWS | Azure | GCP |
|---|---|---|---|
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Amazon EC2 | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Amazon CloudWatch | Amazon CloudWatch | Azure Monitor | Cloud Monitoring |
| Amazon RDS | Amazon RDS | Azure SQL Database | Cloud SQL |

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

These transcripts are relevant to this topic but are owned by another knowledge base and are referenced here to avoid duplication.

- outputs/AWS AI/2. aws-machine-learning-engineer-associate/11_Management and Governance/277_AWS Cost Explorer.txt (owned by AWS AI Knowledge Base)
- outputs/AWS AI/3. aws-generative-ai-developer-professional/15_Management and Governance Services You Should Know/271_AWS Cost Anomaly Detection.txt (owned by AWS AI Knowledge Base)
- outputs/AWS AI/3. aws-generative-ai-developer-professional/15_Management and Governance Services You Should Know/272_AWS Cost Explorer.txt (owned by AWS AI Knowledge Base)

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS AI/1. aws-ai-practitioner/04_Course Cost & AWS Budget Setup/018_Course Cost.txt

Line 1:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: Okay, so let's talk about the course budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 2:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So there is a cost associated with using this course because using the AWS AI Services is not free.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 3:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: If you follow along with me and do the hands-on, you will incur charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 4:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: But I do my best to guide you on how to limit them, and I show you what will cost you money and how to turn things off.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: Now, as you see though, I spent all my course recording 31 cents, so it's not a lot, but 14 different services have incurred cost.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 6:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: And of course, if you don't follow closely and then all of a sudden, you leave things running or you do use something too much, your course's cost are going to go up.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 7:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So I want to give you a little of a heads up here just to make sure that nothing unexpected happens to you.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 8:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Some services, for example, Amazon Queue, have free trials, but again, with free trials, it's dangerous because you don't forget to turn it off and then you have charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 9:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So I will again show you how to turn things off, of course, but very good for you to triple check things in your case.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 10:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Budgets
- Key Insights: So to make it extra safe, I'm going to show you in the next lecture how to set up a course budget and you set the alarm to whatever amount you feel comfortable so that you make sure that in case you hit your course budget, in case you have a forecast of hitting your course budget, then you'll receive an email notification and you can have a look at your bill to see what is costing you money.
- Hidden/Implicit Meaning: Financial governance signal.

Line 11:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 12:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

### File: outputs/AWS AI/1. aws-ai-practitioner/04_Course Cost & AWS Budget Setup/019_AWS Budget Setup.txt

Line 1:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, we are going to make sure to set up a budget and an alarm for that budget for this course in order for us not to spend any money or too much money.
- Hidden/Implicit Meaning: Financial governance signal.

Line 2:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: So, therefore we need to go into the billing console.
- Hidden/Implicit Meaning: Financial governance signal.

Line 3:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: (none explicit)
- Key Insights: So, you can click on the top right of your screen and then click on Billing and Cost Management.
- Hidden/Implicit Meaning: Financial governance signal.

Line 4:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, as you can see here, I get a lot of access denied.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 5:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: This is because I'm logged in as an IAM user, Stephane, from my accounts.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 6:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: And I had administrative access, but even though I have administrative access, I cannot access my billing data.
- Hidden/Implicit Meaning: Constraint or limitation signal; Financial governance signal.

Line 7:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So to fix this, you can go into your root account.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 8:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So here, I'm in my root account as you can see.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 9:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: It just says the name of my account.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 10:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: It doesn't say IAM user.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 11:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then, you click on it and you go to Accounts.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 12:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So from Accounts, you're going to scroll down.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 13:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: And then scrolling down, you will find the IAM user and role access to billing information.
- Hidden/Implicit Meaning: Financial governance signal.

Line 14:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: As you can see right now it is deactivated.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 15:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: So, we need to just activate IAM access and this will allow IAM users to access the billing information if they are administrators.
- Hidden/Implicit Meaning: Financial governance signal.

Line 16:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: So back into my billing console now, and I refresh this page.
- Hidden/Implicit Meaning: Financial governance signal.

Line 17:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And I refresh again and it can take a bit of time.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 18:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: As you can see now, I see my data.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 19:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, except this for the forecast because there is a data unavailable exception, so insufficient amount of historical data.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 20:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: Except for this, we can see all my cost information in here.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 21:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: (none explicit)
- Key Insights: So, now let me show you what a billing page looks like for an account that I'm actually using and have some costs.
- Hidden/Implicit Meaning: Financial governance signal.

Line 22:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So as we can see, we get some information around the month-to-date's cost.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 23:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: We get the total forecasted cost for the current month and so on, and last month's total cost.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 24:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So, from this we can get a few information such as the cost breakdown by month.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 25:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So, this is when you start seeing some cost.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 26:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then we can have a look at bills.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 27:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So if you look at bills, say you have any cost for this tutorial.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 28:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: For this course, let's go into December, 2023.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 29:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So you will find at the bottom of it, charges by service.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 30:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And so you'll see the number of active services.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 31:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Right now I have 28.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 32:
- Concepts: Service Cost Trade-offs
- Services: Amazon EC2
- Key Insights: And for example, if I look at the Elastic Compute Cloud, so EC2, I see I have $43 of cost in EU Ireland.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 33:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: And it turns out that here is the breakdown of my cost.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 34:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So, there is some Amazon Elastic Compute NatGateway, which is costing me $35.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 35:
- Concepts: Service Cost Trade-offs
- Services: Amazon EBS
- Key Insights: And there is some EBS cost, there is some Elastic IP cost, and so on.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 36:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And so you can get a lot of information out of just this bill.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 37:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So, in case you see any kind of cost for your accounts, remember to go into bills, go to the month you're interested into, and then scroll down to get charged by service where you're going to get a lot of information around how every service is being used, and how you are billed for service, which will allow you to break down your bill very easily.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 38:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Next, you can go into free tier on the left hand side.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 39:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, AWs does have a free tier.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 40:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And you're going to be able to see the current usage and the forecasted usage, as well as again, what the free tier is.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 41:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then you will see whether or not you're going to pass the free tier usage.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 42:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So if you do pass it as a forecast, it goes into the red, then you are going to be billed, so make sure you turn off anything that is turned on and potentially costing you money.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 43:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, this is a very, very helpful dashboard.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 44:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: Okay, so now let's go ahead and set up a budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 45:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, on the left hand side you click on Budgets.
- Hidden/Implicit Meaning: Financial governance signal.

Line 46:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: And here you can create a budget that will alert you whenever you reach your thresholds.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Financial governance signal.

Line 47:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, let's create a budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 48:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And we're going to use a template simplified.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 49:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: And the first one is going to be a zero spend budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 50:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So as soon as we reach 1 cent, we're going to get an alert.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 51:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So this is very helpful.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 52:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, the budget name is My Zero Spend Budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 53:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Here you add your email.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 54:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, I put here stephane@example.com and then create the budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 55:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So whenever I will spend 1 cent, I will have this budget send me an email.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Financial governance signal.

Line 56:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Budgets
- Key Insights: You can also use another template for a monthly cost budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 57:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Budgets
- Key Insights: And here we're saying, "Okay, we want to have a monthly cost budget of, for example, $10." And saying, "Hey, I want to spend no more than $10 per month on this course." And then, the email recipients are going to be again, stephane@example.com.
- Hidden/Implicit Meaning: Financial governance signal.

Line 58:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: And by the way, if you follow this course closely, you should not spend any dollars as you, when things can cost you money.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 59:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: But if you're careful, you should not spend any money.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: Regardless, it's still good to set up a budget just to make sure in case you do mistakes that you don't have a big bill coming to your way.
- Hidden/Implicit Meaning: Financial governance signal.

Line 61:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So now for this $10 budget, I'm actually going to reach an email when my actual spend reaches 85% and my, when my actual spend is going to reach 100%.
- Hidden/Implicit Meaning: Financial governance signal.

Line 62:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And if my forecasted spend is expected to also reach 100%.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 63:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, very helpful.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 64:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: I can have three emails I can receive from this.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 65:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: And I'm going to create this budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 66:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So as you can see, while my zero spend budget has already been exceeded, because while I've spent some money this month, so I'm getting an email right away at this address.
- Hidden/Implicit Meaning: Financial governance signal.

Line 67:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Budgets
- Key Insights: So, with these budgets and access to the free tier on the left hand side to explore, as well as accessing your bills breakdown on the left hand side, you should be able to debug any kind of costing issue and billing issue you have on this course.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Financial governance signal.

Line 68:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And this is a skill that is going to be necessary for you when using AWS.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 69:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: All right, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 70:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 71:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/234_[SAA_SOA] AWS Cost Explorer.txt

Line 1:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Explorer
- Key Insights: So a small service that can come up in the exam is a billing service called Cost Explorer, which is used to visualize, understand, and manage your AWS cost and usage over time.
- Hidden/Implicit Meaning: Financial governance signal.

Line 2:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: It allows you to create custom reports that analyze your cost and usage data.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 3:
- Concepts: Cost Control Operational Context
- Services: Amazon RDS
- Key Insights: And so with this, you get dashboards, and diagrams, and so on.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 4:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: And so you can analyze your data at a high level, for example, total cost and usage across all accounts, but you can also go down to get it monthly, hourly, or at the resource level granularity.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 5:
- Concepts: Commitment Strategy, Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Explorer
- Key Insights: And then thanks to Cost Explorer, you can do some cost savings because it allows you to choose an optimal savings plan to lower the prices on your bill.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 6:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: You can forecast usage as well up to 18 months based on previous usage, which can be helpful for cost planning.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 7:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Explorer
- Key Insights: So if we look at Cost Explorer, here's an example.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 8:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: We get monthly cost by AWS service.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 9:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: In this example, we can see, for example, that some instances based on instance type can be more expensive than others, and so we can start optimizing our costs, asking ourselves the question, "Are these instances correctly used?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 10:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Are they maximally used?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 11:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Are they the right size?" These kind of things.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 12:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Then we can get also hourly and resource level.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 13:
- Concepts: Service Cost Trade-offs
- Services: Amazon EC2
- Key Insights: So in this example, we get to, again, some EC2 instance resource level information, and we get the cost over time, so we can see what happens every single hour to get a better breakdown and understanding of our bill.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 14:
- Concepts: Commitment Strategy
- Services: (none explicit)
- Key Insights: This is also to find, as I said, a savings plan.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 15:
- Concepts: Commitment Strategy
- Services: (none explicit)
- Key Insights: So savings plan is an alternative to reserved instances, we have seen this.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 16:
- Concepts: Commitment Strategy, Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Explorer
- Key Insights: And so thanks to Cost Explorer, we get this little popup that will come up and it will tell us what kind of savings plan we can have based on our usage, and it will give us some recommendation, and give us some estimated monthly spend, and so on.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 17:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So this is quite handy.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 18:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Finally, we can forecast usage.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 19:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So based on previous costs that we had in the past, we can get some forecasts and some confidence of the forecast around how much we're expected to pay for our bill based on our previous usage, and that could be quite helpful.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 20:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: So these kind of use cases can come up in the exam, and this is probably the only billing service that AWS will ask you in the exam.
- Hidden/Implicit Meaning: Constraint or limitation signal; Financial governance signal.

Line 21:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So that's it, I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/235_[CCP] AWS Cost Anomaly Detection.txt

Line 1:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Anomaly Detection
- Key Insights: So here is a quick lecture on the service named AWS Cost Anomaly Detection.
- Hidden/Implicit Meaning: Waste-detection signal.

Line 2:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And the name is quite explicit this time.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 3:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So this continuously monitors your cost and usage data, and it will use machine learning to detect unusual spends.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 4:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So it's going to learn from you.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 5:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: It's going to learn your unique historical patterns, and then it will detect one-time cost spikes and/or continuous cost increases.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 6:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And you don't have to define anything, you don't have to define thresholds.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 7:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: It just knows on its own what looks a little bit weird.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 8:
- Concepts: Consumption Accountability, Optimization Governance, Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So it's going to monitor for your AWS services, your member accounts, your cost allocation tags, and your cost categories.
- Hidden/Implicit Meaning: Financial governance signal.

Line 9:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: And it will send you an anomaly detection report with the root cause analysis of what is happening in your account.
- Hidden/Implicit Meaning: Waste-detection signal.

Line 10:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: You can get notified by either using individual alerts or a daily or weekly summary that leverages SNS.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 11:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Anomaly Detection
- Key Insights: So to summarize, using machine learning, you can have a look at your cost, you can get alerted and quickly analyze the root cause, all of using the AWS cost anomaly detection service.
- Hidden/Implicit Meaning: Waste-detection signal.

Line 12:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 13:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/05_EC2 Fundamentals/031_AWS Budget Setup.txt

Line 1:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, we are going to make sure to set up a budget and an alarm for that budget for this course in order for us not to spend any money or too much money.
- Hidden/Implicit Meaning: Financial governance signal.

Line 2:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: So, therefore we need to go into the billing console.
- Hidden/Implicit Meaning: Financial governance signal.

Line 3:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: (none explicit)
- Key Insights: So, you can click on the top right of your screen and then click on Billing and Cost Management.
- Hidden/Implicit Meaning: Financial governance signal.

Line 4:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, as you can see here, I get a lot of access denied.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 5:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: This is because I'm logged in as an IAM user, Stephane, from my accounts.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 6:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: And I had administrative access, but even though I have administrative access, I cannot access my billing data.
- Hidden/Implicit Meaning: Constraint or limitation signal; Financial governance signal.

Line 7:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So to fix this, you can go into your root account.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 8:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So here, I'm in my root account as you can see.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 9:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: It just says the name of my account.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 10:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: It doesn't say IAM user.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 11:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then, you click on it and you go to Accounts.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 12:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So from Accounts, you're going to scroll down.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 13:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: And then scrolling down, you will find the IAM user and role access to billing information.
- Hidden/Implicit Meaning: Financial governance signal.

Line 14:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: As you can see right now it is deactivated.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 15:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: So, we need to just activate IAM access and this will allow IAM users to access the billing information if they are administrators.
- Hidden/Implicit Meaning: Financial governance signal.

Line 16:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: So back into my billing console now, and I refresh this page.
- Hidden/Implicit Meaning: Financial governance signal.

Line 17:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And I refresh again and it can take a bit of time.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 18:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: As you can see now, I see my data.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 19:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, except this for the forecast because there is a data unavailable exception, so insufficient amount of historical data.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 20:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: Except for this, we can see all my cost information in here.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 21:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: (none explicit)
- Key Insights: So, now let me show you what a billing page looks like for an account that I'm actually using and have some costs.
- Hidden/Implicit Meaning: Financial governance signal.

Line 22:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So as we can see, we get some information around the month-to-date's cost.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 23:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: We get the total forecasted cost for the current month and so on, and last month's total cost.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 24:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So, from this we can get a few information such as the cost breakdown by month.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 25:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So, this is when you start seeing some cost.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 26:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then we can have a look at bills.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 27:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So if you look at bills, say you have any cost for this tutorial.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 28:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: For this course, let's go into December, 2023.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 29:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So you will find at the bottom of it, charges by service.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 30:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And so you'll see the number of active services.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 31:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Right now I have 28.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 32:
- Concepts: Service Cost Trade-offs
- Services: Amazon EC2
- Key Insights: And for example, if I look at the Elastic Compute Cloud, so EC2, I see I have $43 of cost in EU Ireland.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 33:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: And it turns out that here is the breakdown of my cost.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 34:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So, there is some Amazon Elastic Compute NatGateway, which is costing me $35.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 35:
- Concepts: Service Cost Trade-offs
- Services: Amazon EBS
- Key Insights: And there is some EBS cost, there is some Elastic IP cost, and so on.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 36:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And so you can get a lot of information out of just this bill.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 37:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So, in case you see any kind of cost for your accounts, remember to go into bills, go to the month you're interested into, and then scroll down to get charged by service where you're going to get a lot of information around how every service is being used, and how you are billed for service, which will allow you to break down your bill very easily.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 38:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Next, you can go into free tier on the left hand side.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 39:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, AWs does have a free tier.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 40:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And you're going to be able to see the current usage and the forecasted usage, as well as again, what the free tier is.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 41:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then you will see whether or not you're going to pass the free tier usage.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 42:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So if you do pass it as a forecast, it goes into the red, then you are going to be billed, so make sure you turn off anything that is turned on and potentially costing you money.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 43:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, this is a very, very helpful dashboard.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 44:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: Okay, so now let's go ahead and set up a budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 45:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, on the left hand side you click on Budgets.
- Hidden/Implicit Meaning: Financial governance signal.

Line 46:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: And here you can create a budget that will alert you whenever you reach your thresholds.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Financial governance signal.

Line 47:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, let's create a budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 48:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And we're going to use a template simplified.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 49:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: And the first one is going to be a zero spend budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 50:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So as soon as we reach 1 cent, we're going to get an alert.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 51:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So this is very helpful.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 52:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, the budget name is My Zero Spend Budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 53:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Here you add your email.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 54:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, I put here stephane@example.com and then create the budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 55:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So whenever I will spend 1 cent, I will have this budget send me an email.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Financial governance signal.

Line 56:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Budgets
- Key Insights: You can also use another template for a monthly cost budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 57:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Budgets
- Key Insights: And here we're saying, "Okay, we want to have a monthly cost budget of, for example, $10." And saying, "Hey, I want to spend no more than $10 per month on this course." And then, the email recipients are going to be again, stephane@example.com.
- Hidden/Implicit Meaning: Financial governance signal.

Line 58:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: And by the way, if you follow this course closely, you should not spend any dollars as you, when things can cost you money.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 59:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: But if you're careful, you should not spend any money.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: Regardless, it's still good to set up a budget just to make sure in case you do mistakes that you don't have a big bill coming to your way.
- Hidden/Implicit Meaning: Financial governance signal.

Line 61:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So now for this $10 budget, I'm actually going to reach an email when my actual spend reaches 85% and my, when my actual spend is going to reach 100%.
- Hidden/Implicit Meaning: Financial governance signal.

Line 62:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And if my forecasted spend is expected to also reach 100%.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 63:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, very helpful.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 64:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: I can have three emails I can receive from this.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 65:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: And I'm going to create this budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 66:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So as you can see, while my zero spend budget has already been exceeded, because while I've spent some money this month, so I'm getting an email right away at this address.
- Hidden/Implicit Meaning: Financial governance signal.

Line 67:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Budgets
- Key Insights: So, with these budgets and access to the free tier on the left hand side to explore, as well as accessing your bills breakdown on the left hand side, you should be able to debug any kind of costing issue and billing issue you have on this course.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Financial governance signal.

Line 68:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And this is a skill that is going to be necessary for you when using AWS.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 69:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: All right, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 70:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 71:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/031_AWS Budget Setup.txt

Line 1:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, we are going to make sure to set up a budget and an alarm for that budget for this course in order for us not to spend any money or too much money.
- Hidden/Implicit Meaning: Financial governance signal.

Line 2:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: So, therefore we need to go into the billing console.
- Hidden/Implicit Meaning: Financial governance signal.

Line 3:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: (none explicit)
- Key Insights: So, you can click on the top right of your screen and then click on Billing and Cost Management.
- Hidden/Implicit Meaning: Financial governance signal.

Line 4:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, as you can see here, I get a lot of access denied.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 5:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: This is because I'm logged in as an IAM user, Stephane, from my accounts.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 6:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: And I had administrative access, but even though I have administrative access, I cannot access my billing data.
- Hidden/Implicit Meaning: Constraint or limitation signal; Financial governance signal.

Line 7:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So to fix this, you can go into your root account.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 8:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So here, I'm in my root account as you can see.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 9:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: It just says the name of my account.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 10:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: It doesn't say IAM user.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 11:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then, you click on it and you go to Accounts.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 12:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So from Accounts, you're going to scroll down.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 13:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: And then scrolling down, you will find the IAM user and role access to billing information.
- Hidden/Implicit Meaning: Financial governance signal.

Line 14:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: As you can see right now it is deactivated.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 15:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: So, we need to just activate IAM access and this will allow IAM users to access the billing information if they are administrators.
- Hidden/Implicit Meaning: Financial governance signal.

Line 16:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: So back into my billing console now, and I refresh this page.
- Hidden/Implicit Meaning: Financial governance signal.

Line 17:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And I refresh again and it can take a bit of time.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 18:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: As you can see now, I see my data.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 19:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, except this for the forecast because there is a data unavailable exception, so insufficient amount of historical data.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 20:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: Except for this, we can see all my cost information in here.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 21:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: (none explicit)
- Key Insights: So, now let me show you what a billing page looks like for an account that I'm actually using and have some costs.
- Hidden/Implicit Meaning: Financial governance signal.

Line 22:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So as we can see, we get some information around the month-to-date's cost.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 23:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: We get the total forecasted cost for the current month and so on, and last month's total cost.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 24:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So, from this we can get a few information such as the cost breakdown by month.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 25:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So, this is when you start seeing some cost.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 26:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then we can have a look at bills.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 27:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So if you look at bills, say you have any cost for this tutorial.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 28:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: For this course, let's go into December, 2023.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 29:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So you will find at the bottom of it, charges by service.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 30:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And so you'll see the number of active services.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 31:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Right now I have 28.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 32:
- Concepts: Service Cost Trade-offs
- Services: Amazon EC2
- Key Insights: And for example, if I look at the Elastic Compute Cloud, so EC2, I see I have $43 of cost in EU Ireland.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 33:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: And it turns out that here is the breakdown of my cost.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 34:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So, there is some Amazon Elastic Compute NatGateway, which is costing me $35.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 35:
- Concepts: Service Cost Trade-offs
- Services: Amazon EBS
- Key Insights: And there is some EBS cost, there is some Elastic IP cost, and so on.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 36:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And so you can get a lot of information out of just this bill.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 37:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So, in case you see any kind of cost for your accounts, remember to go into bills, go to the month you're interested into, and then scroll down to get charged by service where you're going to get a lot of information around how every service is being used, and how you are billed for service, which will allow you to break down your bill very easily.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 38:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Next, you can go into free tier on the left hand side.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 39:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, AWs does have a free tier.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 40:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And you're going to be able to see the current usage and the forecasted usage, as well as again, what the free tier is.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 41:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then you will see whether or not you're going to pass the free tier usage.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 42:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So if you do pass it as a forecast, it goes into the red, then you are going to be billed, so make sure you turn off anything that is turned on and potentially costing you money.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 43:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, this is a very, very helpful dashboard.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 44:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: Okay, so now let's go ahead and set up a budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 45:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, on the left hand side you click on Budgets.
- Hidden/Implicit Meaning: Financial governance signal.

Line 46:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: And here you can create a budget that will alert you whenever you reach your thresholds.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Financial governance signal.

Line 47:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, let's create a budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 48:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And we're going to use a template simplified.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 49:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: And the first one is going to be a zero spend budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 50:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So as soon as we reach 1 cent, we're going to get an alert.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 51:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So this is very helpful.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 52:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, the budget name is My Zero Spend Budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 53:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Here you add your email.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 54:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So, I put here stephane@example.com and then create the budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 55:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So whenever I will spend 1 cent, I will have this budget send me an email.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Financial governance signal.

Line 56:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Budgets
- Key Insights: You can also use another template for a monthly cost budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 57:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Budgets
- Key Insights: And here we're saying, "Okay, we want to have a monthly cost budget of, for example, $10." And saying, "Hey, I want to spend no more than $10 per month on this course." And then, the email recipients are going to be again, stephane@example.com.
- Hidden/Implicit Meaning: Financial governance signal.

Line 58:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: And by the way, if you follow this course closely, you should not spend any dollars as you, when things can cost you money.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 59:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: But if you're careful, you should not spend any money.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: Regardless, it's still good to set up a budget just to make sure in case you do mistakes that you don't have a big bill coming to your way.
- Hidden/Implicit Meaning: Financial governance signal.

Line 61:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So now for this $10 budget, I'm actually going to reach an email when my actual spend reaches 85% and my, when my actual spend is going to reach 100%.
- Hidden/Implicit Meaning: Financial governance signal.

Line 62:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And if my forecasted spend is expected to also reach 100%.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 63:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, very helpful.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 64:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: I can have three emails I can receive from this.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 65:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: And I'm going to create this budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 66:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So as you can see, while my zero spend budget has already been exceeded, because while I've spent some money this month, so I'm getting an email right away at this address.
- Hidden/Implicit Meaning: Financial governance signal.

Line 67:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Budgets
- Key Insights: So, with these budgets and access to the free tier on the left hand side to explore, as well as accessing your bills breakdown on the left hand side, you should be able to debug any kind of costing issue and billing issue you have on this course.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Financial governance signal.

Line 68:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And this is a skill that is going to be necessary for you when using AWS.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 69:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: All right, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 70:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 71:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/30_Other Services/377_AWS Cost Explorer.txt

Line 1:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Explorer
- Key Insights: So a small service that can come up in the exam is a billing service called Cost Explorer, which is used to visualize, understand, and manage your AWS cost and usage over time.
- Hidden/Implicit Meaning: Financial governance signal.

Line 2:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: It allows you to create custom reports that analyze your cost and usage data.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 3:
- Concepts: Cost Control Operational Context
- Services: Amazon RDS
- Key Insights: And so with this, you get dashboards, and diagrams, and so on.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 4:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: And so you can analyze your data at a high level, for example, total cost and usage across all accounts, but you can also go down to get it monthly, hourly, or at the resource level granularity.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 5:
- Concepts: Commitment Strategy, Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Explorer
- Key Insights: And then thanks to Cost Explorer, you can do some cost savings because it allows you to choose an optimal savings plan to lower the prices on your bill.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 6:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: You can forecast usage as well up to 18 months based on previous usage, which can be helpful for cost planning.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 7:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Explorer
- Key Insights: So if we look at Cost Explorer, here's an example.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 8:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: We get monthly cost by AWS service.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 9:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: In this example, we can see, for example, that some instances based on instance type can be more expensive than others, and so we can start optimizing our costs, asking ourselves the question, "Are these instances correctly used?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 10:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Are they maximally used?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 11:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Are they the right size?" These kind of things.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 12:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Then we can get also hourly and resource level.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 13:
- Concepts: Service Cost Trade-offs
- Services: Amazon EC2
- Key Insights: So in this example, we get to, again, some EC2 instance resource level information, and we get the cost over time, so we can see what happens every single hour to get a better breakdown and understanding of our bill.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 14:
- Concepts: Commitment Strategy
- Services: (none explicit)
- Key Insights: This is also to find, as I said, a savings plan.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 15:
- Concepts: Commitment Strategy
- Services: (none explicit)
- Key Insights: So savings plan is an alternative to reserved instances, we have seen this.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 16:
- Concepts: Commitment Strategy, Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Explorer
- Key Insights: And so thanks to Cost Explorer, we get this little popup that will come up and it will tell us what kind of savings plan we can have based on our usage, and it will give us some recommendation, and give us some estimated monthly spend, and so on.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 17:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So this is quite handy.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 18:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Finally, we can forecast usage.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 19:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So based on previous costs that we had in the past, we can get some forecasts and some confidence of the forecast around how much we're expected to pay for our bill based on our previous usage, and that could be quite helpful.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 20:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: So these kind of use cases can come up in the exam, and this is probably the only billing service that AWS will ask you in the exam.
- Hidden/Implicit Meaning: Constraint or limitation signal; Financial governance signal.

Line 21:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So that's it, I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/30_Other Services/378_AWS Cost Anomaly Detection.txt

Line 1:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Anomaly Detection
- Key Insights: So here is a quick lecture on the service named AWS Cost Anomaly Detection.
- Hidden/Implicit Meaning: Waste-detection signal.

Line 2:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And the name is quite explicit this time.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 3:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So this continuously monitors your cost and usage data, and it will use machine learning to detect unusual spends.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 4:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So it's going to learn from you.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 5:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: It's going to learn your unique historical patterns, and then it will detect one-time cost spikes and/or continuous cost increases.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 6:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And you don't have to define anything, you don't have to define thresholds.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 7:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: It just knows on its own what looks a little bit weird.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 8:
- Concepts: Consumption Accountability, Optimization Governance, Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So it's going to monitor for your AWS services, your member accounts, your cost allocation tags, and your cost categories.
- Hidden/Implicit Meaning: Financial governance signal.

Line 9:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: And it will send you an anomaly detection report with the root cause analysis of what is happening in your account.
- Hidden/Implicit Meaning: Waste-detection signal.

Line 10:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: You can get notified by either using individual alerts or a daily or weekly summary that leverages SNS.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 11:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Anomaly Detection
- Key Insights: So to summarize, using machine learning, you can have a look at your cost, you can get alerted and quickly analyze the root cause, all of using the AWS cost anomaly detection service.
- Hidden/Implicit Meaning: Waste-detection signal.

Line 12:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 13:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

### File: outputs/aws-solutions-architect-professional/13_Cost Control/132_S3 Cost Savings.txt

Line 1:
- Concepts: Service Cost Trade-offs
- Services: Amazon S3
- Key Insights: Okay, so now let's talk about cost savings in S3.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 2:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: And for this, we'll get started with S3 storage classes.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 3:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, in the next lecture, I've included a full lecture detailing exactly what each storage class does, in case you don't know, but in case you know, I wanna make this lecture very short for you in order not to bore you.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 4:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: So, the first class is S3 Standard-General Purpose.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 5:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: Then we have S3 Standard-Infrequent Access.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 6:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: This is when our objects are going to be infrequently accessed, and so we want to have some cost saving by having them being cheaper, but we're going to pay a little bit more every time we're trying to access these objects.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 7:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: Then we're getting S3 One Zone-Infrequent Access.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 8:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: This is where objects are gonna be cheaper as well to store in S3, but this time if you lose a full AZ, then you will lose access to your objects.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 9:
- Concepts: Cost Control Operational Context
- Services: Amazon ECR
- Key Insights: So you need to make sure that these objects are recoverable or can be recreated.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 10:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: For example, thumbnails from S3 images can be a very good use case for One Zone IA.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 11:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: Intelligent Tiering, which is going to be smart enough to move objects in between the tiers in order to give you the maximum amount of cost saving.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 12:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And you have to pay for that monitoring.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 13:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So you have to pay for each object that is being monitored.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 14:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: But all in all together, you have less management on your part and you should save some money.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Cost Control Operational Context
- Services: Amazon Glacier, Amazon S3
- Key Insights: Then we have Amazon S3 Glacier Instant Retrieval, which is a Glacier tier, which allows you to retrieve your files very, very quickly.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 16:
- Concepts: Cost Control Operational Context
- Services: Amazon Lex
- Key Insights: We have Flexible Retrieval where you have more flexibility into how you want to retrieve your file.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 17:
- Concepts: Service Cost Trade-offs
- Services: AWS Config, Amazon S3
- Key Insights: And then Deep Archive for files are going to be giving you the most cost saving, but that will take a long time to be retrieved and to move between all these storage classes, you can use either manual actions or you can define an S3 Lifecycle configuration that will automatically transition your objects to a different tier after a certain amount of time.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 18:
- Concepts: Service Cost Trade-offs
- Services: Amazon S3
- Key Insights: So the first cost saving is going to be using S3 Lifecycle Rules.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 19:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Then we can automatically transition objects between tiers or even delete objects, and that will obviously save us some money.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 20:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: In terms of object storage, if we're able to compress our objects before sending it into S3, then we're obviously going to save in storage space and therefore we'll pay less money.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 21:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: Finally, there's a feature I haven't mentioned yet, but it is good to mention it right now, which is S3 Requester Pays.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 22:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: With Requester Pays, you're making sure that the person requesting for the object is going to have to pay and not you.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 23:
- Concepts: Consumption Accountability, Service Cost Trade-offs
- Services: Amazon S3
- Key Insights: So in general, bucket owners pay for all Amazon S3 storage, their storage, and data transfer costs associated with their buckets.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 24:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: But when you enable Requester Pays, only the requester will pay for the cost of the request and the data download from the bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So you still have the cost of storing the data in your bucket, but all the transfer cost to download the data from the bucket is going to be at the charge of the requester.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 26:
- Concepts: Service Cost Trade-offs
- Services: Amazon S3
- Key Insights: So if you have an object that's, for example, a large data set, and you need to share it with like thousands of accounts, and obviously, you don't want to bear all the network costs for this, you can enable S3 Requester Pays, and then each account that will request the data from your bucket will have to pay the data transfer and not you.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 27:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: And for this feature to work, you need to make sure you set up an S3 bucket policy that obligates S3 Requester Pays to work.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 28:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And so the users have to be authenticated with IM before they are able to request a data from your bucket.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 29:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: But now there's a trick, right?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 30:
- Concepts: Consumption Accountability
- Services: Amazon S3
- Key Insights: Because if you allow your users to access your S3 bucket by using an assumed cross account IAM role, then the owner of the account of that role is going to be the one paying for the request.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 31:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: So if you create a role in your account and you give other accounts access to that role, and then that role queries your S3 buckets, then you're going to pay for the request because the request comes from within your accounts.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 32:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So if you want to make sure that other accounts are paying for the request, you do not need to use IAM role.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 33:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: You need to create an S3 bucket policy and make sure other users are authenticated using an IAM role or IAM user that corresponds to their accounts.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 34:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 35:
- Concepts: Service Cost Trade-offs
- Services: Amazon S3
- Key Insights: That's all you need know about S3 cost savings.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 36:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

### File: outputs/aws-solutions-architect-professional/13_Cost Control/133_S3 Storage Classes - Reminder.txt

Line 1:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's discuss different storage classes we have for Amazon S three.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 2:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: The first one is Amazon S three Standard-General Purpose.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 3:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Then we have Amazon S three-Infrequent Access.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 4:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Then we have Amazon S three One Zone-Infrequent Access.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 5:
- Concepts: Cost Control Operational Context
- Services: Amazon Glacier, Amazon Lex
- Key Insights: Then we have Glacier Instant Retrieval, Glacier Flexible Retrieval, Glacier Deep Archive, and then finally, the Amazon S three Intelligent Tiering.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 6:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So we'll learn about all these classes in depth in this lecture, but you have to know them for the exam.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 7:
- Concepts: Cost Control Operational Context
- Services: AWS Config, Amazon S3
- Key Insights: Then when you create an object in Amazon S three, you can choose its class, you can also modify its storage class manually, or as we'll see as well, you can use Amazon S3 Lifecycle configurations to move objects automatically between all these storage classes.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 8:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So first, before we go into the classes, let's define the concept of durability and availability.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 9:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So durability represents how many times an object is going to be lost by Amazon S three.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 10:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And so Amazon S three has a very high durability.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 11:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: It's called 11 nines.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 12:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So nine nine point and then nine times nine percent.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 13:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And that means that on average, if you store 10 million objects on Amazon S three, you can expect to lose a single object once every 10,000 years.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 14:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So it's quite durable.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 15:
- Concepts: Cost Control Operational Context
- Services: AWS SAM
- Key Insights: And the durability is the same for all storage classes in Amazon S three.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 16:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Availability represents how readily a service is.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 17:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And so this depends on the storage class.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 18:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: For example, S three Standard has a 99.99% availability.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 19:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: That means that about 53 minutes a year, the service is not going to be available.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 20:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: That means that you'll get some errors when you deal with the service.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 21:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So you need to take that into account when you develop your applications.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 22:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 23:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: So S3 standard has 99.99 availability.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 24:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: It's going to be used for frequently accessed data.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 25:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: This is the kind of storage you use by default, and it has low latency and high throughputs.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 26:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: It can sustain two concurrent facility failures on the side of AWS and the use cases for it is going to be big data analytics, mobile and gaming application, as well as content distribution.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 27:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Next, we have S three infrequent access.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 28:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So this is data that is going to be as the name indicates, less frequently accessed, but requires rapid access when needed.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 29:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: It's going to be lower cost than S three Standard, but you will have a cost on retrieval.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 30:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So the S three Standard-IA is 99.9% availability, so a bit less available.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 31:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And the use case for it is going to be Disaster Recovery and backups.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 32:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And Amazon S three One Zone-Infrequent access, One Zone-IA.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 33:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: ESC has high durability, okay, within a single AZ only, and the data is going to be lost if the AZ is somewhat destroyed.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: As well as durability, it's even lower.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 35:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So it's 99.5% availability.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 36:
- Concepts: Cost Control Operational Context
- Services: Amazon ECR
- Key Insights: And so the use cases of S three One Zone-IA is to store secondary copy of backups of maybe on-premises data, or data you can recreate.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 37:
- Concepts: Cost Control Operational Context
- Services: Amazon Glacier
- Key Insights: Next we have the Glacier Storage Classes.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 38:
- Concepts: Service Cost Trade-offs
- Services: Amazon Glacier
- Key Insights: So Glacier is, as the name it gets very cold, so it's low cost object storage meant for archiving and backup.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 39:
- Concepts: Commitment Strategy, Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: And the pricing is that you're going to pay for the storage plus pay for a retrieval cost.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 40:
- Concepts: Cost Control Operational Context
- Services: Amazon Glacier
- Key Insights: In your three classes of storage within Glacier, you have the Amazon S three Glacier Instant Retrieval.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 41:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And this gives you milliseconds retrieval which is great for example, for data that's accessed once a quarter, and the minimum store duration is 90 days.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 42:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So this is backup, but you need to access it within milliseconds.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 43:
- Concepts: Cost Control Operational Context
- Services: Amazon Glacier, Amazon Lex
- Key Insights: Then we have the Glacier Flexible Retrieval.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 44:
- Concepts: Cost Control Operational Context
- Services: Amazon Glacier
- Key Insights: It used to be called Amazon S three Glacier but then they renamed things as they added more tier.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 45:
- Concepts: Cost Control Operational Context
- Services: Amazon Glacier, Amazon Lex
- Key Insights: So the Amazon Glacier Flexible Retrieval has three flexibility.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 46:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So you have expedited where you get the data back between one and five minutes.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 47:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: You have standard to get the data back between three to five hours, or bulk, which is free, where you get data back between five to 12 hours.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 48:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And the minimum storage duration as well is 90 days.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 49:
- Concepts: Cost Control Operational Context
- Services: Amazon Lex
- Key Insights: So here, instance means you retrieve data instantly and flexible means that you're willing to wait up to for example, 12 hours to retrieve your data.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 50:
- Concepts: Cost Control Operational Context
- Services: Amazon Glacier
- Key Insights: And then we have Glacier Deep Archive which is meant for long term storage.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 51:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So we have two tiers of retrieval as well.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 52:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: We have Standard of 12 hours and Bulk of 48 hours.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 53:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So you may be ready to wait a lot of time to retrieve data, but it's going to give you the lowest cost, and as well, the minimum storage duration is 180 days.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 54:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So as you know, that's a lot of storage classes and there's one last called S three Intelligent- Tiering, which is going to allow you to move objects between excess tiers based on usage patterns.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 55:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And for this, you're going to incur a small monthly monitoring fee, and auto tiering fee.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 56:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And there are no retrieval charges in S three Intelligent- Tiering.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 57:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So there is the frequent access tier that's automatic the default tier.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 58:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Then we have the Infrequent Access tier for objects not accessed for example, for 30 days.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 59:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Then you have the Archive Instant Access tier, automatic as well for objects not accessed over 90 days.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 60:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then the Archive Access tier that's optional.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 61:
- Concepts: Cost Control Operational Context
- Services: AWS Config
- Key Insights: And you can configure it from 90 days to 700 plus days.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 62:
- Concepts: Cost Control Operational Context
- Services: AWS Config
- Key Insights: And then you have the Deep Archive Access tier also optional, that you can configure for objects that haven't been accessed between 180 days to 700 plus days.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 63:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 64:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So S three Intelligent-Tiering is really to allow you to just sit back and relax while S three moves objects for you.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 65:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So if you compare all the storage classes you don't need to remember these numbers, but it's just for you to make sense of what they are.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 66:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So you get durability of 11 nine's everywhere.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 67:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Then as availability goes down, the less zones you have, of course.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 68:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: It just shows you like for example the minimum storage duration chart and so on.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 69:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So take some time to look at this diagram on your own.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 70:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: You should understand it, but you should not remember it for sure.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 71:
- Concepts: Commitment Strategy, Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So if we look at some pricing, for example in the us-east-one, so this is the kind of pricing you would have for all the storage classes.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 72:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And again, you're not supposed to remember everything.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 73:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: But it's good for you to have a look at it on your own time, just to make sure you understand.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 74:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Because if you understand what the classes name are, then you should be able to make sense of these classes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 75:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 76:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So that's it for the lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 77:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 78:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

### File: outputs/aws-solutions-architect-professional/13_Cost Control/134_AWS Budgets & Cost Explorer.txt

Line 1:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: Okay, so there are more tools to manage your costs in AWS.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 2:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Budgets
- Key Insights: The first one is AWS Budgets, which allows you create a budget, and then send alarms, when the costs are exceeding your budgets.
- Hidden/Implicit Meaning: Financial governance signal.

Line 3:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So you have four kinds of budget you can define in the Budget service.
- Hidden/Implicit Meaning: Financial governance signal.

Line 4:
- Concepts: Commitment Strategy, Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: You have usage, cost, reservation, and savings plan.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 5:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: And so you define what you want for which type of budget, and then you will receive an alarm.
- Hidden/Implicit Meaning: Financial governance signal.

Line 6:
- Concepts: Commitment Strategy, Spend Visibility
- Services: AWS Budgets
- Key Insights: So in the case of reserved instances, this budget, you can track the utilization of these ROIs.
- Hidden/Implicit Meaning: Financial governance signal; Commitment and optimization signal.

Line 7:
- Concepts: Spend Visibility
- Services: AWS Budgets, Amazon EC2, Amazon ElastiCache, Amazon RDS, Amazon Redshift
- Key Insights: It supports EC2, ElastiCache, RDS, and Redshift And you can define up to five SNS notifications per budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 8:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: Now these budgets are very granular.
- Hidden/Implicit Meaning: Financial governance signal.

Line 9:
- Concepts: Consumption Accountability, Optimization Governance, Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Explorer, AWS SAM
- Key Insights: You can filter by service, linked account, tag, purchase option, instance type, region, region availability zone, API operation, et cetera, et cetera, which are the same options as Cost Explorer.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 10:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: The first two budgets are free, but then you're going to pay two cents per day per budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 11:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: We also have Budget Actions.
- Hidden/Implicit Meaning: Financial governance signal.

Line 12:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Budgets
- Key Insights: So the idea is that you want the budget service to run an action on your behalf, whenever a budget exceeds a certain cost, or usage threshold.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Financial governance signal.

Line 13:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: We have three action types: We can, for example, apply a specific IAM policy to a user, a group, or an IAM role.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 14:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Thus, for example, restricting users, groups, or roles, from doing anything.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 15:
- Concepts: Cost Control Operational Context
- Services: Amazon EC2, Amazon RDS
- Key Insights: We can also apply service control policies directly into an OU, again, to restrict what an account can do or you can automatically stop EC2, or RDS instances.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 16:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: These actions can be executed automatically, or they can require a workflow approval process, to make sure that some human says "yes," before these actions are implemented.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 17:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: The goal of budget actions is to reduce the unintentional overspending in your accounts.
- Hidden/Implicit Meaning: Financial governance signal.

Line 18:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So if we like an example of an OU, with management account, and a dev OU of member accounts, then we can create a budget, and then in case the budget reaches a specific threshold, then we can automatically apply an SCP onto the development OU, to make sure to restrict the member accounts.
- Hidden/Implicit Meaning: Financial governance signal.

Line 19:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So in this example, we would make the budget tailored for the dev OU itself.
- Hidden/Implicit Meaning: Financial governance signal.

Line 20:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So we have two types of architecture when managing budgets in AWS: You have the centralized budget management, and decentralized budget managements.
- Hidden/Implicit Meaning: Financial governance signal.

Line 21:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So in the centralized management of your budget, here's an example, where we have the management accounts, and then an OU with a member account, and a restrictive OU.
- Hidden/Implicit Meaning: Financial governance signal.

Line 22:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So we create a budget in the management accounts, for every member accounts that we want to monitor.
- Hidden/Implicit Meaning: Financial governance signal.

Line 23:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So if we have 10 member accounts, we create 10 budgets in the management accounts, but we apply a filter on each budget, and the filter can be an account filter, so that the budget is tailored to one specific account.
- Hidden/Implicit Meaning: Financial governance signal.

Line 24:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: Therefore, effectively, by creating a budget into the management account, we are effectively, but not actually, creating a budget for the member account.
- Hidden/Implicit Meaning: Financial governance signal.

Line 25:
- Concepts: Spend Visibility
- Services: AWS Budgets, AWS Lambda
- Key Insights: Now, when the budget exceeds a threshold, then we can send a notification into SNS, which can trigger a Lambda function, and that Lambda function can have the API call embedded into its code, to move the account that has breached its threshold, into a more restrictive OU, where an actual SCP has already been applied.
- Hidden/Implicit Meaning: Financial governance signal.

Line 26:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So effectively, we move that member account from OU to a restrictive OU, and there we don't allow it to create new resources, and so on.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 27:
- Concepts: Cost Control Operational Context
- Services: AWS Lambda
- Key Insights: On top of it, to be notified of this move we can also make the Lambda function send an email to an Amazon SNS topic, through an Amazon SNS topic, to our administrators, for example.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 28:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: So that is centralized budget management, because here, we manage all the budgets of our organization, within the management accounts itself.
- Hidden/Implicit Meaning: Financial governance signal.

Line 29:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: We also have decentralized the budget managements.
- Hidden/Implicit Meaning: Financial governance signal.

Line 30:
- Concepts: Spend Visibility
- Services: AWS Budgets, AWS CloudFormation
- Key Insights: So in this case, while the budgets are going to be managed directly into the member accounts, but to simplify distributing these budgets, and creating them in each member account, we can use a CloudFormation stack sets, to deploy these budgets.
- Hidden/Implicit Meaning: Financial governance signal.

Line 31:
- Concepts: Spend Visibility
- Services: AWS Budgets, AWS SAM
- Key Insights: So we have a budget in each member account, and that budget can have the same thing.
- Hidden/Implicit Meaning: Financial governance signal.

Line 32:
- Concepts: Spend Visibility
- Services: AWS Budgets
- Key Insights: For example, send messages into an SNS topic, and then trigger an email, in case we are about to reach a specific threshold for budget.
- Hidden/Implicit Meaning: Financial governance signal.

Line 33:
- Concepts: Spend Visibility
- Services: AWS Budgets, AWS Lambda, Amazon EC2
- Key Insights: Or if it's a critical notification, for example, budget has been exceeded, then again, send a notification, and trigger a Lambda function that would, for example, stop all EC2 instances.
- Hidden/Implicit Meaning: Financial governance signal.

Line 34:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And that's just one example.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 35:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Explorer
- Key Insights: Talking about Cost Explorer, so it's a way for you to visualize, understand, and manage your AWS cost and usage over time, and you create custom reports that will analyze your costs, and usage data.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 36:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: You're Going to analyze your data at a high level.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 37:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So you're going to get overview into your total cost, as well as usage across all accounts.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 38:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: But you can go deeper, and you can analyze it monthly, hourly, and at the resource level.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 39:
- Concepts: Commitment Strategy, Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Explorer
- Key Insights: Cost Explorer is a great service to allow you to \choose an optimal savings plan.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 40:
- Concepts: Commitment Strategy
- Services: (none explicit)
- Key Insights: As we saw before, savings plans are a way to commit to a certain dollar amount over time, and lower your prices on your bill.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 41:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Cost Explorer
- Key Insights: Now with Cost Explorer, there's also a nifty feature, in which you can forecast usage of your cost, up to 12 months in advance, based on previous usage.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 42:
- Concepts: Service Cost Trade-offs, Spend Visibility
- Services: AWS Budgets, AWS Cost Explorer, AWS SAM
- Key Insights: So if we look at Cost Explorer, this is the interface, and we get access to a lot of filters, as I said, the same filters for Cost Explorer and for Budgets, as well as some detailed graphs around how your costs are spread out over time, and so on.
- Hidden/Implicit Meaning: Financial governance signal.

Line 43:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 44:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

### File: outputs/aws-solutions-architect-professional/13_Cost Control/135_AWS Compute Optimizer.txt

Line 1:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: Now let's talk about AWS Compute Optimizer, which is used to reduce cost and improve performance by recommending optimal AWS resources for your workload.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 2:
- Concepts: Cost Control Operational Context
- Services: Amazon EC2
- Key Insights: So this is going to do an analysis of your EC2 instances, your autoscaling groups, and tell you, for example, which one are over provisioned or under provisioned.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 3:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then you can build your optimizations.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 4:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: And then you can have a better cost perspective, and also a better performance.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 5:
- Concepts: Cost Control Operational Context
- Services: AWS Config, Amazon CloudWatch
- Key Insights: This way it does it is that it will use machine learning under the hood to analyze your resource configuration, as well as track their CloudWatch metrics to understand their utilization.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 6:
- Concepts: Service Cost Trade-offs
- Services: AWS Lambda, Amazon EBS, Amazon EC2
- Key Insights: So supported resources by Compute Optimizer are EC2 instances, auto scanning groups, EBS volumes, Lambda functions.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 7:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: And this allows you to lower your cost by up to 25% without doing much.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 8:
- Concepts: Service Cost Trade-offs
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: And the recommendations themselves can be exported into Amazon S3 In order to get the most out of Compute Optimizer, and if you want to analyze also the memory utilization and so therefore get recommendations on RAM, then you need to install the CloudWatch Agents.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 9:
- Concepts: Cost Control Operational Context
- Services: Amazon EC2
- Key Insights: So therefore, you have your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 10:
- Concepts: Cost Control Operational Context
- Services: Amazon CloudWatch
- Key Insights: And they're running the CloudWatch agents.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 11:
- Concepts: Cost Control Operational Context
- Services: Amazon CloudWatch
- Key Insights: And then they will send their metrics, including the Ram, to CloudWatch service itself.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 12:
- Concepts: Service Cost Trade-offs
- Services: Amazon CloudWatch
- Key Insights: And then Compute Optimizer can analyze these metrics out of CloudWatch and make recommendations as well for the Compute Optimizer on the RAM, on the memory.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 13:
- Concepts: Cost Control Operational Context
- Services: Amazon CloudWatch
- Key Insights: But just so you know, this CloudWatch Agent is not needed if you analyze the CPU or the NetworkIn/out or the DiskReadOps and the DiskWriteOps.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 14:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Commitment Strategy
- Consumption Accountability
- Cost Control Operational Context
- Optimization Governance
- Service Cost Trade-offs
- Spend Visibility

### 2. Services List
- AWS Budgets
- AWS CloudFormation
- AWS Config
- AWS Cost Anomaly Detection
- AWS Cost Explorer
- AWS Lambda
- AWS SAM
- Amazon CloudWatch
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon ElastiCache
- Amazon Glacier
- Amazon Lex
- Amazon RDS
- Amazon Redshift
- Amazon S3

### 3. Features List
- allocation
- anomaly
- billing
- budget
- cost explorer
- pricing
- reserved
- savings plan

### 4. Use Cases
- 018_Course Cost.txt:8: Some services, for example, Amazon Queue, have free trials, but again, with free trials, it's dangerous because you don't forget to turn it off and then you have charges.
- 019_AWS Budget Setup.txt:25: So, this is when you start seeing some cost.
- 019_AWS Budget Setup.txt:32: And for example, if I look at the Elastic Compute Cloud, so EC2, I see I have $43 of cost in EU Ireland.
- 019_AWS Budget Setup.txt:46: And here you can create a budget that will alert you whenever you reach your thresholds.
- 019_AWS Budget Setup.txt:55: So whenever I will spend 1 cent, I will have this budget send me an email.
- 019_AWS Budget Setup.txt:57: And here we're saying, "Okay, we want to have a monthly cost budget of, for example, $10." And saying, "Hey, I want to spend no more than $10 per month on this course." And then, the email recipients are going to be again, stephane@example.com.
- 019_AWS Budget Setup.txt:58: And by the way, if you follow this course closely, you should not spend any dollars as you, when things can cost you money.
- 019_AWS Budget Setup.txt:61: So now for this $10 budget, I'm actually going to reach an email when my actual spend reaches 85% and my, when my actual spend is going to reach 100%.
- 019_AWS Budget Setup.txt:68: And this is a skill that is going to be necessary for you when using AWS.
- 234_[SAA_SOA] AWS Cost Explorer.txt:4: And so you can analyze your data at a high level, for example, total cost and usage across all accounts, but you can also go down to get it monthly, hourly, or at the resource level granularity.
- 234_[SAA_SOA] AWS Cost Explorer.txt:9: In this example, we can see, for example, that some instances based on instance type can be more expensive than others, and so we can start optimizing our costs, asking ourselves the question, "Are these instances correctly used?
- 234_[SAA_SOA] AWS Cost Explorer.txt:20: So these kind of use cases can come up in the exam, and this is probably the only billing service that AWS will ask you in the exam.
- 031_AWS Budget Setup.txt:25: So, this is when you start seeing some cost.
- 031_AWS Budget Setup.txt:32: And for example, if I look at the Elastic Compute Cloud, so EC2, I see I have $43 of cost in EU Ireland.
- 031_AWS Budget Setup.txt:46: And here you can create a budget that will alert you whenever you reach your thresholds.
- 031_AWS Budget Setup.txt:55: So whenever I will spend 1 cent, I will have this budget send me an email.
- 031_AWS Budget Setup.txt:57: And here we're saying, "Okay, we want to have a monthly cost budget of, for example, $10." And saying, "Hey, I want to spend no more than $10 per month on this course." And then, the email recipients are going to be again, stephane@example.com.
- 031_AWS Budget Setup.txt:58: And by the way, if you follow this course closely, you should not spend any dollars as you, when things can cost you money.
- 031_AWS Budget Setup.txt:61: So now for this $10 budget, I'm actually going to reach an email when my actual spend reaches 85% and my, when my actual spend is going to reach 100%.
- 031_AWS Budget Setup.txt:68: And this is a skill that is going to be necessary for you when using AWS.
- 377_AWS Cost Explorer.txt:4: And so you can analyze your data at a high level, for example, total cost and usage across all accounts, but you can also go down to get it monthly, hourly, or at the resource level granularity.
- 377_AWS Cost Explorer.txt:9: In this example, we can see, for example, that some instances based on instance type can be more expensive than others, and so we can start optimizing our costs, asking ourselves the question, "Are these instances correctly used?
- 377_AWS Cost Explorer.txt:20: So these kind of use cases can come up in the exam, and this is probably the only billing service that AWS will ask you in the exam.
- 132_S3 Cost Savings.txt:6: This is when our objects are going to be infrequently accessed, and so we want to have some cost saving by having them being cheaper, but we're going to pay a little bit more every time we're trying to access these objects.
- 132_S3 Cost Savings.txt:10: For example, thumbnails from S3 images can be a very good use case for One Zone IA.
- 132_S3 Cost Savings.txt:24: But when you enable Requester Pays, only the requester will pay for the cost of the request and the data download from the bucket.
- 132_S3 Cost Savings.txt:26: So if you have an object that's, for example, a large data set, and you need to share it with like thousands of accounts, and obviously, you don't want to bear all the network costs for this, you can enable S3 Requester Pays, and then each account that will request the data from your bucket will have to pay the data transfer and not you.
- 133_S3 Storage Classes - Reminder.txt:7: Then when you create an object in Amazon S three, you can choose its class, you can also modify its storage class manually, or as we'll see as well, you can use Amazon S3 Lifecycle configurations to move objects automatically between all these storage classes.
- 133_S3 Storage Classes - Reminder.txt:18: For example, S three Standard has a 99.99% availability.
- 133_S3 Storage Classes - Reminder.txt:20: That means that you'll get some errors when you deal with the service.
- 133_S3 Storage Classes - Reminder.txt:21: So you need to take that into account when you develop your applications.
- 133_S3 Storage Classes - Reminder.txt:26: It can sustain two concurrent facility failures on the side of AWS and the use cases for it is going to be big data analytics, mobile and gaming application, as well as content distribution.
- 133_S3 Storage Classes - Reminder.txt:28: So this is data that is going to be as the name indicates, less frequently accessed, but requires rapid access when needed.
- 133_S3 Storage Classes - Reminder.txt:31: And the use case for it is going to be Disaster Recovery and backups.
- 133_S3 Storage Classes - Reminder.txt:36: And so the use cases of S three One Zone-IA is to store secondary copy of backups of maybe on-premises data, or data you can recreate.
- 133_S3 Storage Classes - Reminder.txt:41: And this gives you milliseconds retrieval which is great for example, for data that's accessed once a quarter, and the minimum store duration is 90 days.
- 133_S3 Storage Classes - Reminder.txt:49: So here, instance means you retrieve data instantly and flexible means that you're willing to wait up to for example, 12 hours to retrieve your data.
- 133_S3 Storage Classes - Reminder.txt:54: So as you know, that's a lot of storage classes and there's one last called S three Intelligent- Tiering, which is going to allow you to move objects between excess tiers based on usage patterns.
- 133_S3 Storage Classes - Reminder.txt:58: Then we have the Infrequent Access tier for objects not accessed for example, for 30 days.
- 133_S3 Storage Classes - Reminder.txt:64: So S three Intelligent-Tiering is really to allow you to just sit back and relax while S three moves objects for you.

### 5. Constraints / Limitations
- 018_Course Cost.txt:4: But I do my best to guide you on how to limit them, and I show you what will cost you money and how to turn things off.
- 019_AWS Budget Setup.txt:6: And I had administrative access, but even though I have administrative access, I cannot access my billing data.
- 019_AWS Budget Setup.txt:58: And by the way, if you follow this course closely, you should not spend any dollars as you, when things can cost you money.
- 019_AWS Budget Setup.txt:59: But if you're careful, you should not spend any money.
- 019_AWS Budget Setup.txt:67: So, with these budgets and access to the free tier on the left hand side to explore, as well as accessing your bills breakdown on the left hand side, you should be able to debug any kind of costing issue and billing issue you have on this course.
- 234_[SAA_SOA] AWS Cost Explorer.txt:20: So these kind of use cases can come up in the exam, and this is probably the only billing service that AWS will ask you in the exam.
- 031_AWS Budget Setup.txt:6: And I had administrative access, but even though I have administrative access, I cannot access my billing data.
- 031_AWS Budget Setup.txt:58: And by the way, if you follow this course closely, you should not spend any dollars as you, when things can cost you money.
- 031_AWS Budget Setup.txt:59: But if you're careful, you should not spend any money.
- 031_AWS Budget Setup.txt:67: So, with these budgets and access to the free tier on the left hand side to explore, as well as accessing your bills breakdown on the left hand side, you should be able to debug any kind of costing issue and billing issue you have on this course.
- 377_AWS Cost Explorer.txt:20: So these kind of use cases can come up in the exam, and this is probably the only billing service that AWS will ask you in the exam.
- 132_S3 Cost Savings.txt:14: But all in all together, you have less management on your part and you should save some money.
- 132_S3 Cost Savings.txt:24: But when you enable Requester Pays, only the requester will pay for the cost of the request and the data download from the bucket.
- 133_S3 Storage Classes - Reminder.txt:33: ESC has high durability, okay, within a single AZ only, and the data is going to be lost if the AZ is somewhat destroyed.
- 133_S3 Storage Classes - Reminder.txt:70: You should understand it, but you should not remember it for sure.
- 133_S3 Storage Classes - Reminder.txt:74: Because if you understand what the classes name are, then you should be able to make sense of these classes.

### 6. Patterns / Architectures
- 235_[CCP] AWS Cost Anomaly Detection.txt:5: It's going to learn your unique historical patterns, and then it will detect one-time cost spikes and/or continuous cost increases.
- 378_AWS Cost Anomaly Detection.txt:5: It's going to learn your unique historical patterns, and then it will detect one-time cost spikes and/or continuous cost increases.
- 133_S3 Storage Classes - Reminder.txt:54: So as you know, that's a lot of storage classes and there's one last called S three Intelligent- Tiering, which is going to allow you to move objects between excess tiers based on usage patterns.
- 134_AWS Budgets & Cost Explorer.txt:16: These actions can be executed automatically, or they can require a workflow approval process, to make sure that some human says "yes," before these actions are implemented.
- 134_AWS Budgets & Cost Explorer.txt:20: So we have two types of architecture when managing budgets in AWS: You have the centralized budget management, and decentralized budget managements.

## Step 3 - Deep Expansion (Cost Control Concepts)

### Core Services in This Topic
- AWS Budgets: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudFormation: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Cost Anomaly Detection: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Cost Explorer: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon CloudWatch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EBS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EC2: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Commitment Strategy: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Consumption Accountability: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Cost Control Operational Context: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Optimization Governance: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Service Cost Trade-offs: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Spend Visibility: treat this as a design lever that changes topology, risk posture, or operational workflow.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Budgeting and cost visibility | Budgets / Cost Explorer / Cost Anomaly Detection | Cost Management + Budgets | Cloud Billing + Budgets + Recommender |
| Commitment discounts | Savings Plans / Reserved / Spot | Reservations / Savings plan patterns / Spot VMs | Committed use discounts / reservations / Spot VMs |
| Governance and accountability | Cost allocation tags / Trusted Advisor | Management groups / tags / advisor tooling | Labels / billing export / Recommender governance |
| Optimization recommendations | Trusted Advisor / Compute Optimizer | Advisor / Cost recommendations | Recommender |

### Trade-offs and Decision Notes
- Cost Control Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- Cost control begins with visibility, ownership, and purchase-model awareness.
- Financial architecture quality depends on tying spend to workload intent and accountability.

### Phase 2 - Core Services
- Implement billing telemetry and budget controls before relying on optimization recommendations.
- Use commitment models only when workload steadiness and ownership are understood.

### Phase 3 - Advanced Patterns
- Treat chargeback and allocation tagging as governance systems, not bookkeeping details.
- Optimization quality depends on removing idle design choices, not just accepting discounts.

### Phase 4 - System Design
- Reference architecture: billing visibility layer, optimization controls, and owner accountability loops.
- Scaling considerations: multi-account rollups, inconsistent tags, and decentralized procurement behavior.
- Cost considerations: overcommitting steady-state discounts, missing anomaly baselines, and invisible shared costs.
