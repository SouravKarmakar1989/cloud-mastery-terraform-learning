# 13_Governance_Operations.md

## Scope
- Topic: Networking management and governance services including IPAM, CloudFormation, Service Catalog, Config, and CloudTrail
- Files processed: 6
- Extracted non-empty transcript lines: 601
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 13: Governance and Operations)

This section is the study-first architecture guide for address governance, infrastructure control, compliance visibility, and auditability across networking estates.

### Phase 1 - Foundations

#### Module 1: Governance Mental Model
- Networking scale fails without governance before it fails from lack of features.
- Address planning, provisioning guardrails, compliance checks, and audit trails are all network architecture concerns.
- Governance should reduce entropy, not create more tickets without clarity.




##### Source Transcript Details
- Module focus: Governance Mental Model
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/245_Amazon VPC IP Address Manager (IPAM).txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/246_AWS CloudFormation.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/248_AWS Config.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/249_AWS CloudTrail.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/247_AWS Service Catalog.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/244_Introduction to AWS Management & Governance Services.txt
- Top concept clusters from transcript metadata:
- Governance Operational Context
- Address Governance and Allocation
- Infrastructure as Code Governance
- Continuous Compliance
- Audit and Change Traceability
- Service Provisioning Guardrails
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 6
- Module-selected transcript files: 6
- Key insight candidates scanned (topic): 601
- Key insights inside selected files: 601
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- But still you are having the governance at the management account level.
- Now if you put this governance policy in place, then you are sure that all the member accounts will have non-overlapping IP addresses which is assigned by using the IPAM.
- So we already saw a couple of AWS management and governance services including AWS cloud formation and AWS service catalog.
- I hope you understand well the difference between all the management and governance services that we talked about in this section.
- And we'll see more AWS management and governance services here.
- Hi, welcome to this section that is management and governance.
- And to be honest, the AWS management and governance services are more related to other AWS certification, for example, for solutions architect professional or for the Devops certification exam.
- So in management and governance, we can divide this in two sections.
- One is about the network management and second is about general management and governance services which are applicable to most of the other Aws components as well.
- And then for network monitoring and troubleshooting, you can use reach ability analyzer and for security and governance, you can use network access analyzer.
- So if I talk about in general AWS management and governance services, there are lot of services and it doesn't make sense to cover all these services in detail.
- So in this lecture, let's understand how you can centrally manage the IP addresses across your AWS state.
- And for this AWS has a tool called IPAM.
- As the name suggests it is IP address management.
- So in this lecture, we'll talk about what's the problem with, you know, managing your IP addresses, then what's IPAM and then what are the components of the IPAM to help you manage these IP addresses?
- Then I will just show you quickly how you can create IPAM pools and then use those pools to allocate IP addresses to your VPCs.
- And then we'll touch upon how can you track and monitor your IP addresses with IPAM.
- So if you are starting with AWS, probably you would have just a couple of VPCs and your on-premises network and then you will create these VPCs allocate CIDRs and then make sure that these VPCs can communicate with ea...

##### Polished Architect Notes
- Transcript signals that still you are having the governance at the management account level.
- Transcript signals that if you put this governance policy in place, then you are sure that all the member accounts will have non-overlapping IP addresses which is assigned by using the IPAM.
- Transcript signals that we already saw a couple of AWS management and governance services including AWS cloud formation and AWS service catalog.
- Transcript signals that i hope you understand well the difference between all the management and governance services that we talked about in this section.
- Transcript signals that we'll see more AWS management and governance services here.
- Transcript signals that welcome to this section that is management and governance.
- Transcript signals that to be honest, the AWS management and governance services are more related to other AWS certification, for example, for solutions architect professional or for the Devops certification exam.
- Transcript signals that in management and governance, we can divide this in two sections.
- Transcript signals that one is about the network management and second is about general management and governance services which are applicable to most of the other Aws components as well.
- Transcript signals that then for network monitoring and troubleshooting, you can use reach ability analyzer and for security and governance, you can use network access analyzer.
- Transcript signals that if I talk about in general AWS management and governance services, there are lot of services and it doesn't make sense to cover all these services in detail.
- Transcript signals that in this lecture, let's understand how you can centrally manage the IP addresses across your AWS state.

##### Architect Synthesis (Transcript-Derived)
- Treat Governance Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Address Governance and Allocation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Infrastructure as Code Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Continuous Compliance as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Audit and Change Traceability as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: still you are having the governance at the management account level.
- Design implication: if you put this governance policy in place, then you are sure that all the member accounts will have non-overlapping IP addresses which is assigned by using the IPAM.
- Design implication: we already saw a couple of AWS management and governance services including AWS cloud formation and AWS service catalog.
#### Module 2: Core Governance Dimensions
- Address governance controls how CIDR space is allocated and protected from overlap.
- Provisioning governance controls how network resources get created.
- Compliance and audit governance prove whether the estate remains in desired state.




##### Source Transcript Details
- Module focus: Core Governance Dimensions
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/245_Amazon VPC IP Address Manager (IPAM).txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/246_AWS CloudFormation.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/248_AWS Config.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/249_AWS CloudTrail.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/247_AWS Service Catalog.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/244_Introduction to AWS Management & Governance Services.txt
- Top concept clusters from transcript metadata:
- Governance Operational Context
- Address Governance and Allocation
- Infrastructure as Code Governance
- Continuous Compliance
- Audit and Change Traceability
- Service Provisioning Guardrails
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 6
- Module-selected transcript files: 6
- Key insight candidates scanned (topic): 601
- Key insights inside selected files: 601
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- But still you are having the governance at the management account level.
- Now if you put this governance policy in place, then you are sure that all the member accounts will have non-overlapping IP addresses which is assigned by using the IPAM.
- So we already saw a couple of AWS management and governance services including AWS cloud formation and AWS service catalog.
- I hope you understand well the difference between all the management and governance services that we talked about in this section.
- And we'll see more AWS management and governance services here.
- Hi, welcome to this section that is management and governance.
- And to be honest, the AWS management and governance services are more related to other AWS certification, for example, for solutions architect professional or for the Devops certification exam.
- So in management and governance, we can divide this in two sections.
- One is about the network management and second is about general management and governance services which are applicable to most of the other Aws components as well.
- And then for network monitoring and troubleshooting, you can use reach ability analyzer and for security and governance, you can use network access analyzer.
- So if I talk about in general AWS management and governance services, there are lot of services and it doesn't make sense to cover all these services in detail.
- So in this lecture, let's understand how you can centrally manage the IP addresses across your AWS state.
- And for this AWS has a tool called IPAM.
- As the name suggests it is IP address management.
- So in this lecture, we'll talk about what's the problem with, you know, managing your IP addresses, then what's IPAM and then what are the components of the IPAM to help you manage these IP addresses?
- Then I will just show you quickly how you can create IPAM pools and then use those pools to allocate IP addresses to your VPCs.
- And then we'll touch upon how can you track and monitor your IP addresses with IPAM.
- So if you are starting with AWS, probably you would have just a couple of VPCs and your on-premises network and then you will create these VPCs allocate CIDRs and then make sure that these VPCs can communicate with ea...

##### Polished Architect Notes
- Transcript signals that still you are having the governance at the management account level.
- Transcript signals that if you put this governance policy in place, then you are sure that all the member accounts will have non-overlapping IP addresses which is assigned by using the IPAM.
- Transcript signals that we already saw a couple of AWS management and governance services including AWS cloud formation and AWS service catalog.
- Transcript signals that i hope you understand well the difference between all the management and governance services that we talked about in this section.
- Transcript signals that we'll see more AWS management and governance services here.
- Transcript signals that welcome to this section that is management and governance.
- Transcript signals that to be honest, the AWS management and governance services are more related to other AWS certification, for example, for solutions architect professional or for the Devops certification exam.
- Transcript signals that in management and governance, we can divide this in two sections.
- Transcript signals that one is about the network management and second is about general management and governance services which are applicable to most of the other Aws components as well.
- Transcript signals that then for network monitoring and troubleshooting, you can use reach ability analyzer and for security and governance, you can use network access analyzer.
- Transcript signals that if I talk about in general AWS management and governance services, there are lot of services and it doesn't make sense to cover all these services in detail.
- Transcript signals that in this lecture, let's understand how you can centrally manage the IP addresses across your AWS state.

##### Architect Synthesis (Transcript-Derived)
- Treat Governance Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Address Governance and Allocation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Infrastructure as Code Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Continuous Compliance as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Audit and Change Traceability as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: still you are having the governance at the management account level.
- Design implication: if you put this governance policy in place, then you are sure that all the member accounts will have non-overlapping IP addresses which is assigned by using the IPAM.
- Design implication: we already saw a couple of AWS management and governance services including AWS cloud formation and AWS service catalog.
#### Module 3: Operational Ownership
- Central governance only works if ownership boundaries are explicit.
- Exceptions must be managed as part of the operating model.
- Auditability without remediation discipline produces noise instead of control.






##### Source Transcript Details
- Module focus: Operational Ownership
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/245_Amazon VPC IP Address Manager (IPAM).txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/246_AWS CloudFormation.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/248_AWS Config.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/249_AWS CloudTrail.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/247_AWS Service Catalog.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/244_Introduction to AWS Management & Governance Services.txt
- Top concept clusters from transcript metadata:
- Governance Operational Context
- Address Governance and Allocation
- Infrastructure as Code Governance
- Continuous Compliance
- Audit and Change Traceability
- Service Provisioning Guardrails
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 6
- Module-selected transcript files: 6
- Key insight candidates scanned (topic): 601
- Key insights inside selected files: 601
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- But still you are having the governance at the management account level.
- Now if you put this governance policy in place, then you are sure that all the member accounts will have non-overlapping IP addresses which is assigned by using the IPAM.
- So we already saw a couple of AWS management and governance services including AWS cloud formation and AWS service catalog.
- I hope you understand well the difference between all the management and governance services that we talked about in this section.
- And we'll see more AWS management and governance services here.
- Hi, welcome to this section that is management and governance.
- And to be honest, the AWS management and governance services are more related to other AWS certification, for example, for solutions architect professional or for the Devops certification exam.
- So in management and governance, we can divide this in two sections.
- One is about the network management and second is about general management and governance services which are applicable to most of the other Aws components as well.
- And then for network monitoring and troubleshooting, you can use reach ability analyzer and for security and governance, you can use network access analyzer.
- So if I talk about in general AWS management and governance services, there are lot of services and it doesn't make sense to cover all these services in detail.
- So in this lecture, let's understand how you can centrally manage the IP addresses across your AWS state.
- And for this AWS has a tool called IPAM.
- As the name suggests it is IP address management.
- So in this lecture, we'll talk about what's the problem with, you know, managing your IP addresses, then what's IPAM and then what are the components of the IPAM to help you manage these IP addresses?
- Then I will just show you quickly how you can create IPAM pools and then use those pools to allocate IP addresses to your VPCs.
- And then we'll touch upon how can you track and monitor your IP addresses with IPAM.
- So if you are starting with AWS, probably you would have just a couple of VPCs and your on-premises network and then you will create these VPCs allocate CIDRs and then make sure that these VPCs can communicate with ea...

##### Polished Architect Notes
- Transcript signals that still you are having the governance at the management account level.
- Transcript signals that if you put this governance policy in place, then you are sure that all the member accounts will have non-overlapping IP addresses which is assigned by using the IPAM.
- Transcript signals that we already saw a couple of AWS management and governance services including AWS cloud formation and AWS service catalog.
- Transcript signals that i hope you understand well the difference between all the management and governance services that we talked about in this section.
- Transcript signals that we'll see more AWS management and governance services here.
- Transcript signals that welcome to this section that is management and governance.
- Transcript signals that to be honest, the AWS management and governance services are more related to other AWS certification, for example, for solutions architect professional or for the Devops certification exam.
- Transcript signals that in management and governance, we can divide this in two sections.
- Transcript signals that one is about the network management and second is about general management and governance services which are applicable to most of the other Aws components as well.
- Transcript signals that then for network monitoring and troubleshooting, you can use reach ability analyzer and for security and governance, you can use network access analyzer.
- Transcript signals that if I talk about in general AWS management and governance services, there are lot of services and it doesn't make sense to cover all these services in detail.
- Transcript signals that in this lecture, let's understand how you can centrally manage the IP addresses across your AWS state.

