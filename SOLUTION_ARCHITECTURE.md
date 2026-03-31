# Unified Solution Architecture

This repository is now organized as a single platform that combines:

1. Transcript extraction from Udemy courses.
2. Knowledge-base generation from extracted transcripts.
3. IaC-driven cloud deployment from the same repository.

## Solution Domains

- `apps/knowledge-pipeline/`
  - Python automation for extraction, enrichment, audit, and content packaging.
  - Runtime folders: `outputs/`, `Knowledge Base/`, `cache/`, `playwright-profile/`.
- `azure-infrastructure/`, `aws-infrastructure/`, `gcp-infrastructure/`
  - Terraform modules to provision platform infrastructure.
- `.github/workflows/`
  - CI checks plus cloud apply/destroy workflows.
- `policy/`
  - OPA/Conftest governance controls.

## Naming and Ordering Decisions

- Business capability first:
  - `apps` for application automation.
  - `*-infrastructure` for cloud provisioning.
  - `policy` for governance.
- The former standalone transcript extractor has been consolidated under:
  - `apps/knowledge-pipeline/`

## Operational Flow

1. Install pipeline dependencies.
2. Log in once to Udemy with Playwright profile.
3. Extract transcripts into `apps/knowledge-pipeline/outputs/`.
4. Build domain knowledge bases into `apps/knowledge-pipeline/Knowledge Base/`.
5. Run integrity audit.
6. Deploy cloud resources via existing Terraform workflows or `make plan/apply`.

## Make Targets

- `make kb-install`
- `make kb-login`
- `make kb-list URL=<course_url>`
- `make kb-extract-all URL=<course_url> [OUT_DIR=<name>]`
- `make kb-extract-section URL=<course_url> SECTION=<n> [OUT_DIR=<name>]`
- `make kb-build`
- `make kb-audit`
- `make plan MOD=<module-path> ENV=<env>`
- `make apply MOD=<module-path> ENV=<env>`

## Deployment Guidance

Use existing Terraform modules in `azure-infrastructure/`, `aws-infrastructure/`, or `gcp-infrastructure/` as your target platform for KB hosting and supporting services. This keeps content generation and deployment under one SDLC and one CI/CD estate.
