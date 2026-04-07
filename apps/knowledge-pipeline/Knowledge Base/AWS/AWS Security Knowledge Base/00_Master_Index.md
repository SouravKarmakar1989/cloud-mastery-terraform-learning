# AWS Security Knowledge Base — Master Index

This is the master index for the zero-loss, cross-cloud, architect-level AWS Security Knowledge Base. All content is extracted line-by-line from raw transcripts, deduplicated, deeply expanded, and mapped across AWS, Azure, and GCP.

---

## Structure
- 15 deep-dive files, each covering a major security topic
- Each file: Foundations → Core Services → Advanced Patterns → System Design
- Every concept, service, feature, use case, constraint, and real-world pattern is included
- Cross-cloud mapping for every major concept/service

---

## Deep-Dive Files
| # | File | Topic |
|---|------|-------|
| 01 | 01_IAM_Core.md | IAM Core: Users, Groups, Policies, Roles, Best Practices |
| 02 | 02_IAM_Advanced.md | IAM Advanced: Boundaries, ABAC, Policy Logic, STS, IMDS |
| 03 | 03_Authentication_Federation.md | Authentication & Federation: MFA, SAML, OIDC, Cognito, IAM Identity Center |
| 04 | 04_Directory_Organizations.md | Directory Services, Organizations, SCPs, Control Tower, RAM |
| 05 | 05_KMS_Cryptography.md | KMS, Key Management, CloudHSM, Encryption 101 |
| 06 | 06_Secrets_Certificates.md | SSM Parameter Store, Secrets Manager, ACM, SSL/TLS |
| 07 | 07_S3_Security.md | S3 Security: Encryption, Policies, Access Points, CORS, MFA Delete, Object Lock |
| 08 | 08_Detection_Threat.md | Detection & Threat: GuardDuty, Security Hub, Detective, Inspector, Macie |
| 09 | 09_Logging_Monitoring.md | Logging & Monitoring: CloudTrail, CloudWatch, VPC Flow Logs, EventBridge, Athena |
| 10 | 10_Network_Security.md | Network Security: WAF, Shield, Firewall Manager, CloudFront, DDoS, DNSSEC |
| 11 | 11_VPC_Connectivity_Security.md | VPC Connectivity: Endpoints, PrivateLink, VPN, Direct Connect, NACLs, Security Groups |
| 12 | 12_Incident_Response.md | Incident Response: Pen Testing, DDoS Sim, Compromised Resources, SSM, EC2 Rescue |
| 13 | 13_Governance_Compliance.md | Governance & Compliance: Config, Trusted Advisor, Well-Architected, CloudFormation, Audit |
| 14 | 14_Data_Protection_Storage.md | Data Protection & Storage: EBS, EFS, RDS, ELB, Backup, Nitro Enclaves |
| 15 | 15_Service_Security.md | Service Security: ECR/ECS/EKS, Lambda, API Gateway, Glue, WorkSpaces |

---

## How to Use
- Use this index to navigate to any deep-dive file
- Each file is organized phase-wise (Foundations → System Design)
- Every AWS service is mapped to Azure/GCP equivalents with trade-offs
- All exam-relevant, real-world, and hidden insights are included

---

### Start Here (Real Material)
- Domain 1 detection study material is now available in the Real Material section of 08_Detection_Threat.md.
- Domain 1 logging and monitoring study material is now available in the Real Material section of 09_Logging_Monitoring.md.
- Domain 2 incident response study material is now available in the Real Material section of 12_Incident_Response.md.
- Domain 3 network security study material is now available in the Real Material section of 10_Network_Security.md.
- Domain 3 VPC connectivity security study material is now available in the Real Material section of 11_VPC_Connectivity_Security.md.
- Domain 4 IAM core study material is now available in the Real Material section of 01_IAM_Core.md.
- Domain 4 IAM advanced study material is now available in the Real Material section of 02_IAM_Advanced.md.
- Domain 4 authentication and federation study material is now available in the Real Material section of 03_Authentication_Federation.md.
- Domain 4 directory and organizations study material is now available in the Real Material section of 04_Directory_Organizations.md.
- Domain 5 KMS and cryptography study material is now available in the Real Material section of 05_KMS_Cryptography.md.
- Domain 5 secrets and certificates study material is now available in the Real Material section of 06_Secrets_Certificates.md.
- Domain 5 S3 security study material is now available in the Real Material section of 07_S3_Security.md.
- Domain 5 data protection and storage study material is now available in the Real Material section of 14_Data_Protection_Storage.md.
- Domain 6 governance and compliance study material is now available in the Real Material section of 13_Governance_Compliance.md.
- Domain 7 other services security study material is now available in the Real Material section of 15_Service_Security.md.
- Workflow moving forward: generate architect-grade Real Material sections topic by topic, while preserving line-by-line extraction sections for auditability.