##### Architect Synthesis (Transcript-Derived)
- Treat Governance Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Address Governance and Allocation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Infrastructure as Code Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Continuous Compliance as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Audit and Change Traceability as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: still you are having the governance at the management account level.
- Design implication: if you put this governance policy in place, then you are sure that all the member accounts will have non-overlapping IP addresses which is assigned by using the IPAM.
- Design implication: we already saw a couple of AWS management and governance services including AWS cloud formation and AWS service catalog.
### Phase 2 - Core Services

#### IPAM and Address Governance
- IPAM is the control plane for structured address allocation at scale.
- Use it to prevent overlapping CIDRs and unmanaged subnet growth.
- Address allocation is one of the highest-value governance functions in large network estates.

#### CloudFormation and Service Catalog
- CloudFormation turns network design into repeatable provisioned intent.
- Service Catalog constrains how standardized products are consumed.
- Together they reduce bespoke network builds and configuration drift.

#### Config and CloudTrail
- Config evaluates desired-state compliance over time.
- CloudTrail records control-plane changes and operator actions.
- These services matter most when tied to ownership and remediation workflows.

### Phase 3 - Advanced Patterns

#### Pattern 1: Central Networking Governance Account
- Keep allocation, standards, and evidence generation centralized where scale justifies it.
- Separate governance responsibility from day-to-day workload operation cleanly.
- Make standards reusable, not manually reinterpreted by each team.

#### Pattern 2: Provisioning Guardrails as Platform Rules
- Use IaC and product catalogs to shape allowed network patterns.
- Prevent anti-patterns early instead of auditing them after deployment.
- Good governance is preventative more often than detective.

#### Pattern 3: Compliance and Audit Feedback Loop
- Turn findings into operational action, not just dashboards.
- Keep evidence paths ready for audits, incidents, and postmortems.
- Governance maturity is measured by response quality, not just control count.

### Phase 4 - System Design (Production)

#### Reference Governance Architecture
- Central governance layer for address allocation, IaC standards, compliance visibility, and control-plane audit trails.
- Shared platform patterns for network provisioning with clear exception handling.
- Evidence and compliance signals integrated into operational review cycles.

#### Scaling Considerations
- Address overlap and allocation drift become painful quickly in multi-account estates.
- Too many exceptions weaken the value of central governance.
- Governance tooling without process ownership becomes expensive clutter.

#### Cost Considerations
- Governance tooling is usually cheap compared to the cost of network sprawl and rework.
- Log retention and compliance operations add cost, but lack of traceability costs more during incidents.
- Platform standardization reduces repetitive engineering cost over time.

### Cross-Cloud Concept Mapping (Governance and Operations)

#### Underlying Concept: Central IP and Network Governance
- AWS: IPAM, CloudFormation, Config, CloudTrail, and Service Catalog
- Azure: address governance, policy, deployment, and audit-service patterns
- GCP: centralized address governance, IaC, policy, and audit patterns
- Trade-off: governance intent is portable, but service granularity and org-integration depth differ.

#### Underlying Concept: Continuous Compliance and Auditability
- AWS: Config and CloudTrail-driven evidence model
- Azure: Policy and activity-log-driven evidence model
- GCP: policy-validation and audit-log-driven evidence model
- Trade-off: all clouds support evidence generation, but remediation workflows differ.

### Real-World Use Cases from Transcript Signals
- Prevent CIDR overlap and unmanaged allocation through centralized IP governance.
- Standardize network provisioning through reusable IaC and product catalog patterns.
- Tie compliance and audit evidence to real ownership and remediation processes.

### Constraints and Exam-Relevant Traps Captured
- Governance tools without process ownership do not create real control.
- Address planning mistakes compound across accounts and regions.
- Detective controls are weaker when preventative provisioning standards are absent.

## Advanced Networking Transcript Additions - Additional Topics

### Source Files
- outputs/AWS Speciality/advanced-networking-specialty/23_Additional Topics/250_VPC Sharing.txt
- outputs/AWS Speciality/advanced-networking-specialty/23_Additional Topics/251_AWS Private NAT Gateway.txt
- outputs/AWS Speciality/advanced-networking-specialty/23_Additional Topics/252_AWS Network architecture for Amazon Workspaces_Appstream 2.0.txt
- outputs/AWS Speciality/advanced-networking-specialty/23_Additional Topics/253_AWS WaveLength.txt
- outputs/AWS Speciality/advanced-networking-specialty/23_Additional Topics/254_AWS Local Zones.txt

### Additional Topics Synthesis
- VPC sharing is an organization-scoped governance pattern using RAM, with explicit owner vs participant responsibility, subnet-level sharing, and AZ ID alignment to avoid cross-AZ transfer surprises.
- Private NAT Gateway addresses overlapping private CIDR communication patterns by doing private-to-private translation, often with supporting routable CIDRs and Transit Gateway constructs.
- WorkSpaces/AppStream network architecture highlights that user-experience services still require disciplined network segmentation, route design, and controlled egress paths.
- Wavelength and Local Zones extend workload placement toward edge and metro contexts where latency goals and data path locality drive design choices.
- These topics are best treated as architecture extensions, not isolated services: placement, governance, and traffic engineering must be designed together.
## Step 1 — Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/244_Introduction to AWS Management & Governance Services.txt

Line 1:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Hi, welcome to this section that is management and governance.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 2:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, in this section, we are going to cover some AWS services which are related to AWS networking.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 3:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And to be honest, the AWS management and governance services are more related to other AWS certification, for example, for solutions architect professional or for the Devops certification exam.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 4:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But still in my opinion, it is worth touching upon few topics because we have seen one or two odd questions around some of these services.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 5:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So let's try to focus on what is really important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 7:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So in management and governance, we can divide this in two sections.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 8:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: One is about the network management and second is about general management and governance services which are applicable to most of the other Aws components as well.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 9:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So if you specifically talk about network management, so in AWS, there is something called AWS network manager.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 10:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, if you have already gone through the lectures like cloud one or reach ability analyzer or network access analyzer, we have seen the network manager, but this is a single pane of class where you can do a lot of monitoring and troubleshooting and management of your networks in AWS.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 11:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So we are not going to see the AWS network manager in detail because ultimately, it's just a portal through which you can do a lot of other things.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 12:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So as you can see here, it provides you to manage your va network that is cloud.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 13:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then for network monitoring and troubleshooting, you can use reach ability analyzer and for security and governance, you can use network access analyzer.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 14:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, in the earlier section, we have already seen these services.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 15:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Now, what we haven't seen here is IP management, which is IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 16:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So in this section, we will cover in detail, what is IPAM and how to use IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 17:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, as I said, this is very specific to AWS network management, but then there are other services which are generic, but then you can also manage your network using those services.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 18:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So if I talk about in general AWS management and governance services, there are lot of services and it doesn't make sense to cover all these services in detail.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 19:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So I want to focus our discussion on these five services because at times you might see some questions related to any of these services.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 20:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, one more thing that we are not focusing on lots of hands-on for these services because we want to be frugal with the time.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 21:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So it's important that you understand the concept and it is expected that you are able to relate to the service to the given questions and we will cover this topic at least to that tape.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 22:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is fine with you.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 23:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So with that, let's start this section.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/245_Amazon VPC IP Address Manager (IPAM).txt

Line 1:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 2:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So in this lecture, let's understand how you can centrally manage the IP addresses across your AWS state.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 3:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: And for this AWS has a tool called IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 4:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: As the name suggests it is IP address management.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 5:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So in this lecture, we'll talk about what's the problem with, you know, managing your IP addresses, then what's IPAM and then what are the components of the IPAM to help you manage these IP addresses?
- Hidden/Implicit Meaning: Address-governance signal.

Line 6:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Then I will just show you quickly how you can create IPAM pools and then use those pools to allocate IP addresses to your VPCs.
- Hidden/Implicit Meaning: Address-governance signal.

Line 7:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: And then we'll touch upon how can you track and monitor your IP addresses with IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 8:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So if you are starting with AWS, probably you would have just a couple of VPCs and your on-premises network and then you will create these VPCs allocate CIDRs and then make sure that these VPCs can communicate with each other using say Transit gateways or VPC peering connection.
- Hidden/Implicit Meaning: Address-governance signal.

Line 9:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: Now, one thing that you need to take care is that the IP addresses or CIDR blocks for these VPCs are non-overlapping.
- Hidden/Implicit Meaning: Address-governance signal.

Line 10:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: That's for the reason that if they are overlapping, then there is a problem connecting these two VPCs.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 11:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So it's the best practice to, you know, manage these IP addresses in such a way that no two VPCs probably have the overlapping CIDRS.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Address-governance signal.

Line 12:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So that's better to manage your growing network in the future, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 13:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So when you begin, probably you can have simple Excel sheets in which you have the list of VPCs and corresponding CDR ranges.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 14:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: So that whenever some new VPC has to be created, you can just look at your Excel and see, OK, this CIDR block is not used.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Address-governance signal.

Line 15:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: So for the new VPC, you can use a new CIDR range and that works well if your AWS footprint is small, but over the time, if you are using multiple AWS regions, multiple environments and lots of VPCs, then you can imagine that pain if you are managing this IP address location mapping in some kind of Excels because there will be multiple network administrator and then probably it will be Excel hell going forward.
- Hidden/Implicit Meaning: Address-governance signal.

Line 16:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So exactly to address this problem, AWS has come up with this tool called IPAM, which is IP address management.
- Hidden/Implicit Meaning: Address-governance signal.

Line 17:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: But at very high level, you create the pools of IP addresses and then you make sure that when you create VPCs, you allocate the VPC CIDR from those pools only.
- Hidden/Implicit Meaning: Constraint or limitation signal; Address-governance signal.

Line 18:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So that irrespective of how many number of VPCs you create, you are sure that this VPC will never get the overlapping IP addresses.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So that essentially is IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 20:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Now, if you talk about the IPAM components, then IPAM has something called scope.
- Hidden/Implicit Meaning: Address-governance signal.

Line 21:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So IPAM scope can be public or private.
- Hidden/Implicit Meaning: Address-governance signal.

Line 22:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So as the name suggests, public scope is for managing public IP addresses and private scope is for managing private IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 23:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: And in this lecture, we will mainly focus on the private IP address space.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 24:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Because for public IP addresses, you need to Bring Your Own IPs (BYOIP), which unfortunately, we can't do here.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So when you enable the IPAM, the public and private scopes are created for you and then once you have this scope, then you can create the pools.
- Hidden/Implicit Meaning: Address-governance signal.

Line 26:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: Now these pools are like collection of CIDR ranges and then you can have layered pools.
- Hidden/Implicit Meaning: Address-governance signal.

Line 27:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: That means you can have a top level pool and inside that you can have sub pools.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 28:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: For example, if you see this diagram, there is one single Global pool and inside that you can create pools per AWS Region.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 29:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now that's just an example and it's up to you how you want to organize your pools.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 30:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But you can create this kind of sub pools.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 31:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: And then when you create the VPC, you can allocate VPC CIDR from these sub pools and this make sure that you are organizing your big address space into a smaller pools and then you're allocating your VPC, CIDR from those small pools.
- Hidden/Implicit Meaning: Address-governance signal.

Line 32:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So that's how the IPAM works.
- Hidden/Implicit Meaning: Address-governance signal.

Line 33:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Now, if you have a single AWS account, which is not part of AWS organization, then also you can use IPAM or if you use AWS organization, then also you can use IPAM to manage IP addresses across all member accounts in your AWS organization.
- Hidden/Implicit Meaning: Address-governance signal.

