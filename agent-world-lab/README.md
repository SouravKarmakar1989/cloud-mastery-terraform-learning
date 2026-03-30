# Agent World Lab

Agent World Lab is a low-cost, enterprise-patterned, cross-cloud learning platform for agentic AI, MCP tool usage, and HITL workflows.

This folder is intentionally self-contained for first-pass implementation.

## Approved first-pass decisions

- Mode A default cloud: Azure
- Mode A hosting target: Azure Container Apps
- Long-term persistence default: Azure Table Storage + Blob Storage
- Mode B default: Azure primary + AWS secondary
- Mode C: Azure + AWS + GCP full learning mode
- Redis excluded in first pass
- Approvals persisted separately from audit logs
- OpenAPI produced from .NET attributes and committed as static artifact

## What exists in Phase A

- Root scaffold and repository layout
- Architecture, deployment mode, cloud mapping, memory, security, auth/authz, HITL, and audit docs
- Terraform skeleton folders and placeholders for modules and environments

## Design principles

- Secure by default
- Cost-aware by default
- Strong abstraction boundaries
- Explicit authorization for tool usage
- Auditability and correlation IDs from day one