---

## Domain-by-Domain Learning Material Plan

### Domain 1 - Detection
- Topic 1: 08_Detection_Threat.md
- Topic 2: 09_Logging_Monitoring.md

### Domain 2 - Incident Response
- Topic 1: 12_Incident_Response.md

### Domain 3 - Infrastructure Security
- Topic 1: 10_Network_Security.md
- Topic 2: 11_VPC_Connectivity_Security.md

### Domain 4 - Identity and Access Management
- Topic 1: 01_IAM_Core.md
- Topic 2: 02_IAM_Advanced.md
- Topic 3: 03_Authentication_Federation.md
- Topic 4: 04_Directory_Organizations.md

### Domain 5 - Data Protection
- Topic 1: 05_KMS_Cryptography.md
- Topic 2: 06_Secrets_Certificates.md
- Topic 3: 07_S3_Security.md
- Topic 4: 14_Data_Protection_Storage.md

### Domain 6 - Security Foundations and Governance
- Topic 1: 13_Governance_Compliance.md

### Domain 7 - Other Services Security
- Topic 1: 15_Service_Security.md

### Execution Order (Domain First, Then Topic)
- 1) Domain 1
- 2) Domain 2
- 3) Domain 3
- 4) Domain 4
- 5) Domain 5
- 6) Domain 6
- 7) Domain 7

## Cross-References
- [Concept → File] and [Service → File] lookups will be added as files are populated
- Each file will have a mini-index for its covered concepts/services

---

## Status
- [x] All files created
- [x] Line-by-line extraction completed for all 15 files
- [x] Deduplication and deep expansion sections generated in all files
- [x] Cross-cloud mapping included in all files
- [x] Architect-level phase organization included in all files

---

## Output Stats (Current)
| File | Extracted Lines |
|---|---:|
| 01_IAM_Core.md | 1270 |
| 02_IAM_Advanced.md | 757 |
| 03_Authentication_Federation.md | 836 |
| 04_Directory_Organizations.md | 1006 |
| 05_KMS_Cryptography.md | 1337 |
| 06_Secrets_Certificates.md | 961 |
| 07_S3_Security.md | 1836 |
| 08_Detection_Threat.md | 1846 |
| 09_Logging_Monitoring.md | 1453 |
| 10_Network_Security.md | 1719 |
| 11_VPC_Connectivity_Security.md | 1019 |
| 12_Incident_Response.md | 1061 |
| 13_Governance_Compliance.md | 874 |
| 14_Data_Protection_Storage.md | 569 |
| 15_Service_Security.md | 860 |
| **Total** | **17404** |

---

*This knowledge base is under active construction. Every concept, service, and insight from the raw transcripts will be captured with zero information loss.*


## Reverse Index (Auto-Generated)

Generated from each file's consolidated lists and refreshed automatically.