Line 34:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: OK?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 35:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: Just to give you an example about the pool structure, so you can have a Global address space, which is again the collection of CIDR ranges.
- Hidden/Implicit Meaning: Address-governance signal.

Line 36:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then you can divide this top level pool into regional pools.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 37:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And within that, you can create a pool specific to a particular environment, for example, for Development, Staging or Prod.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 38:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And now when you create a VPC, you first decide that this VPC will be for Development environment in a particular Region.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 39:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: And then the VPC will be allocated IP address range from that particular development pool.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 40:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And this is how you can manage your CIDRs for your VPCs.
- Hidden/Implicit Meaning: Address-governance signal.

Line 41:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now another example, you can also do the other way around.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 42:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: For example, you have the IP address space which is a Global pool.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 43:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And inside that first you create the pools as per your environments, for example, production development.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 44:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And within that, then you have the regional pools and just to talk about another example, you can also create pools as per your line of businesses.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 45:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then you can have multilevel pools as you can see here for business unit one, I have regional pools and inside that I have environment specific pools, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 46:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So it really depends on how you want to create these pools.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 47:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And if you're interested, you can just check out this blog which talks about some best practices for creating the IP Pools.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 49:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Now, earlier, I mentioned that you can use IPAM with AWS Organization as well and for that, there are a few considerations.
- Hidden/Implicit Meaning: Address-governance signal.

Line 50:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So let's talk about that.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 51:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, if you see this diagram, this is a control tower based landing zone diagram.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 52:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: If you don't know what is landing zone or control tower, just read about it.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 53:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But essentially, it is kind of best practices to manage your AWS organization accounts so that there is a separation of duties, security is taken care, network is Centralized and all member accounts can have their own control.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 54:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But still you are having the governance at the management account level.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 55:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So this is a kind of, you know, AWS organization structure.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 56:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And again, this is very flexible and this is just one representation of control tower landing zone.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 57:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So IPAM can be integrated with your AWS organization structure.
- Hidden/Implicit Meaning: Address-governance signal.

Line 58:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: And for that, what IPAM suggests that you should have a separate network admin account in which you enable the IPAM.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Address-governance signal.

Line 59:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then using this account, you can manage the IP addresses for rest of the account in your AWS organization.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 60:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So there should be a Dedicated IPAM administrator account in your AWS organization.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Address-governance signal.

Line 61:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And this account of course, should be a member of AWS organization.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 62:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, additionally, while using the AWS organization, what you can also do is you can enable the SCP policies.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 63:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, SCP is service control policies which enforces that all the members account in my AWS organization should not be able to perform, you know, some actions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 64:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And here it makes sense to have this kind of action which says no member account can directly assign the IP addresses to the VPCs.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 65:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: That means all the IP addresses should be assigned using the IPAM.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Address-governance signal.

Line 66:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Now if you put this governance policy in place, then you are sure that all the member accounts will have non-overlapping IP addresses which is assigned by using the IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 67:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So here this is just an example to enforce use of IPAM in the member account.
- Hidden/Implicit Meaning: Address-governance signal.

Line 68:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: But then you can also modify these policies and say a particular AWS account can use a particular IPAM pool or you can also say that this particular organization unit in AWS organization can use a set of IPAM pools.
- Hidden/Implicit Meaning: Address-governance signal.

Line 69:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So this is all flexible and if you're interested, you can just look at the AWS documentation around how to write these policies.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 70:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So the point here is that you can use IPAM with AWS organization and you can enforce the use of IPAM for the member accounts.
- Hidden/Implicit Meaning: Address-governance signal.

Line 71:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 72:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So moving forward IPAM also allows you to write rules, which means when you create the VPC, you can specify that this IPAM pool should only be allowed to be used if you're having the right permissions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Address-governance signal.

Line 73:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: That means you have right AWS account, you're operating in a particular Region and you are requesting for, you know, particular VPC size, so minimum and maximum and your VPC has a particular tag.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 74:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So in IPAM you can write the rules with all these conditions.
- Hidden/Implicit Meaning: Address-governance signal.

Line 75:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And now when a user is trying to create a VPC, these conditions can be evaluated.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 76:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: And if all these conditions meet, then IPAM will respond with the CIDR from the IPAM pool.
- Hidden/Implicit Meaning: Address-governance signal.

Line 77:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then you can use this to allocate to your resources, for example, to your VPC.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 78:
- Concepts: Address Governance and Allocation, Continuous Compliance
- Services: VPC IP Address Manager
- Key Insights: And if any of the rule doesn't meet the criteria, then of course, IPAM won't be able to allocate CIDR and then you won't be able to create the VPC.
- Hidden/Implicit Meaning: Address-governance signal.

Line 79:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: And this doesn't really work only for the VPCs, but you can use this CIDR for non AWS resources as well.
- Hidden/Implicit Meaning: Constraint or limitation signal; Address-governance signal.

Line 80:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: For example, if you are setting up your on-premises network and you want to have some private CIDR range, then you can also ask IPAM to provide you the range and then that range you can use to allocate to your on-premises network.
- Hidden/Implicit Meaning: Address-governance signal.

Line 81:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 82:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So once you have the IPAM pools created and these rules configured, then you can put everything into the automation.
- Hidden/Implicit Meaning: Address-governance signal; Compliance and auditability signal.

Line 83:
- Concepts: Address Governance and Allocation, Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: For example, in the beginning, maybe you might have been asking your network admin for the CIDR ranges and then you create a cloud formation template provide that CIDR range and cloudformation will create the VPC.
- Hidden/Implicit Meaning: Address-governance signal; Provisioning-governance signal.

Line 84:
- Concepts: Address Governance and Allocation, Infrastructure as Code Governance
- Services: CloudFormation, VPC IP Address Manager
- Key Insights: This is a flow before IPAM, I will say and over the time you will use the IPAM and now developer can directly ask IPAM for the CIDR range and provide it to the cloudformation and then cloudformation will create the VPC.
- Hidden/Implicit Meaning: Address-governance signal; Provisioning-governance signal.

Line 85:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But here you can completely take out even this step.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 86:
- Concepts: Address Governance and Allocation, Infrastructure as Code Governance
- Services: CloudFormation, VPC IP Address Manager
- Key Insights: And cloudformation itself can directly make an API call to the IPAM and get the available CIDR range and create the VPC.
- Hidden/Implicit Meaning: Address-governance signal; Provisioning-governance signal.

Line 87:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So this is a way in which you can automate using the IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 88:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 89:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So with that, now, I just wanted to quickly show you how can you use IPAM in your AWS account.
- Hidden/Implicit Meaning: Address-governance signal.

Line 90:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So this is kind of one of the way in which we can implement IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 91:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: And as I said, it's up to you how you want to create this IP address space and how you want to then divide into multiple pools.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 92:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So if you see here, I have a Global pool with /12 prefix which gives me around 1 million private IPS.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 93:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then I'm creating the regional pool with /16 prefix which gives around 65,000 IPS.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 94:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: Now, within every Region, I would have multiple environment pools and these pools are created with /18 CIDR which gives me around 16,000 IPS.
- Hidden/Implicit Meaning: Address-governance signal.

Line 95:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: And then while creating the VPCs, I can restrict that VPC can be created with maximum CIDR of /24.
- Hidden/Implicit Meaning: Address-governance signal.

Line 96:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So that no VPC is more than 256 IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 97:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And which means that for every environment I can create at least up to 64 VPCs of size 256 IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 98:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And now let's go to the AWS console and see this in action.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 99:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Ok.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 100:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So I'll just say IPAM and then you can go to the VPC IP address manager and then you land here.
- Hidden/Implicit Meaning: Address-governance signal.

Line 101:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Now, very first thing we have to do is to create the IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 102:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So you have to just make sure that you accept this.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 103:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then there are 2 pricing options.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 104:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, the difference is that in free tier, you can only manage the public IPv4 addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 105:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But in our case, of course, we want to manage the private IP addresses and that's where we will go with the advanced tier.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 106:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: But which also means there will be some cost for this IPAM use.
- Hidden/Implicit Meaning: Address-governance signal.

Line 107:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Now here you can say the IPAM name.
- Hidden/Implicit Meaning: Address-governance signal.

Line 108:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So I will say MyIPAM doesn't really matter.
- Hidden/Implicit Meaning: Address-governance signal.

Line 109:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: And then here in the operating Region, you should select all the Region in which you want to use the IPAM.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Address-governance signal.

Line 110:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So by default, Mumbai is selected because we are operating in Mumbai.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 111:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So that's the base Region for the IPAM, but you should also add other regions in which you want to use IPAM.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Address-governance signal.

Line 112:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So I will also select us-east-1 which is North Virginia and then I'll create the IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 113:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So this is just, you know, setting up the IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 114:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And as you do this, it automatically creates two scopes, as I said, a public scope and a private scope.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 115:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And now for the next part, we are going to use our private scope only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 116:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 117:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So the next step is to create the pools.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 118:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So let's go here and let's make sure that we use the private scope.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 119:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So let's create a pool and let's call it the Global pool.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 120:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So rest of the settings as default.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 121:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And just one thing here is a local.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 122:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, local means that in which all AWS Region you want to use this pool.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 123:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, this is a Global pool.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 124:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So I don't want to restrict it to a particular AWS Region because we will be creating a regional pool as a sub pool.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 125:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And at that time, we will select the local.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 126:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So as of now, let's leave it blank.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 127:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now see CIDRs.
- Hidden/Implicit Meaning: Address-governance signal.

Line 128:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So as we know, we want to create 10.0.0.0/12, which gives me around 1 million IP addresses rest of the settings as default and let's create the pool.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 129:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 130:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So this is my top level pool and now we want to create the sub pools.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 131:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: So let's refer to our CIDR allocation slide.
- Hidden/Implicit Meaning: Address-governance signal.

Line 132:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So we just created this one and now let's create a regional pool.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 133:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So we'll just do it for one Region, but you can definitely replicate this for other regions if you want.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 134:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: So in Mumbai, we will create a regional pool with /16 CIDR and within that, we will create environments specific pool with /18 CIDR.
- Hidden/Implicit Meaning: Address-governance signal.

Line 135:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 136:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 137:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So I'm in the pools and now I will say create a pool within this pool and I will say a Mumbai pool and here most of the settings as default.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 138:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And here in the local, I will say I want to enable it for Mumbai.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 139:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So let's select that.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 140:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: And as an input CIDR, I will say 10.0.0.0/16 for my Mumbai which gives me around 65,000 IP addresses.
- Hidden/Implicit Meaning: Address-governance signal.

Line 141:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 142:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And let's create the pool.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 143:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, once you create the Mumbai pool, now you can create the environment specific pools, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 144:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So once it happens, we will create the next level of pool.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 145:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 146:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So now if you go to the pools, you select the Mumbai pools and then in action say create a pool within this pool and this is my development pool and I'm just going here, I'm keeping the things as default.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 147:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: OK?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 148:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So this is my development environment and I want to allocate 16,000 IP addresses out of 65,000 for the Mumbai pool.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 149:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So I'll say 10.0.0.0/18.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 150:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: And at this time, I also want to make sure that all the VPCs which are created in the development environment, they are of size /24 and they have the specific tag which says environment equal to development, so I can enforce this kind of rules for my IPAM usage.
- Hidden/Implicit Meaning: Address-governance signal.

Line 151:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And if you remember we had seen that in the earlier slide.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 152:
- Concepts: Address Governance and Allocation, Continuous Compliance
- Services: VPC IP Address Manager
- Key Insights: So let's configure the allocation rule setting for this IPAM pool.
- Hidden/Implicit Meaning: Address-governance signal; Compliance and auditability signal.

Line 153:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So here we say that the minimum net mask for my VPC is /24.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 154:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: The default is also /24 and maximum is also /24.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 155:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But if you want, you can define the minimum and maximum different and then default as a different length.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 156:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And additionally, we will say every VPC that you create should have the environment tag as a development.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 157:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Then only IPAM can allocate this to the VPC, right?
- Hidden/Implicit Meaning: Constraint or limitation signal; Address-governance signal.

