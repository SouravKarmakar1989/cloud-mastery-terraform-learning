# AWS Compute Parity Plan from Azure Compute Modules (Zero-Loss to AWS Compute KB)

## Goal
Build AWS compute infrastructure that:
1. Matches the uploaded Azure compute module intent.
2. Preserves AWS-native architecture semantics.
3. Covers AWS Compute Knowledge Base with zero loss across all 6 KB domains.

---

## 1) Azure -> AWS Compute Correspondence (Module-Level)

| Azure module (current) | Azure service intent | AWS target service(s) | Parity type | Suggested AWS module path |
|---|---|---|---|---|
| `compute/container/aca` | Managed container apps, revisions, autoscale | Amazon ECS on Fargate, AWS App Runner (optional) | Near-equivalent | `aws-infrastructure/compute/container/ecs-fargate` (+ optional `compute/container/app-runner`) |
| `compute/container/aci` | Single container/group execution | ECS RunTask on Fargate, AWS Batch (job style) | Functional | `aws-infrastructure/compute/container/ecs-run-task` or `compute/specialized/batch` |
| `compute/container/acr` | Container registry | Amazon ECR | Direct | `aws-infrastructure/compute/container/ecr` |
| `compute/container/aks` | Managed Kubernetes | Amazon EKS | Direct | `aws-infrastructure/compute/container/eks` |
| `compute/container/spring-apps` | Managed Spring workloads | AWS Elastic Beanstalk (Java), App Runner, ECS Fargate | Functional | `aws-infrastructure/compute/paas/elastic-beanstalk` (+ optional app-runner/ecs profiles) |
| `compute/iaas/vm` | Single virtual machine | Amazon EC2 | Direct | `aws-infrastructure/compute/iaas/ec2` |
| `compute/iaas/vmss` | VM scale sets | EC2 Auto Scaling Group + Launch Template | Direct | `aws-infrastructure/compute/iaas/asg` |
| `compute/iaas/batch` | Batch compute jobs | AWS Batch | Direct | `aws-infrastructure/compute/specialized/batch` |
| `compute/logic-app/consumption` | Event/workflow orchestration | AWS Step Functions + EventBridge + Lambda | Functional | `aws-infrastructure/compute/serverless/step-functions-workflow` |
| `compute/logic-app/standard` | Stateful workflows + integration | Step Functions + API Gateway + Lambda + SQS/SNS (pattern-based) | Functional | `aws-infrastructure/compute/serverless/integration-workflows` |
| `compute/paas/app-service` | Managed web app runtime | Elastic Beanstalk, App Runner, ECS/Fargate | Functional | `aws-infrastructure/compute/paas/elastic-beanstalk` and/or `compute/container/app-runner` |
| `compute/serverless/func-app` | Serverless functions | AWS Lambda | Direct | `aws-infrastructure/compute/serverless/lambda-runtime` |
| `compute/serverless/durable-func` | Durable orchestrations | Step Functions + Lambda | Direct semantic | `aws-infrastructure/compute/serverless/step-functions` |
| `compute/static-web-app` | Static site + global edge + API hooks | S3 + CloudFront (+ Lambda@Edge or API Gateway/Lambda) | Functional | `aws-infrastructure/compute/edge/static-site` |

Notes:
- Some Azure services map to one AWS service; others require a service composition in AWS.
- This is expected and does not violate parity; parity is at workload capability level, not product name level.

---

## 2) Zero-Loss Coverage of AWS Compute KB (All 6 Domains)

### Domain 01: EC2 Foundations
Required AWS compute set:
- EC2, EBS, AMI/Image pipeline, instance metadata, Systems Manager integration, security-group-aware access patterns.

Terraform module targets:
- `compute/iaas/ec2`
- `compute/iaas/ec2-image-builder`
- `compute/ops/ssm-ec2-profile`

### Domain 02: Load Balancing and Auto Scaling
Required AWS compute set:
- ALB/NLB/GWLB patterns, target groups, ASG, launch templates, scaling policies, health checks.

Terraform module targets:
- `compute/networking/elb-alb`
- `compute/networking/elb-nlb`
- `compute/networking/elb-gwlb`
- `compute/iaas/asg`