### Concept -> Files
- Access Boundary Controls: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- Access Control Enforcement: 05_KMS_Cryptography.md, 06_Secrets_Certificates.md, 07_S3_Security.md
- Audit Logging: 09_Logging_Monitoring.md
- Authorization Model: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- Automation: 08_Detection_Threat.md
- Centralized Security Governance: 10_Network_Security.md
- Certificate and TLS Security: 05_KMS_Cryptography.md, 06_Secrets_Certificates.md, 07_S3_Security.md
- Compliance Visibility: 08_Detection_Threat.md
- Containment and Recovery: 12_Incident_Response.md
- Continuous Compliance: 13_Governance_Compliance.md, 14_Data_Protection_Storage.md
- Credential Compromise: 08_Detection_Threat.md
- Credential Exposure Response: 12_Incident_Response.md
- Cross-Account and Multi-Region Security: 05_KMS_Cryptography.md, 06_Secrets_Certificates.md, 07_S3_Security.md
- Data Exfiltration: 08_Detection_Threat.md
- Data Plane Hardening: 13_Governance_Compliance.md, 14_Data_Protection_Storage.md, 15_Service_Security.md
- DDoS Resilience: 10_Network_Security.md
- Detection Correlation: 09_Logging_Monitoring.md
- Directory Integration: 01_IAM_Core.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- Edge Security: 10_Network_Security.md
- Egress Control: 11_VPC_Connectivity_Security.md
- Encryption Fundamentals: 05_KMS_Cryptography.md, 06_Secrets_Certificates.md, 07_S3_Security.md
- Event-Driven Automation: 09_Logging_Monitoring.md
- Federated Authentication: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- Findings & Triage: 08_Detection_Threat.md
- Forensic Preparedness: 12_Incident_Response.md
- Forensics & Investigation: 08_Detection_Threat.md
- Governance as Code: 13_Governance_Compliance.md, 15_Service_Security.md
- Hybrid Networking: 11_VPC_Connectivity_Security.md
- Identity Lifecycle: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- Identity-Aware Access: 11_VPC_Connectivity_Security.md
- Incident Identification: 12_Incident_Response.md
- Key Management Lifecycle: 05_KMS_Cryptography.md, 06_Secrets_Certificates.md, 07_S3_Security.md
- Least Privilege: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md
- Log Analytics: 09_Logging_Monitoring.md
- Multi-Account Security: 08_Detection_Threat.md
- Network Segmentation: 10_Network_Security.md
- Network Telemetry: 09_Logging_Monitoring.md
- Operational Assurance: 13_Governance_Compliance.md, 14_Data_Protection_Storage.md, 15_Service_Security.md
- Operational Monitoring: 09_Logging_Monitoring.md
- Operational Remediation: 12_Incident_Response.md
- Organization Governance: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- Perimeter Defense: 10_Network_Security.md
- Policy Enforcement: 10_Network_Security.md
- Private Connectivity: 11_VPC_Connectivity_Security.md
- Remote Access Control: 12_Incident_Response.md
- Resilience and Recovery: 13_Governance_Compliance.md, 14_Data_Protection_Storage.md, 15_Service_Security.md
- Retention and Forensics: 09_Logging_Monitoring.md
- Routing and Reachability: 11_VPC_Connectivity_Security.md
- Runtime Protection: 08_Detection_Threat.md
- Secrets Management: 05_KMS_Cryptography.md, 06_Secrets_Certificates.md, 07_S3_Security.md
- Security Telemetry: 08_Detection_Threat.md
- Segmentation and Isolation: 11_VPC_Connectivity_Security.md
- Storage Data Protection: 05_KMS_Cryptography.md, 06_Secrets_Certificates.md, 07_S3_Security.md
- Temporary Credential Strategy: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- Threat Detection: 08_Detection_Threat.md
- Traffic Filtering: 10_Network_Security.md
- Workload Platform Security: 13_Governance_Compliance.md, 14_Data_Protection_Storage.md, 15_Service_Security.md