Line 158:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And rest of the settings as it is and let's create the pool.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 159:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 160:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So development environment has been created.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 161:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So you can create, for example, testing with 10.0.64.0/18.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 162:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then you can also apply the similar rules for the tagging and VPC prefix size as well.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 163:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But it's just a repeatation of what we did for development environment.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 164:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So I'm skipping that part.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 165:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now let's go to our VPC console.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 166:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So we have required pool created.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 167:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the VPC and let's go to the Mumbai Region and let's create the VPC and let's call it, say MyVPC.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 168:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: And here you can select that I want to create a VPC with IPAM allocated IPv4 CIDR block and it shows you all the blocks which are available.
- Hidden/Implicit Meaning: Address-governance signal.

Line 169:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So within Mumbai, we know that there is a development block which we want to use and here it automatically picks /24 prefix because we had configured that as a rule.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 170:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, rest of the settings as default.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 171:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Now to begin with, I'm not putting the tag for the VPC and now I'm trying to create this VPC and it says that there was an error because the resource is missing one or more resource tag required by the IPAM pool, right?
- Hidden/Implicit Meaning: Constraint or limitation signal; Address-governance signal.

Line 172:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Which was expected.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 173:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So let's go here and say environments equal to development and create this VPC.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 174:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 175:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: It did not work.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 176:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Maybe because we made some mistake somewhere.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 177:
- Concepts: Address Governance and Allocation, Continuous Compliance
- Services: VPC IP Address Manager
- Key Insights: So let's go back and check our IPAM and in the pools, if you just go to the development pool, let's look at the compliance requirement and is key OK?
- Hidden/Implicit Meaning: Address-governance signal; Compliance and auditability signal.

Line 178:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So I made a spelling mistake there and that's where it's not allowing, sorry for that.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 179:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But now let's use this as an environment.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 180:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So let's go here and modify this and create the VPC.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 181:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: OK?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 182:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: So you can see that VPC has been created successfully and it automatically allocated this CIDR range.
- Hidden/Implicit Meaning: Address-governance signal.

Line 183:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now let's do one more thing.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 184:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Let's create another VPC in the same pool.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 185:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So let's call it, say my project X VPC.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 186:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And we are allocating from the same development pool.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 187:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And again, we need to add, I would tag as development and then create the VPC.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 188:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: And this time you see that it allocated the next available CIDR in /24 range.
- Hidden/Implicit Meaning: Address-governance signal.

Line 189:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So this makes our life much, much easier.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 190:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: That means you don't have to worry about.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 191:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Now, this CIDR ranges, it will automatically be allocated by IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 192:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So that was a short demo for this.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 193:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And now let's go back to our discussion.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 194:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So if you are designing IPAM for your organization, what I will suggest that first you plan it and for that, I would say put everything onto the paper, like how exactly you want to create these pools and how many IP addresses you should be allocating to these pools.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Address-governance signal.

Line 195:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And while you do that, don't just consider the current AWS landscape but also consider the future state as well as your on-premises network with that.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 196:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Let's just quickly talk about a few more features of the IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 197:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So IPAM also allows you to track and monitor the IP address usage.
- Hidden/Implicit Meaning: Address-governance signal.

Line 198:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: And for that, you can go to the IPAM dashboard and you can see everything out there.
- Hidden/Implicit Meaning: Address-governance signal.

Line 199:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So I leave it up to you to explore the IPAM dashboard, you can also filter the CIDR ranges as per the resources.
- Hidden/Implicit Meaning: Address-governance signal.

Line 200:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: For example, if you want to see the allocation to VPCs or to the subnets or to the ENIs all that can be done through the dashboard.
- Hidden/Implicit Meaning: Address-governance signal.

Line 201:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Now, IPAM is also integrated with cloudwatch, that means if you're close to exhausting the IP ranges from a particular pool, then you can create an alarm for that and then you can take necessary action.
- Hidden/Implicit Meaning: Address-governance signal.

Line 202:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Further IPAM also allows you to see the IP address history.
- Hidden/Implicit Meaning: Address-governance signal.

Line 203:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: So you can track down for a particular resource which all IPs were used in the past or if you have an IP address, then you can see this IP was allocated to this ENI and then it was allocated to some different ENI all that can be traced down using the IP address history.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 204:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: And finally IPAM also provides you public IP insights.
- Hidden/Implicit Meaning: Address-governance signal.

Line 205:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So this is applicable for all the public IPs that AWS provides to you as well as the public IPs that you bring in as a Bring Your Own IP (BYOIP), which means you get to see what all public IP addresses are there in use.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 206:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And this is particularly useful from February 2024 because AWS will charge you for the use of public IPs.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 207:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So using this public IP insights, you can figure out how many public IPs are there, how many are unassociated and then you can go and release those public or elastic IPs.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 208:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So in order to get an entire view of public IPs, this feature will be very useful.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 209:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: OK?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 210:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So essentially those are the additional features of the IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 211:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, for completeness, I have provided few slides for every feature that I just talked about.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 212:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So if you want, you can refer to these slides for the same.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 213:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 214:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: So quickly, the IPAM summary IPAM allows you to organize IP address space into separate domains.
- Hidden/Implicit Meaning: Address-governance signal.

Line 215:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: This could be business Domain or security Domain or Environmental Domain.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 216:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: It is up to you how you design your IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 217:
- Concepts: Address Governance and Allocation, Continuous Compliance
- Services: (none explicit)
- Key Insights: Then it automatically allocates the CIDRs to your VPCs with specific business rules and then it also monitors your IP address space that's in use and monitor the resources that are using this IP against the set business rule, which means it can also show you the compliant and non compliant resources.
- Hidden/Implicit Meaning: Address-governance signal.

Line 218:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: Further, you can see the history of the IP address assignments and one more point that we probably did not touch upon, but you can share your, bring your own IP addresses across the Region and across AWS account using the IPAM.
- Hidden/Implicit Meaning: Address-governance signal.

Line 219:
- Concepts: Address Governance and Allocation
- Services: VPC IP Address Manager
- Key Insights: And finally IPAM provides you two pricing option in free tier.
- Hidden/Implicit Meaning: Address-governance signal.

Line 220:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: You can manage the public IP space and for private IP space, you have to enable the advanced tier and there is a small cost when you enable the advanced tier.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 221:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 222:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So that's it about the IP.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 223:
- Concepts: Address Governance and Allocation
- Services: (none explicit)
- Key Insights: So I hope this helps you for any questions in the exam around IP address management in AWS.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 224:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/246_AWS CloudFormation.txt

Line 1:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: Hello, and welcome to this lecture, AWS CloudFormation.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 2:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So, as I said, from the management services, we'll be looking at few services here, and we are talking about AWS CloudFormation, because we have seen some question, one or two times maybe around AWS CloudFormation.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 3:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So, first of all, let's understand what is AWS CloudFormation service.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 4:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: You can say, it is infrastructure as a code service.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 5:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, instead of manually creating everything, you can just write a code for that.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 6:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, if you're doing a lot of manual work for creating AWS infrastructure, like creating VPCs, and the Subnets, and the VPN connection, it is no more required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: And if you're working in AWS, I'm sure, you know AWS CloudFormation, because it's pretty much, very powerful service in AWS.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 8:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then, you can always create these resources interpretable manner in different AWS region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Maybe for day one test purpose, You are launching your resources in US, East one region, because cost is relatively lower there, but for production, you want to launch it in, maybe Singapore region.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 10:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: Then you can use the same CloudFormation template, and just deploy it in Singapore, right?
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 11:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, you can deploy same resources in another region, another AWS account.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 12:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: And, even if within the same region, if everything was deleted accidentally, you can recreate that using the CloudFormation.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 13:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, wouldn't it to be great?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 14:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: If you could do that as a code, of course, it'll be great.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 15:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: And that's where, it's AWS CloudFormation service, that helps you with.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 16:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, it's a declarative way of outlining your AWS infrastructure for any resources.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 17:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: Now, when we say any resources, typically what I have seen is, whenever AWS launches new AWS services, they will also have a support for that service in AWS CloudFormation.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Provisioning-governance signal.

Line 18:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And if you compare this with, maybe a third party tools, for example, you know, Terraform, you know, Ansible.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 19:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, these are not native to AWS, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 20:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And in that case, I think it will take some longer time for, you know, resources support to be available in those tools.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 21:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So yeah, most of the AWS resources are supported in AWS CloudFormation as of today.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 22:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: Now, why would you use AWS CloudFormation?
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 23:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Maybe you want to create everything, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 24:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: VPC, Subnets, internet gateways, security groups.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 25:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, we have been doing a lot of exercises, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 26:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: In this course, and you know that we are creating all this one by one, sequentially, manually, and it takes certain amount of time.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 27:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So, of course, we would want to use AWS CloudFormation instead, because it creates your resources in right order.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 28:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Because for example, if you're creating EC2, it knows that, it has to first create a subnet, and before subnet, it has to first create VPC.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 29:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So, all these dependencies typically managed by AWS CloudFormation internally.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 30:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: You don't have to really worry a lot, but there have been cases where you need to manage the dependency and we'll talk about that.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 31:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But then it creates those resources in the right order.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 32:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So, what are the benefits of CloudFormation, of course, infrastructure as a code, no resources created manually.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 33:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: That means no manual errors, code can be controlled using the git kind of repository.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 34:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, it's source controlled.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 35:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: That means you could also see or track the changes happening to your infrastructure through the code, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 36:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: So, if somebody changes your template, which has been added to git repository, you can review, what changes have been made to your infrastructure, just looking at that template change.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 37:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, it is reviewable.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 38:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Cost.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 39:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: You could also get a cost for per CloudFormation template, ultimately templates create resources.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 40:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So, what's the total cost of all those resources inside my AWS CloudFormation template, that cost you can get.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 41:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: Because CloudFormation adds automatically attached to every resource it creates.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 42:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: That means you could also, you know, estimate how much this CloudFormation template will cost, if somebody deploys that.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 43:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Further, you could also have a saving strategy, for example, in development environment, you want to delete everything at 5:00 PM, because it's a development, and you don't want those resources to be running throughout the night.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 44:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So, you could have this kind of automation set, because you created your all resources using CloudFormation, and you can make one API call to delete the CloudFormation stack that it created.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 45:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then, you are saving a lot of cost there.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 46:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, how does it work?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 47:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, it's very simple.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 48:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: You write a template.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 49:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: Template could be JSON and YAML, and you just store that template in S3 bucket, or you can even have it on your machine.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 50:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: You upload that in that case.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 51:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: And then, CloudFormation will create all the resources, which are part of that template.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 52:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: So, this is a simple template for VPC peering in the same account.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 53:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, this is a type of the resource.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 54:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: You define it.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 55:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And there is a documentation in AWS, which tells you what the resource name is, and what are the properties of the resources are.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 56:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, here we say, VPC ID is a current VPC, which is making and request for other VPC to peer.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 57:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then, there will be peer VPC ID.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 58:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So, after you deploy that in a CloudFormation, there will be a VPC peering, between this VPC and other remote VPC, basically.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 59:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, this is in the same AWS account, but that could be another AWS account as well.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 60:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And in that case, you add additional parameters here, who is the owner of that account?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 61:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: What is the rule that the other account will be using?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 62:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: What tags I need to add?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 63:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, not all the properties are mandatory.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 64:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Most of the properties are optional, as you can see here, but then, depending on what resources you create, there will be different properties.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 65:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: The best way to really check is to go to AWS documentation for CloudFormation and look at all those properties.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 66:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, this is just one example out there.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 67:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: Now, some feature and components of CloudFormation, which are again important to know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Provisioning-governance signal.