### Domain 03: Containers and Orchestration
Required AWS compute set:
- ECR, ECS, EKS, Fargate runtime modes, service/task patterns.

Terraform module targets:
- `compute/container/ecr`
- `compute/container/ecs-fargate`
- `compute/container/ecs-ec2`
- `compute/container/eks`

### Domain 04: Serverless Compute
Required AWS compute set:
- Lambda, API Gateway, Step Functions, AppSync, event-driven integration patterns.

Terraform module targets:
- `compute/serverless/lambda-runtime`
- `compute/serverless/api-gateway`
- `compute/serverless/step-functions`
- `compute/serverless/appsync`

### Domain 05: IaC and Deployment Automation
Required AWS compute set:
- CloudFormation, SAM, CDK lifecycle and deploy controls.

Terraform module targets:
- `compute/iac/cloudformation-bootstrap`
- `compute/iac/sam-pipeline`
- `compute/iac/cdk-bootstrap`

### Domain 06: Specialized Compute Operations
Required AWS compute set:
- AWS Batch, Elastic Beanstalk, HPC patterns, Outposts-aware compute strategy.

Terraform module targets:
- `compute/specialized/batch`
- `compute/paas/elastic-beanstalk`
- `compute/specialized/hpc-primitives`
- `compute/specialized/outposts-ready`

---

## 3) Current AWS Terraform State vs Needed Parity

Already present under `aws-infrastructure`:
- `serverless/lambda`
- `serverless/api-gateway`
- `serverless/step-functions`
- `serverless/appsync`
- `serverless/sam`
- `serverless/dynamodb`

Needed to reach full Azure parity + zero-loss AWS compute KB:
- Add a dedicated `compute/` tree in AWS side for IaaS, container, PaaS, edge, specialized, and compute ops.
- Add EC2/ASG/ELB/ECR/ECS/EKS/Batch/Beanstalk modules.
- Add compute IaC bootstrap modules (CloudFormation/CDK/SAM orchestration scaffolding).

---

## 4) Canonical AWS Compute Module Taxonomy (Recommended)

```text
aws-infrastructure/
  compute/
    iaas/
      ec2/
      asg/
      ec2-image-builder/
    networking/
      elb-alb/
      elb-nlb/
      elb-gwlb/
    container/
      ecr/
      ecs-fargate/
      ecs-ec2/
      eks/
      app-runner/
    serverless/
      lambda-runtime/
      api-gateway/
      step-functions/
      appsync/
    paas/
      elastic-beanstalk/
    edge/
      static-site/
    specialized/
      batch/
      hpc-primitives/
      outposts-ready/
    iac/
      cloudformation-bootstrap/
      sam-pipeline/
      cdk-bootstrap/
    ops/
      ssm-ec2-profile/
      cloudwatch-xray/
```

This layout keeps service ownership clear and maps cleanly to the 6 AWS compute KB domains.

---

## 5) Zero-Loss Rule (Acceptance Criteria)

Treat parity as complete only when all are true:
1. Every Azure compute module has an AWS target module and deployment pattern.
2. Every AWS Compute KB domain (01-06) has at least one owning AWS module.
3. Core AWS compute services from KB are explicitly represented: EC2, ASG, ELB, ECR, ECS, EKS, Lambda, API Gateway, Step Functions, AppSync, Batch, Beanstalk, CloudFormation, SAM, CDK.
4. Workflow-level Azure features (Logic Apps, Durable Functions, Static Web App) are mapped to AWS service compositions, not forced to single-service equivalents.

---

## 6) Practical Build Order

1. Foundation compute: `ec2`, `asg`, `elb-alb`, `elb-nlb`.
2. Container stack: `ecr`, `ecs-fargate`, `eks`.
3. Serverless stack: reuse existing modules, normalize under `compute/serverless` naming.
4. Specialized stack: `batch`, `elastic-beanstalk`, `hpc-primitives`.
5. IaC controls: `cloudformation-bootstrap`, `cdk-bootstrap`, `sam-pipeline`.
6. Edge/static and workflow composition modules.

This sequence gives fast parity wins while preserving full KB coverage and AWS-native design fidelity.