### Service -> Files
- ABAC: 01_IAM_Core.md, 02_IAM_Advanced.md
- Amazon Athena: 08_Detection_Threat.md, 09_Logging_Monitoring.md
- Amazon CloudFront: 10_Network_Security.md
- Amazon CloudWatch: 08_Detection_Threat.md, 09_Logging_Monitoring.md
- Amazon Cognito: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- Amazon Detective: 08_Detection_Threat.md
- Amazon DynamoDB: 13_Governance_Compliance.md, 14_Data_Protection_Storage.md, 15_Service_Security.md
- Amazon EBS: 05_KMS_Cryptography.md, 06_Secrets_Certificates.md, 13_Governance_Compliance.md, 14_Data_Protection_Storage.md, 15_Service_Security.md
- Amazon EC2: 08_Detection_Threat.md, 09_Logging_Monitoring.md, 12_Incident_Response.md
- Amazon ECR: 15_Service_Security.md
- Amazon ECS: 13_Governance_Compliance.md, 14_Data_Protection_Storage.md, 15_Service_Security.md
- Amazon EFS: 05_KMS_Cryptography.md, 07_S3_Security.md, 14_Data_Protection_Storage.md
- Amazon EKS: 13_Governance_Compliance.md, 15_Service_Security.md
- Amazon EventBridge: 08_Detection_Threat.md, 09_Logging_Monitoring.md
- Amazon GuardDuty: 08_Detection_Threat.md
- Amazon Inspector: 08_Detection_Threat.md
- Amazon Macie: 08_Detection_Threat.md
- Amazon OpenSearch: 08_Detection_Threat.md, 09_Logging_Monitoring.md
- Amazon RDS: 05_KMS_Cryptography.md, 06_Secrets_Certificates.md, 13_Governance_Compliance.md, 14_Data_Protection_Storage.md, 15_Service_Security.md
- Amazon Redshift: 15_Service_Security.md
- Amazon S3: 05_KMS_Cryptography.md, 06_Secrets_Certificates.md, 07_S3_Security.md, 08_Detection_Threat.md, 09_Logging_Monitoring.md
- Amazon SES: 10_Network_Security.md
- Amazon SNS: 08_Detection_Threat.md, 09_Logging_Monitoring.md
- Amazon VPC: 10_Network_Security.md, 11_VPC_Connectivity_Security.md
- Amazon VPC Flow Logs: 08_Detection_Threat.md, 09_Logging_Monitoring.md
- Amazon WorkSpaces: 15_Service_Security.md
- API Gateway: 10_Network_Security.md, 13_Governance_Compliance.md, 15_Service_Security.md
- Audit Manager: 13_Governance_Compliance.md
- AWS Abuse Report: 12_Incident_Response.md
- AWS Backup: 14_Data_Protection_Storage.md
- AWS Certificate Manager: 06_Secrets_Certificates.md
- AWS Client VPN: 11_VPC_Connectivity_Security.md
- AWS CloudHSM: 05_KMS_Cryptography.md, 06_Secrets_Certificates.md
- AWS CloudTrail: 08_Detection_Threat.md, 09_Logging_Monitoring.md
- AWS Config: 13_Governance_Compliance.md
- AWS Control Tower: 04_Directory_Organizations.md
- AWS Direct Connect: 11_VPC_Connectivity_Security.md
- AWS Directory Service: 04_Directory_Organizations.md
- AWS Firewall Manager: 10_Network_Security.md
- AWS Glue: 15_Service_Security.md
- AWS IAM: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- AWS KMS: 05_KMS_Cryptography.md, 06_Secrets_Certificates.md, 07_S3_Security.md
- AWS Lambda: 08_Detection_Threat.md, 09_Logging_Monitoring.md, 13_Governance_Compliance.md, 15_Service_Security.md
- AWS Network Firewall: 10_Network_Security.md
- AWS Nitro Enclaves: 14_Data_Protection_Storage.md
- AWS Organizations: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md, 08_Detection_Threat.md
- AWS RAM: 04_Directory_Organizations.md
- AWS Resource Groups: 12_Incident_Response.md
- AWS Secrets Manager: 06_Secrets_Certificates.md
- AWS Security Hub: 08_Detection_Threat.md
- AWS Service Catalog: 13_Governance_Compliance.md
- AWS Shield: 10_Network_Security.md
- AWS Signer: 15_Service_Security.md
- AWS STS: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- AWS Systems Manager: 12_Incident_Response.md
- AWS Tags: 12_Incident_Response.md
- AWS Transit Gateway: 10_Network_Security.md, 11_VPC_Connectivity_Security.md
- AWS Verified Access: 15_Service_Security.md
- AWS WAF: 10_Network_Security.md
- AWS Well-Architected: 13_Governance_Compliance.md
- Bastion Host: 11_VPC_Connectivity_Security.md
- CloudFormation: 13_Governance_Compliance.md, 15_Service_Security.md
- CloudWatch Alarms: 09_Logging_Monitoring.md
- CloudWatch Contributor Insights: 09_Logging_Monitoring.md
- CloudWatch Logs: 09_Logging_Monitoring.md
- Data Lifecycle Manager: 14_Data_Protection_Storage.md
- DNS Resolution: 11_VPC_Connectivity_Security.md
- EC2 Image Builder: 13_Governance_Compliance.md, 15_Service_Security.md
- EC2 Instance Connect: 12_Incident_Response.md
- EC2 Instance Metadata: 02_IAM_Advanced.md
- EC2 Rescue: 12_Incident_Response.md
- EC2 Serial Console: 12_Incident_Response.md
- ECS/EKS: 08_Detection_Threat.md
- Elastic Load Balancing: 06_Secrets_Certificates.md, 10_Network_Security.md, 13_Governance_Compliance.md, 14_Data_Protection_Storage.md, 15_Service_Security.md
- Fault Injection Simulator: 13_Governance_Compliance.md
- IAM Access Analyzer: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md
- IAM Identity Center: 01_IAM_Core.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- IAM Policies: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- IAM Roles: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- Managed Prefix Lists: 10_Network_Security.md
- MFA: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- NAT Gateway: 11_VPC_Connectivity_Security.md
- Network ACL: 10_Network_Security.md, 11_VPC_Connectivity_Security.md
- Permission Boundaries: 01_IAM_Core.md, 02_IAM_Advanced.md, 04_Directory_Organizations.md
- PrivateLink: 11_VPC_Connectivity_Security.md
- Route 53 DNSSEC: 10_Network_Security.md
- Route 53 Query Logging: 08_Detection_Threat.md, 09_Logging_Monitoring.md
- S3 Access Points: 07_S3_Security.md
- S3 Multi-Region Access Points: 07_S3_Security.md
- S3 Object Lambda: 07_S3_Security.md
- S3 Object Lock: 07_S3_Security.md
- SAML/OIDC Federation: 01_IAM_Core.md, 02_IAM_Advanced.md, 03_Authentication_Federation.md, 04_Directory_Organizations.md
- Security Groups: 10_Network_Security.md, 11_VPC_Connectivity_Security.md
- Service Control Policies: 01_IAM_Core.md, 02_IAM_Advanced.md, 04_Directory_Organizations.md
- Site-to-Site VPN: 11_VPC_Connectivity_Security.md
- SSM Automation: 12_Incident_Response.md
- SSM Inventory: 12_Incident_Response.md
- SSM Parameter Store: 05_KMS_Cryptography.md, 06_Secrets_Certificates.md
- SSM Patch Manager: 12_Incident_Response.md
- SSM Run Command: 12_Incident_Response.md
- SSM Session Manager: 12_Incident_Response.md
- Trusted Advisor: 13_Governance_Compliance.md
- Unified CloudWatch Agent: 09_Logging_Monitoring.md
- VPC Endpoints: 11_VPC_Connectivity_Security.md
- VPC Peering: 11_VPC_Connectivity_Security.md
- VPC Traffic Mirroring: 08_Detection_Threat.md, 09_Logging_Monitoring.md