Line 68:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: CloudFormation Designer.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 69:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: As I said, you can provide the template, and CloudFormation can show you the diagrams on.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 70:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: You can also basically create those diagrams, and automatically it will create the CloudFormation template for you.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 71:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: ChangeSets, what it means is, if you have one CloudFormation template already developed, and then you deployed a stack using that CloudFormation.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 72:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, you want to change something.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 73:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: Maybe you want to add one more security group rule, for example, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 74:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: In that case, before making changes to your live environment, you want to make sure that you understand what changes your template is going to make to your environment.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 75:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So in that case, you create a ChangeSet.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 76:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Then it'll tell you that it's going to add a new security group, is that okay?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 77:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Then you review it, and then you go, and apply those changes.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 78:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: So, this is like a pre step before you apply new changes, or you update the template, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 79:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Before that you can look at this ChangeSets.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 80:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: StackSets.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 81:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: Now, if it's a same stack, and you want to deploy it across multiple AWS account, or multiple regions.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 82:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: Maybe you are a SAS provider and you want to deploy, you know, per customer one stack, exactly same stack in different regions or accounts.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 83:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Then you can use StackSets.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 84:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, you don't have to repeat those things for every account, rather StackSets will take care of that.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 85:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: Stack Policies.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 86:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Again, important one.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 87:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: Maybe you are creating CloudFormation stack with a lot of resources, and you want ability to delete those resources.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 88:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: You will just go and delete the CloudFormation stack.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 89:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But if you're using say a database, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 90:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: RDS.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 91:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And you don't want database to be deleted, because there is a lot of data in there, and that's valuable to you.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 92:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Even if you are deleting the environment, you want to reuse that data somewhere.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 93:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Or maybe if you're launching again an application, you want to use the same database.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 94:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: So, you could provide a Stack Policies, which says, don't delete this particular resource, delete everything else, but don't delete this.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 95:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: So, all that can be done using Stack Policies.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 96:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Few more, Cross Stacks.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 97:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: So, Cross Stacks are something like, you know, you have a base, stack basically.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 98:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So this is more, you know, programming kind of thing.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 99:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: Every other stack uses the same base stack.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 100:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: For example, you're creating one VPC.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 101:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And in that one VPC, you want to launch multiple applications.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 102:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: Now, instead of every application launching their own VPC, you use one VPC stack.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 103:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: As a separate stack, it'll just launch that VPC, and required subnets.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 104:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: And then, all the other stack will use the same VPC.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 105:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: So, they can refer the resources in the centralized, or base stack into their stack, basically.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 106:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, that is a Cross Stacks.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 107:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then, Nested Stacks.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 108:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: It's more about, you can reuse your existing stack.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 109:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So, instead of creating the RDS database, or including the code for RDS database into every CloudFormation template, you just wrap it into one separate CloudFormation template.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 110:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: And then, you could have one big CloudFormation template, which just refers to other template.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 111:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, you are not rewriting the code, basically.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 112:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: You are reusing your other CloudFormation templates, which you have already written.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 113:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, it also provides you some kind of standardization.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 114:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: You want to make sure the DBAs write this RDS stack, and nobody changes that, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 115:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: So, you just refer to those stack for creating the database rather than writing your own code.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 116:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 117:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Moving on.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 118:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: Many a times, it happens like in CloudFormation, you write a template, and then you want to make sure, before creating one of the resource, some other resource should be created.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Provisioning-governance signal.

Line 119:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, most of the time AWS manages that, but there are certain scenarios where AWS can't decide, whether you want to create resource first, and then add the entry somewhere, because it's all, not directly related.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 120:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: For example, if you want to create a VPN gateway in your architecture, and you also want to add a route table entry for that VPN gateway for route propagation.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 121:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, if you want to really enable that route propagation, first the VPN gateway has to be created.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 122:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: Now, CloudFormation natively you cannot manage that, but then CloudFormation provides you some levers, like for example, there is something called DependOn as an Attribute.
- Hidden/Implicit Meaning: Constraint or limitation signal; Provisioning-governance signal.

Line 123:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, what it does is, you can say, before creating the route table propagation, it DependsOn the VPN gateway resource.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 124:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So, what CloudFormation will do it, before creating this root propagation, it'll wait for your VPN gateway attachment to happen.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 125:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then only, it will enable that route propagation.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 126:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, this kind of conditions, helps you really manage the dependencies of the AWS resources.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 127:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, there is one more such condition like DependsOn, which is WaitCondition.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 128:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, WaitCondition is interesting.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 129:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Many a times, you would want that, you launch EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 130:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And also in that EC2 machine, you would want to install some applications.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 131:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, AWS won't know, what kind of application you're installing in EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 132:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Maybe you're using user data of the EC2 to, you know, download some packages, and install.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 133:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: And before you move to the next resources to be created through CloudFormation, you want to wait.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 134:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Because maybe then, EC2 also making a call to a database, or there is some dependencies between, you know, all these things.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 135:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, what you can do is, you can create a WaitCondition, and then, through your EC2 user data, you install everything, and you can send signal to the WaitCondition.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 136:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then, WaitCondition moves forward.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 137:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Otherwise it'll wait for the maximum time amount period, that you have defined.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 138:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, you can give your EC2 machine, to have maybe 10 minutes of, you know, boot strap time, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 139:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: If you put that under the WaitCondition.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 140:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, without WaitCondition, what would happen?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 141:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: CloudFormation will create EC2 instance.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 142:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So, as soon as EC2 instances up and running, CloudFormation thinks that, yeah, it is done, right?
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 143:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Let's move to the next resources to be created, or other parallel resources to be created.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 144:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But if there is some kind of dependencies, then it can't handle that.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 145:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: In that case, you would have to use WaitCondition.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 146:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, we are not using DependsOn clause here, because again, DependsOn just looks at the AWS resource creation.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 147:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: It doesn't really wait for EC2 to be become active, which only, you know, when the EC2 installs all the scripts inside within the user data, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 148:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, you have to externally make a signal to the WaitCondition, and there is a way to do that, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 149:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: It gives you one URL, you send a signal to that URL, which is S3 based URL, which WaitCondition handler gives you.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 150:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: And then, once that handler receives the signal as success, then only, CloudFormation will proceed from there.
- Hidden/Implicit Meaning: Constraint or limitation signal; Provisioning-governance signal.

Line 151:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: I know, little mercy here, but then, if you're interested, just read more about it through CloudFormation documentation.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 152:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But then, DependsOn and WaitConditions are the two things, we have seen, coming into your exam.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 153:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 154:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So, that's about the CloudFormation basically.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 155:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: And just, as I said, there is an extension to the CloudFormation, which is Cloud Development Kit.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 156:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: Now, CloudFormation itself is a template, which you write in a JSON or YAML format.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 157:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But if you want to really write a real code using Java, or a TypeScript, or Python.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 158:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So, it will create then CloudFormation.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 159:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, that's really the powerful, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 160:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: That means if you want to have some kind of, loop structures, if else condition, that is very difficult in CloudFormation, but then, with AWS Cloud Development Kit, which is CDK, you can write a code in these languages to generate the CloudFormation template.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 161:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then, you can deploy using the CDK CLI, basically.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 162:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: So, you write your code, you synthesize that code through CDK CLI, which generates the template.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 163:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: And then, you deploy that using the CloudFormation to create the stack, basically.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 164:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, that is CDK.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 165:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, you can write a code in Java, Python, as I said.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 166:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, this is the new way of doing the things.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 167:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then, you can also create libraries.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 168:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: It is called as CDK Construct.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 169:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, you can share your Construct with other developers.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 170:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: You could add that to your open source code, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 171:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, all the developers can use your code, and change it as required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 172:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: So, instead of really sharing the template, you are now sharing the code, which generates those templates.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 173:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And the process is like your cdk init, which folks a project into your repository.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 174:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: Then you build that, you synthesize that, which creates the template.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 175:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: If you are making an update to existing template, you can also look at the cdk diff, which is like a ChangeSets in CloudFormation.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 176:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then you say cdk deploy.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 177:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, ultimately same thing, but you know, doing it more in programmatic way.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 178:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: So, that's about CDK, and that's about the CloudFormation, that you need to know for your exam.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 179:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: I hope, most of the things are clear.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 180:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/247_AWS Service Catalog.txt

Line 1:
- Concepts: Service Provisioning Guardrails
- Services: Service Catalog
- Key Insights: Hello and welcome to this lecture, AWS Service Catalog.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 2:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So at the last lecture we saw AWS cloud formations which help us automate the creation of AWS resources.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 3:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: And for that, you have to write the template in JSON or YAML format, and then cloud formation does the rest.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 4:
- Concepts: Service Provisioning Guardrails
- Services: Service Catalog
- Key Insights: Now AWS service catalog is just one level above that.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 5:
- Concepts: Service Provisioning Guardrails
- Services: (none explicit)
- Key Insights: That means it abstracts the use of AWS cloud formation templates and then dependencies between the resources, the permissions for launching those resources, everything is wrapped inside a product and then end user will just see it as a product, they can browse through the product list and they just launch it.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 6:
- Concepts: Service Provisioning Guardrails
- Services: Service Catalog
- Key Insights: So AWS service catalog allows users to launch group of approved IT resources as a product in a self-service manner.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 7:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So if you grant access to those users for those products, they can only launch those products and then you can very well control which user can launch which products, which users cannot, all that can be managed.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: Now underlying it users, cloud formation as I said, so ultimately administrator has to create a cloud formation template but then end user doesn't need to care about that.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 9:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: These products can also be shared across AWS account, AWS organization units or even across AWS organization.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 10:
- Concepts: Service Provisioning Guardrails
- Services: Service Catalog
- Key Insights: That means if you create the service catalog products in your management account and then there are member accounts in the organization, all the member accounts can launch the products if these products have been shared with those users.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 11:
- Concepts: Infrastructure as Code Governance, Service Provisioning Guardrails
- Services: Service Catalog
- Key Insights: Now with respect to the IAM permissions typically for launching cloud formation template or creating cloud formation stack, users needs to have all the permissions which are required to create those AWS resources but then with AWS service catalog launch constraint you can define what are permissions this product requires to launch AWS resources.
- Hidden/Implicit Meaning: Constraint or limitation signal; Provisioning-governance signal.

Line 12:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So irrespective of whether user has that permissions or not, you can still manage those permissions as a part of launch constraint.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 13:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So, and again, the benefit is that you don't need to grant users all those permissions, but then you are managing those permissions internally.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 14:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Users can also optionally provide the parameters.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 15:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So if you know about the cloud formation, if you want to parameterize something, maybe EC2 instant size for development environment, you want that user can choose different sizes.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 16:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Similarly for production environment or staging environment, there are different kind of parameters available for users to choose.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 17:
- Concepts: Service Provisioning Guardrails
- Services: Service Catalog
- Key Insights: Now, same parameters can be applied for the AWS service catalog products as well.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 18:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So this gives bit of flexibility to your users to put or select the right parameter according to which enrollment they're launching these products for.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 19:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Administrator can also provide details like support email.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 20:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now this gives users an experience like they're launching any third party products, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 21:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: If something goes bad or user need help, they need to write to someone.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 22:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So as an administrator, with your products and portfolios you could also provide a support email in that case.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 23:
- Concepts: Infrastructure as Code Governance, Service Provisioning Guardrails
- Services: Service Catalog
- Key Insights: And then finally, the output section, similar to the cloud formation where you can write an output section so that after creating the cloud formation stack, user may know what their EC2 instance IP is if you include that in your output section or maybe your cloud formation is creating a web server then what the URL of that web server, all this can be managed through the cloud formation output section and the same thing is applied to service catalog products as well.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 24:
- Concepts: Service Provisioning Guardrails
- Services: Service Catalog
- Key Insights: So those are kind of features of service catalog.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 25:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: And if you want to just look at how it works, so administrator will write a template.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 26:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: Ultimately someone has to write the template, and then administrator will create multiple products out of those templates.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 27:
- Concepts: Service Provisioning Guardrails
- Services: (none explicit)
- Key Insights: And then he or she can group those products in the form of product portfolio.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 28:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then once the portfolio is created, now this portfolio can be granted access to different users either from your same AWS account or different AWS account or an account in different AWS organization.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 29:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now the user who gets this access can then browse all the products for which they have the access to and they will just launch those products.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 30:
- Concepts: Infrastructure as Code Governance
- Services: (none explicit)
- Key Insights: In the back end, AWS will create a cloud formation stack according to the products that user has chosen and then users ultimately get access to those stacks.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 31:
- Concepts: Service Provisioning Guardrails
- Services: (none explicit)
- Key Insights: Now, if you look at from the user's lens, then it is as simple as just browsing through all the products, selecting the product and launching the product.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 32:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: That's it, it's as simple as that.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 33:
- Concepts: Service Provisioning Guardrails
- Services: Service Catalog
- Key Insights: So ultimately, AWS service catalog is a service which gives product as a service experience to your users and underlying its uses AWS cloud formation.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 34:
- Concepts: Infrastructure as Code Governance, Service Provisioning Guardrails
- Services: Service Catalog
- Key Insights: So we have just seen this at very, very high level but if the question talks about productizing your network stack and then hiding the complexity of cloud formation, then AWS service catalog is the right service.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 35:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 36:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And we'll see more AWS management and governance services here.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 37:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/248_AWS Config.txt

