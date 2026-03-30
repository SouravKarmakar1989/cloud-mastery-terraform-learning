# Agent World Lab Terraform (Split-Stack Layout)

This directory now keeps only shared Terraform building blocks and legacy mixed-mode examples.

## Active cloud stacks

- Azure stack: `azure-infrastructure/ai-foundry/genAI-agentic/agent-world-lab-stack`
- AWS stack: `aws-infrastructure/ai/bedrock/agent-world-lab-stack`
- GCP stack: `gcp-infrastructure/ai/vertex-ai/agent-world-lab-stack`

Each stack has:

- cloud-specific providers and variables
- cloud-specific core module under its own cloud tree
- local `modules/` folder with `shared-labels`, `shared-cost-guardrails`, and `platform-observability-optional`
- `env/lab/terraform.tfvars.example` for environment-specific learning runs

## Legacy content

- `legacy-multicloud/environments/*` contains the older intertwined mode-based examples (`mode-a`, `mode-b`, `mode-c`) for reference only.
- `environments/common` remains as shared variable examples.

## Learning-first intent

The split layout is designed so you can study and practice each cloud independently while keeping naming, tagging, and guardrail patterns consistent across Azure, AWS, and GCP.