### Dedup Snapshot Stats
| File | Concepts | Services | Features | Use Cases | Constraints | Patterns |
|---|---:|---:|---:|---:|---:|---:|
| 01_IAM_Core.md | 9 | 13 | 9 | 169 | 130 | 19 |
| 02_IAM_Advanced.md | 8 | 13 | 11 | 133 | 103 | 33 |
| 03_Authentication_Federation.md | 9 | 10 | 8 | 123 | 91 | 81 |
| 04_Directory_Organizations.md | 8 | 14 | 6 | 91 | 86 | 136 |
| 05_KMS_Cryptography.md | 8 | 7 | 8 | 176 | 134 | 75 |
| 06_Secrets_Certificates.md | 8 | 9 | 7 | 93 | 66 | 44 |
| 07_S3_Security.md | 8 | 7 | 8 | 162 | 161 | 83 |
| 08_Detection_Threat.md | 11 | 19 | 13 | 212 | 82 | 158 |
| 09_Logging_Monitoring.md | 8 | 16 | 13 | 163 | 134 | 214 |
| 10_Network_Security.md | 8 | 14 | 13 | 199 | 127 | 341 |
| 11_VPC_Connectivity_Security.md | 7 | 13 | 11 | 96 | 93 | 215 |
| 12_Incident_Response.md | 7 | 13 | 9 | 88 | 62 | 92 |
| 13_Governance_Compliance.md | 7 | 16 | 8 | 95 | 60 | 35 |
| 14_Data_Protection_Storage.md | 6 | 9 | 5 | 62 | 51 | 4 |
| 15_Service_Security.md | 6 | 16 | 2 | 61 | 68 | 7 |

## Reverse Index (Auto-Generated) End