Line 1:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Hello and welcome to this lecture, AWS Config.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 2:
- Concepts: Service Provisioning Guardrails
- Services: Service Catalog
- Key Insights: So we already saw a couple of AWS management and governance services including AWS cloud formation and AWS service catalog.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 3:
- Concepts: Service Provisioning Guardrails
- Services: Service Catalog
- Key Insights: Now the purpose of cloud formation and service catalog is to provision the AWS resources, that means the infrastructure for your solution.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 4:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then once that is done, probably you don't need to then look at AWS cloud formation again.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 5:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, what if you have a lot of resources created either through AWS cloud formation automatically or manually created resources are there in your AWS account and you want to know exact state of your resources, and then what changes have been made to these resources over the time?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 6:
- Concepts: Audit and Change Traceability
- Services: (none explicit)
- Key Insights: Now this is typically required for, again, maybe for audit purpose or something went bad with your AWS account, somebody deleted something and you want to find out the root cause or probably who did that from where the API call was made.
- Hidden/Implicit Meaning: Constraint or limitation signal; Compliance and auditability signal.

Line 7:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So if you really look at this problem, there are multiple services involved.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 8:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: First of all you should know exactly which resources were deleted and when, and then who deleted that resource.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So if you know already, AWS cloud is really the service which logs every API call that you make, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 10:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: But then there should be a service which really looks at all these things and then can give you a bit of view of what happened to a particular resource over the time.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And that's what exactly AWS conflict does.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 12:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So AWS config is all about tracking the state change of your AWS resources.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 13:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Just an example here, you have VPC and a lot of components provision in your AWS account.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 14:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Like VPCs, NAT gateways, EC2 machine, databases, security group, flow logs, route tables, a lot of things, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 15:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: And what you can do then is you can enable the AWS config for these resources.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 16:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: And once you enable the config, then config would make sure that it is tracking the changes happening to these resources.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 17:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And you can enable and disable the tracking for individual resources or you can just enable it for an entire AWS account.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 18:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So for example, there is a user now who goes and changes something into your security group, maybe user adds port 80 in your security group.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 19:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now your security policy says that port 80 should never be opened, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, how do you detect that?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 21:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So AWS conflict can also help you detect this kind of deviation from your standard practices.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 22:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So you could have a desired configuration.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 23:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: In AWS conflict terms it is called rule.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 24:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So rule will check, are there any security group which has a port 80 open?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 25:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And this rule will be run across all the security groups in your account.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 26:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And if there are no security group which has this kind of port open, it will say that your configurations look okay, but in case it finds some security groups which are deviating from the standard configuration, then it'll raise an alert.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 27:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Now this alert can then further be seen through SNS or it can be fetched to an API call for AWS config, can be shown in the dashboard, it can go as a cloud watch event.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 28:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then cloud watch even can then further trigger further action, the chain of lambdas or this event can also be stored in S3 bucket, and then it can be evaluated further.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 29:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So what you do with that event is a different thing, but ultimately AWS conflict can run those kind of desired configuration rules on your existing resource state and then it'll tell you if there is any problem with that.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 30:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So in short, AWS config does track the changes for configuration happening to the infrastructure.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 31:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And when to apply this rule, that means when to run this rule can be trigger on some action or it could be periodic.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 32:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: You may want to have like every six, I'll say, run this kind of rules so that it'll scan all my AWS resources and tell me whether the rules are compliant or not.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 33:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And there are already 280 plus predefined rules out there.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 34:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So AWS is coming up with managed rules so that you don't have to reinvent the wheel and rewrite the rules.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 35:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: These are some standard predefine rules.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 36:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: You can either use that or you can also write your own custom rules.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 37:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And for that, you have to write a lambda function.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 38:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So that's what you can do with AWS config.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 39:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So I hope the overview of AWS config is clear, why it is used and what it exactly does.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 40:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, there is one more thing to AWS conflict, that is auto remediation or manual remediation.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 41:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: What it means that if any rule fails, you could also trigger an action.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 42:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Typically it is done through AWS systems manager, right?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 43:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So you can write SSM documents.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 44:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: SSM documents are systems manager document.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 45:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: That means it's kind of script that you can write.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 46:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Like for Linux based machine, it could be a shell script, for a Windows based machine, it could be a power shell script.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 47:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: But ultimately, when some rule fail, you can trigger that auto remediation and then this SSM document will go and fix that problem.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 48:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, SSM document can do anything.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 49:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: You can make an API call through an SSM document which then ultimately fix that security group if somebody accidentally opens port 80 or if there is an EC2 instance which is using an AMI which is not approved AMI, then you could write an action like delete that EC2 instance all together.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 50:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So all that can be done using auto remediation or manual remediation in AWS config.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 51:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So if you look at any compliance of a resource over time, AWS config will give you that view.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 52:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: Like at certain day, the resource was compliant but then it became non-compliant and then again it became compliant because some rule was triggered and then auto remediation was triggered.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 53:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Similarly, you can view the configuration of resource over the time.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 54:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So you can really see at what time, what changed and who did that change.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 55:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: All that can be captured into the AWS conflict dashboard itself.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 56:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So this is a screenshot for AWS security group changes.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 57:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Likewise, you can monitor all your resources.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 58:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: Now you can also see AWS CloudTrail API which made that change so that you can trace on who was the user who made that API call.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 59:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So in summary, AWS config is a service which helps you record the configuration and changes over the time.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 60:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: And remember that AWS config does not prevent actions from happening.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 61:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: That means it doesn't say that do not allow adding port 80 to the security group, it can't do that because it's a reactive action, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 62:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: After somebody adds that rule, then AWS config rule can be triggered or it can be set in a periodic manner.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 63:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And then it'll detect that your security group is deviating from the defined rule.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 64:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So config can't really help prevent actions.
- Hidden/Implicit Meaning: Constraint or limitation signal; Compliance and auditability signal.

Line 65:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Now, the questions that can be solved by AWS config, here are a few examples.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 66:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Is there unrestricted access to my security group?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 67:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Are my buckets public?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 68:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Or has my ALB configuration changed over time?
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 69:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: If these are the questions that you want to answer, then AWS config should be used.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Compliance and auditability signal.

Line 70:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: You can also write custom rules that we have seen.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 71:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And for that, you would have to define the lambda functions.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 72:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Like for example, evaluate if each EBS disc is of type gp2 or evaluate if EC2 instance is t2micro, if instance is not t2micro maybe or to terminate that instance.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 73:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now finally, AWS conflict is a regional service.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 74:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: That means it is enabled for the resources in a given region, but then all the data it collects around the state of those resources can be aggregated across multiple region and multiple accounts.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 75:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And that becomes inventory of your AWS resources state basically.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 76:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So it's kind of CMDB you can call.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 77:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: If you heard that term, configuration management database of your infrastructure.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 78:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So that's it about AWS conflict service.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 79:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And this is again, a good tool to experiment with, it's more aligned to the DevOps again, but important if you want to really track changes, what's happening into your AWS networking space as well, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 80:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: If somebody changes some roots into your root table, then you can go back to the AWS conflict service and check what happened at what time and who did that.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 81:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So that's about AWS config.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 82:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/249_AWS CloudTrail.txt

Line 1:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: Hello and welcome to this lecture, AWS CloudTrail.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 2:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So I know sometimes these services could be confusing and you might not able to clearly tell what service does what.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 3:
- Concepts: Infrastructure as Code Governance
- Services: CloudFormation
- Key Insights: But understand that AWS CloudFormation is a service which helps you create the infrastructure in automated manner.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 4:
- Concepts: Service Provisioning Guardrails
- Services: Service Catalog
- Key Insights: Then AWS Service Catalog, it's just a wrapper over that.
- Hidden/Implicit Meaning: Provisioning-governance signal.

Line 5:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: And then AWS Config is the service which helps you track the changes which happens to your resources over the time.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 6:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: And how Config does it?
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 7:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: It basically gets the data from lot of internal AWS Services, and AWS Cloud release one of those service.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 8:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: So what is CloudTrail?
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 9:
- Concepts: Audit and Change Traceability
- Services: (none explicit)
- Key Insights: It provides audit for your AWS Account activities by logging in all API calls.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 10:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And it is enabled by default.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 11:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: Now, this is advisable as well that you should have CloudTrail enabled so that you can audit your account.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Compliance and auditability signal.

Line 12:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: If something happens to your account, maybe someone terminate some machines or someone is trying to get hold of your resources, then you can go to the CloudTrail and see what's happening.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 13:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now you can get also the history of API calls made within your AWS Account.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 14:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So these API calls could be made through console, or SDK, or CLI, or from another AWS Service.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 15:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: All these events are kept in AWS CloudTrail for 90 days by default.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 16:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then you can persist those further into the CloudWatch or S3.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 17:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: Now, if resource is deleted in AWS, look at the CloudTrail.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 18:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: That's the message, basically.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 19:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: That's the single source of truth for you to find out what happened, when it happened, and who did that?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 20:
- Concepts: Audit and Change Traceability, Continuous Compliance
- Services: AWS CloudTrail, AWS Config
- Key Insights: Now, if you followed the AWS Config lecture, it also does similar thing, but then Config is an abstraction over AWS CloudTrail and few other services.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 21:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: Now, AWS CloudTrail are regional by default, but then you could also enable the global-level CloudTrail event such that, you know, AWS IAM is a global service.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 22:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: It is not per region.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 23:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: But then CloudTrail also can log all the API calls made to the AWS IAM service.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 24:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: And if you want to collect the CloudTrail from different regions into a single S3 bucket, you can also do that.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 25:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And we'll just see that shortly.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 26:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So this is how it works.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 27:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: You would have AWS Accounts.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 28:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then inside Account, you use multiple AWS Regions.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 29:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: And then you can create CloudTrail Trail.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 30:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: Now CloudTrail trail is a sequence of all these events which can then persisted into maybe S3 or maybe in CloudWatch for, you know, long-term archival.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 31:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, you can create a trail.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 32:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: You can create a trail and all that trail can go to a single S3 bucket, or it can go to an individual S3 bucket per region.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 33:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: Now choice is up to you, but the CloudTrail trail can be collected into a one single S3 bucket.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 34:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, why do we do that?
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 35:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Basically, once you have these events in S3 bucket, then you can apply some logic or you can query that data using AWS Athena service, for example.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 36:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Now, Athena is an SQL interface to S3.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 37:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: If your data is in CSV format, then Athena can query that data.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 38:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then you can get a deeper insights about your data.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 39:
- Concepts: Audit and Change Traceability
- Services: (none explicit)
- Key Insights: Similarly, this data can also be sent to elastic search or open search, and then you can run your searches on top of that data, or this can go to a third-party logging tool or some SIM system for audit purpose.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 40:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And alternatively, if you have an event in CloudWatch, you can write a CloudWatch filter, which looks at those logs and maybe some interesting event you got, you can create an alarm on top of that.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 41:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And then you can send an SMS notification via SMS or email, whatever you prefer.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 42:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: So ultimately you have full control because this CloudTrail logs, you get in CloudWatch or S3, and then you decide what to do of these logs.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 43:
- Concepts: Audit and Change Traceability
- Services: (none explicit)
- Key Insights: I have seen cases where maybe customer wants to collect all these logs from all accounts at one place and then provide access to the audit team to look at if they see any suspicious activity into their AWS Account.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 44:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: So this can be very well done with CloudTrail trails.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 45:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: This is a sample event.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 46:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: You can see I've masked some of the data.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 47:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: But if you see CloudTrail event, it shows you who was the user, what time this event occurred, what action was triggered, and then what resource it was triggered on.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 48:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And there are a lot of other information data points as well, but at bare minimum, this is the information you would look for and then you can find out what happened at what time.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 49:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: So essentially that is a CloudTrail, very important service with respect to security and audit purpose, and all the actions with respect to the networking where you are creating the VPCs, or subnets, or whatever, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Compliance and auditability signal.

