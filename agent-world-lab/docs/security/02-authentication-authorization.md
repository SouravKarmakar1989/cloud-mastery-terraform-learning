# Authentication and Authorization

## Authentication strategy

- Working baseline: local JWT mode for lab
- Seeded roles:
  - Admin
  - Approver
  - Developer
  - Analyst
  - Viewer
- Seeded users:
  - admin@agentworld.local -> Admin
  - approver@agentworld.local -> Approver
  - developer@agentworld.local -> Developer
  - analyst@agentworld.local -> Analyst
  - viewer@agentworld.local -> Viewer

## OIDC adapter model

Design adapter contracts for cloud identity providers:

- Azure Entra ID adapter shape
- AWS Cognito adapter shape
- GCP-compatible OIDC adapter shape

## Authorization strategy

- Role-based API access control
- Policy-based tool execution control with allow/deny semantics
- Tool authorization must evaluate:
  - user role
  - tool policy
  - environment
  - risk classification
- Risky tools must pass HITL policy hooks before execution