Line 50:
- Concepts: Audit and Change Traceability
- Services: AWS CloudTrail
- Key Insights: All the actions are captured in AWS CloudTrail.
- Hidden/Implicit Meaning: Compliance and auditability signal.

Line 51:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So that's it about this lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 52:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: I hope you understand well the difference between all the management and governance services that we talked about in this section.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 53:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: And we just touched upon all this services at a very high level, because for AWS Networking Specialty Certification, these are not mandatory, but just good to know.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 54:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this section.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

Line 55:
- Concepts: Governance Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes networking governance detail.

## Step 2 — Consolidation

### 1. Concepts List
- Address Governance and Allocation
- Audit and Change Traceability
- Continuous Compliance
- Governance Operational Context
- Infrastructure as Code Governance
- Service Provisioning Guardrails

### 2. Services List
- AWS CloudTrail
- AWS Config
- CloudFormation
- Service Catalog
- VPC IP Address Manager

### 3. Features List
- cidr
- cloudformation
- cloudtrail
- config
- ipam
- rule
- service catalog
- stack

### 4. Use Cases
- 244_Introduction to AWS Management & Governance Services.txt:3: And to be honest, the AWS management and governance services are more related to other AWS certification, for example, for solutions architect professional or for the Devops certification exam.
- 245_Amazon VPC IP Address Manager (IPAM).txt:6: Then I will just show you quickly how you can create IPAM pools and then use those pools to allocate IP addresses to your VPCs.
- 245_Amazon VPC IP Address Manager (IPAM).txt:13: So when you begin, probably you can have simple Excel sheets in which you have the list of VPCs and corresponding CDR ranges.
- 245_Amazon VPC IP Address Manager (IPAM).txt:14: So that whenever some new VPC has to be created, you can just look at your Excel and see, OK, this CIDR block is not used.
- 245_Amazon VPC IP Address Manager (IPAM).txt:17: But at very high level, you create the pools of IP addresses and then you make sure that when you create VPCs, you allocate the VPC CIDR from those pools only.
- 245_Amazon VPC IP Address Manager (IPAM).txt:25: So when you enable the IPAM, the public and private scopes are created for you and then once you have this scope, then you can create the pools.
- 245_Amazon VPC IP Address Manager (IPAM).txt:28: For example, if you see this diagram, there is one single Global pool and inside that you can create pools per AWS Region.
- 245_Amazon VPC IP Address Manager (IPAM).txt:31: And then when you create the VPC, you can allocate VPC CIDR from these sub pools and this make sure that you are organizing your big address space into a smaller pools and then you're allocating your VPC, CIDR from those small pools.
- 245_Amazon VPC IP Address Manager (IPAM).txt:37: And within that, you can create a pool specific to a particular environment, for example, for Development, Staging or Prod.
- 245_Amazon VPC IP Address Manager (IPAM).txt:38: And now when you create a VPC, you first decide that this VPC will be for Development environment in a particular Region.
- 245_Amazon VPC IP Address Manager (IPAM).txt:42: For example, you have the IP address space which is a Global pool.
- 245_Amazon VPC IP Address Manager (IPAM).txt:43: And inside that first you create the pools as per your environments, for example, production development.
- 245_Amazon VPC IP Address Manager (IPAM).txt:67: So here this is just an example to enforce use of IPAM in the member account.
- 245_Amazon VPC IP Address Manager (IPAM).txt:72: So moving forward IPAM also allows you to write rules, which means when you create the VPC, you can specify that this IPAM pool should only be allowed to be used if you're having the right permissions.
- 245_Amazon VPC IP Address Manager (IPAM).txt:75: And now when a user is trying to create a VPC, these conditions can be evaluated.
- 245_Amazon VPC IP Address Manager (IPAM).txt:77: And then you can use this to allocate to your resources, for example, to your VPC.
- 245_Amazon VPC IP Address Manager (IPAM).txt:78: And if any of the rule doesn't meet the criteria, then of course, IPAM won't be able to allocate CIDR and then you won't be able to create the VPC.
- 245_Amazon VPC IP Address Manager (IPAM).txt:80: For example, if you are setting up your on-premises network and you want to have some private CIDR range, then you can also ask IPAM to provide you the range and then that range you can use to allocate to your on-premises network.
- 245_Amazon VPC IP Address Manager (IPAM).txt:83: For example, in the beginning, maybe you might have been asking your network admin for the CIDR ranges and then you create a cloud formation template provide that CIDR range and cloudformation will create the VPC.
- 245_Amazon VPC IP Address Manager (IPAM).txt:148: So this is my development environment and I want to allocate 16,000 IP addresses out of 65,000 for the Mumbai pool.
- 245_Amazon VPC IP Address Manager (IPAM).txt:161: So you can create, for example, testing with 10.0.64.0/18.
- 245_Amazon VPC IP Address Manager (IPAM).txt:200: For example, if you want to see the allocation to VPCs or to the subnets or to the ENIs all that can be done through the dashboard.
- 245_Amazon VPC IP Address Manager (IPAM).txt:220: You can manage the public IP space and for private IP space, you have to enable the advanced tier and there is a small cost when you enable the advanced tier.
- 246_AWS CloudFormation.txt:17: Now, when we say any resources, typically what I have seen is, whenever AWS launches new AWS services, they will also have a support for that service in AWS CloudFormation.
- 246_AWS CloudFormation.txt:18: And if you compare this with, maybe a third party tools, for example, you know, Terraform, you know, Ansible.
- 246_AWS CloudFormation.txt:28: Because for example, if you're creating EC2, it knows that, it has to first create a subnet, and before subnet, it has to first create VPC.
- 246_AWS CloudFormation.txt:43: Further, you could also have a saving strategy, for example, in development environment, you want to delete everything at 5:00 PM, because it's a development, and you don't want those resources to be running throughout the night.
- 246_AWS CloudFormation.txt:73: Maybe you want to add one more security group rule, for example, right?
- 246_AWS CloudFormation.txt:100: For example, you're creating one VPC.
- 246_AWS CloudFormation.txt:120: For example, if you want to create a VPN gateway in your architecture, and you also want to add a route table entry for that VPN gateway for route propagation.
- 246_AWS CloudFormation.txt:122: Now, CloudFormation natively you cannot manage that, but then CloudFormation provides you some levers, like for example, there is something called DependOn as an Attribute.
- 246_AWS CloudFormation.txt:147: It doesn't really wait for EC2 to be become active, which only, you know, when the EC2 installs all the scripts inside within the user data, right?
- 248_AWS Config.txt:8: First of all you should know exactly which resources were deleted and when, and then who deleted that resource.
- 248_AWS Config.txt:18: So for example, there is a user now who goes and changes something into your security group, maybe user adds port 80 in your security group.
- 248_AWS Config.txt:31: And when to apply this rule, that means when to run this rule can be trigger on some action or it could be periodic.
- 248_AWS Config.txt:47: But ultimately, when some rule fail, you can trigger that auto remediation and then this SSM document will go and fix that problem.
- 248_AWS Config.txt:72: Like for example, evaluate if each EBS disc is of type gp2 or evaluate if EC2 instance is t2micro, if instance is not t2micro maybe or to terminate that instance.
- 249_AWS CloudTrail.txt:19: That's the single source of truth for you to find out what happened, when it happened, and who did that?
- 249_AWS CloudTrail.txt:35: Basically, once you have these events in S3 bucket, then you can apply some logic or you can query that data using AWS Athena service, for example.

### 5. Constraints / Limitations
- 244_Introduction to AWS Management & Governance Services.txt:5: So let's try to focus on what is really important.
- 244_Introduction to AWS Management & Governance Services.txt:21: So it's important that you understand the concept and it is expected that you are able to relate to the service to the given questions and we will cover this topic at least to that tape.
- 245_Amazon VPC IP Address Manager (IPAM).txt:11: So it's the best practice to, you know, manage these IP addresses in such a way that no two VPCs probably have the overlapping CIDRS.
- 245_Amazon VPC IP Address Manager (IPAM).txt:17: But at very high level, you create the pools of IP addresses and then you make sure that when you create VPCs, you allocate the VPC CIDR from those pools only.
- 245_Amazon VPC IP Address Manager (IPAM).txt:24: Because for public IP addresses, you need to Bring Your Own IPs (BYOIP), which unfortunately, we can't do here.
- 245_Amazon VPC IP Address Manager (IPAM).txt:47: And if you're interested, you can just check out this blog which talks about some best practices for creating the IP Pools.
- 245_Amazon VPC IP Address Manager (IPAM).txt:53: But essentially, it is kind of best practices to manage your AWS organization accounts so that there is a separation of duties, security is taken care, network is Centralized and all member accounts can have their own control.
- 245_Amazon VPC IP Address Manager (IPAM).txt:58: And for that, what IPAM suggests that you should have a separate network admin account in which you enable the IPAM.
- 245_Amazon VPC IP Address Manager (IPAM).txt:60: So there should be a Dedicated IPAM administrator account in your AWS organization.
- 245_Amazon VPC IP Address Manager (IPAM).txt:61: And this account of course, should be a member of AWS organization.
- 245_Amazon VPC IP Address Manager (IPAM).txt:63: Now, SCP is service control policies which enforces that all the members account in my AWS organization should not be able to perform, you know, some actions.
- 245_Amazon VPC IP Address Manager (IPAM).txt:65: That means all the IP addresses should be assigned using the IPAM.
- 245_Amazon VPC IP Address Manager (IPAM).txt:72: So moving forward IPAM also allows you to write rules, which means when you create the VPC, you can specify that this IPAM pool should only be allowed to be used if you're having the right permissions.
- 245_Amazon VPC IP Address Manager (IPAM).txt:79: And this doesn't really work only for the VPCs, but you can use this CIDR for non AWS resources as well.
- 245_Amazon VPC IP Address Manager (IPAM).txt:104: Now, the difference is that in free tier, you can only manage the public IPv4 addresses.
- 245_Amazon VPC IP Address Manager (IPAM).txt:109: And then here in the operating Region, you should select all the Region in which you want to use the IPAM.
- 245_Amazon VPC IP Address Manager (IPAM).txt:111: So that's the base Region for the IPAM, but you should also add other regions in which you want to use IPAM.
- 245_Amazon VPC IP Address Manager (IPAM).txt:115: And now for the next part, we are going to use our private scope only.
- 245_Amazon VPC IP Address Manager (IPAM).txt:156: And additionally, we will say every VPC that you create should have the environment tag as a development.
- 245_Amazon VPC IP Address Manager (IPAM).txt:157: Then only IPAM can allocate this to the VPC, right?
- 245_Amazon VPC IP Address Manager (IPAM).txt:166: So we have required pool created.
- 245_Amazon VPC IP Address Manager (IPAM).txt:171: Now to begin with, I'm not putting the tag for the VPC and now I'm trying to create this VPC and it says that there was an error because the resource is missing one or more resource tag required by the IPAM pool, right?
- 245_Amazon VPC IP Address Manager (IPAM).txt:194: So if you are designing IPAM for your organization, what I will suggest that first you plan it and for that, I would say put everything onto the paper, like how exactly you want to create these pools and how many IP addresses you should be allocating to these pools.
- 246_AWS CloudFormation.txt:6: So, if you're doing a lot of manual work for creating AWS infrastructure, like creating VPCs, and the Subnets, and the VPN connection, it is no more required.
- 246_AWS CloudFormation.txt:67: Now, some feature and components of CloudFormation, which are again important to know.
- 246_AWS CloudFormation.txt:86: Again, important one.
- 246_AWS CloudFormation.txt:103: As a separate stack, it'll just launch that VPC, and required subnets.
- 246_AWS CloudFormation.txt:118: Many a times, it happens like in CloudFormation, you write a template, and then you want to make sure, before creating one of the resource, some other resource should be created.
- 246_AWS CloudFormation.txt:119: Now, most of the time AWS manages that, but there are certain scenarios where AWS can't decide, whether you want to create resource first, and then add the entry somewhere, because it's all, not directly related.
- 246_AWS CloudFormation.txt:122: Now, CloudFormation natively you cannot manage that, but then CloudFormation provides you some levers, like for example, there is something called DependOn as an Attribute.
- 246_AWS CloudFormation.txt:125: And then only, it will enable that route propagation.
- 246_AWS CloudFormation.txt:144: But if there is some kind of dependencies, then it can't handle that.
- 246_AWS CloudFormation.txt:147: It doesn't really wait for EC2 to be become active, which only, you know, when the EC2 installs all the scripts inside within the user data, right?
- 246_AWS CloudFormation.txt:150: And then, once that handler receives the signal as success, then only, CloudFormation will proceed from there.
- 246_AWS CloudFormation.txt:171: So, all the developers can use your code, and change it as required.
- 247_AWS Service Catalog.txt:7: So if you grant access to those users for those products, they can only launch those products and then you can very well control which user can launch which products, which users cannot, all that can be managed.
- 247_AWS Service Catalog.txt:11: Now with respect to the IAM permissions typically for launching cloud formation template or creating cloud formation stack, users needs to have all the permissions which are required to create those AWS resources but then with AWS service catalog launch constraint you can define what are permissions this product requires to launch AWS resources.
- 248_AWS Config.txt:6: Now this is typically required for, again, maybe for audit purpose or something went bad with your AWS account, somebody deleted something and you want to find out the root cause or probably who did that from where the API call was made.
- 248_AWS Config.txt:8: First of all you should know exactly which resources were deleted and when, and then who deleted that resource.
- 248_AWS Config.txt:10: But then there should be a service which really looks at all these things and then can give you a bit of view of what happened to a particular resource over the time.
- 248_AWS Config.txt:19: Now your security policy says that port 80 should never be opened, right?
- 248_AWS Config.txt:61: That means it doesn't say that do not allow adding port 80 to the security group, it can't do that because it's a reactive action, right?
- 248_AWS Config.txt:64: So config can't really help prevent actions.
- 248_AWS Config.txt:69: If these are the questions that you want to answer, then AWS config should be used.
- 248_AWS Config.txt:79: And this is again, a good tool to experiment with, it's more aligned to the DevOps again, but important if you want to really track changes, what's happening into your AWS networking space as well, right?
- 249_AWS CloudTrail.txt:11: Now, this is advisable as well that you should have CloudTrail enabled so that you can audit your account.
- 249_AWS CloudTrail.txt:49: So essentially that is a CloudTrail, very important service with respect to security and audit purpose, and all the actions with respect to the networking where you are creating the VPCs, or subnets, or whatever, right?

### 6. Patterns / Architectures
- 244_Introduction to AWS Management & Governance Services.txt:1: Hi, welcome to this section that is management and governance.
- 244_Introduction to AWS Management & Governance Services.txt:3: And to be honest, the AWS management and governance services are more related to other AWS certification, for example, for solutions architect professional or for the Devops certification exam.
- 244_Introduction to AWS Management & Governance Services.txt:7: So in management and governance, we can divide this in two sections.
- 244_Introduction to AWS Management & Governance Services.txt:8: One is about the network management and second is about general management and governance services which are applicable to most of the other Aws components as well.
- 244_Introduction to AWS Management & Governance Services.txt:13: And then for network monitoring and troubleshooting, you can use reach ability analyzer and for security and governance, you can use network access analyzer.
- 244_Introduction to AWS Management & Governance Services.txt:18: So if I talk about in general AWS management and governance services, there are lot of services and it doesn't make sense to cover all these services in detail.
- 245_Amazon VPC IP Address Manager (IPAM).txt:53: But essentially, it is kind of best practices to manage your AWS organization accounts so that there is a separation of duties, security is taken care, network is Centralized and all member accounts can have their own control.
- 245_Amazon VPC IP Address Manager (IPAM).txt:54: But still you are having the governance at the management account level.
- 245_Amazon VPC IP Address Manager (IPAM).txt:66: Now if you put this governance policy in place, then you are sure that all the member accounts will have non-overlapping IP addresses which is assigned by using the IPAM.
- 245_Amazon VPC IP Address Manager (IPAM).txt:177: So let's go back and check our IPAM and in the pools, if you just go to the development pool, let's look at the compliance requirement and is key OK?
- 246_AWS CloudFormation.txt:105: So, they can refer the resources in the centralized, or base stack into their stack, basically.
- 246_AWS CloudFormation.txt:120: For example, if you want to create a VPN gateway in your architecture, and you also want to add a route table entry for that VPN gateway for route propagation.
- 247_AWS Service Catalog.txt:36: And we'll see more AWS management and governance services here.
- 248_AWS Config.txt:2: So we already saw a couple of AWS management and governance services including AWS cloud formation and AWS service catalog.
- 248_AWS Config.txt:6: Now this is typically required for, again, maybe for audit purpose or something went bad with your AWS account, somebody deleted something and you want to find out the root cause or probably who did that from where the API call was made.
- 248_AWS Config.txt:51: So if you look at any compliance of a resource over time, AWS config will give you that view.
- 249_AWS CloudTrail.txt:9: It provides audit for your AWS Account activities by logging in all API calls.
- 249_AWS CloudTrail.txt:11: Now, this is advisable as well that you should have CloudTrail enabled so that you can audit your account.
- 249_AWS CloudTrail.txt:39: Similarly, this data can also be sent to elastic search or open search, and then you can run your searches on top of that data, or this can go to a third-party logging tool or some SIM system for audit purpose.
- 249_AWS CloudTrail.txt:43: I have seen cases where maybe customer wants to collect all these logs from all accounts at one place and then provide access to the audit team to look at if they see any suspicious activity into their AWS Account.
- 249_AWS CloudTrail.txt:49: So essentially that is a CloudTrail, very important service with respect to security and audit purpose, and all the actions with respect to the networking where you are creating the VPCs, or subnets, or whatever, right?
- 249_AWS CloudTrail.txt:52: I hope you understand well the difference between all the management and governance services that we talked about in this section.

## Step 3 — Deep Expansion (Governance and Operations Concepts)

### VPC IPAM
- What it is: Central IP space planning and allocation service for AWS networking estates.
- Why it exists: Prevents CIDR overlap, unmanaged allocation, and growth chaos across accounts/regions.
- Internal working: Pools and scopes govern allocation lifecycle and visibility.
- Architecture: Central networking account allocating standardized CIDR ranges to environments.
- Key components: Pools, scopes, allocations, monitoring and governance workflows.

### Compliance and Audit Controls
- What it is: Continuous state evaluation and change-history telemetry for network governance.
- Why it exists: Detects drift and proves who changed what and when.
- Internal working: Config evaluates desired state while CloudTrail records API activity and control-plane changes.
- Architecture: Central governance account with org-wide visibility and exception workflows.
- Key components: Rules, trails, evidence storage, remediation hooks.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Central IP address governance | VPC IPAM | Azure IPAM/address governance patterns | IP address governance patterns |
| IaC governance | CloudFormation | ARM/Bicep | Deployment Manager/Terraform patterns |
| Catalog-based controlled provisioning | Service Catalog | Managed application/catalog patterns | Service catalog patterns |
| Compliance and audit telemetry | Config + CloudTrail | Policy + Activity Logs | Config-validator + Audit Logs |

### Trade-offs and Decision Notes
- Governance tooling only adds value when platform teams actively enforce lifecycle discipline.
- IP address governance becomes critical as multi-account networking estates grow.
- Auditability without clear ownership usually results in noise instead of control.

## Phase-wise Architect-Level Organization

### Phase 1 — Foundations
- Decide what must be governed centrally: address space, provisioning, compliance, and audit.
- Assign ownership for exceptions, allocations, and remediation workflows.

### Phase 2 — Core Services
- Implement IPAM, IaC controls, service catalog, config evaluation, and audit trails coherently.
- Ensure governance outputs are usable by platform and network teams, not just stored.

### Phase 3 — Advanced Patterns
- Integrate provisioning guardrails with continuous compliance and change traceability.
- Standardize evidence collection for audits and post-incident reviews.

### Phase 4 — System Design
- Reference architecture: central networking governance account with allocation, compliance, and audit services.
- Scaling considerations: multi-account allocation drift, exception sprawl, evidence retention.
- Cost considerations: governance overhead, log retention, and compliance operations automation.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: Governance should reduce entropy, not create more tickets without clarity.
- Signal 2: Then I will just show you quickly how you can create IPAM pools and then use those pools to allocate IP addresses to your VPCs.
- Signal 3: So if you are starting with AWS, probably you would have just a couple of VPCs and your on-premises network and then you will create these VPCs allocate CIDRs and then make sure that these VPCs can communicate with ea...
- Signal 4: Governance tools without process ownership do not create real control.
- Signal 5: Key Insights: So we are not going to see the AWS network manager in detail because ultimately, it's just a portal through which you can do a lot of other things.
- Signal 6: Key Insights: Now, one more thing that we are not focusing on lots of hands-on for these services because we want to be frugal with the time.
- Signal 7: Key Insights: Then I will just show you quickly how you can create IPAM pools and then use those pools to allocate IP addresses to your VPCs.
- Signal 8: Key Insights: So if you are starting with AWS, probably you would have just a couple of VPCs and your on-premises network and then you will create these VPCs allocate CIDRs and then make sure that these VPCs can communicate with each other using say Transit gateways or VPC peering connection.
- Signal 9: Key Insights: But at very high level, you create the pools of IP addresses and then you make sure that when you create VPCs, you allocate the VPC CIDR from those pools only.
- Signal 10: Key Insights: So that irrespective of how many number of VPCs you create, you are sure that this VPC will never get the overlapping IP addresses.

### Service-Specific Lab Paths
### Activity 1: Amazon VPC Lab for Networking management and governance services including IPAM, CloudFormation, Service Catalog, Config, and CloudTrail
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

### Activity 2: Amazon EC2 Lab for Networking management and governance services including IPAM, CloudFormation, Service Catalog, Config, and CloudTrail
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

### Activity 3: Amazon CloudWatch Lab for Networking management and governance services including IPAM, CloudFormation, Service Catalog, Config, and CloudTrail
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

### Activity 4: Elastic Load Balancing Lab for Networking management and governance services including IPAM, CloudFormation, Service Catalog, Config, and CloudTrail
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

Use this lens to study Networking management and governance services including IPAM, CloudFormation, Service Catalog, Config, and CloudTrail in a cloud-agnostic way: focus on capability first, provider name second.

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
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| Amazon EC2 | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Amazon CloudWatch | Amazon CloudWatch | Azure Monitor | Cloud Monitoring |
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

