# Platform Architecture

## Purpose

Agent World Lab is a low-cost cross-cloud learning platform for agentic AI patterns, MCP tool usage, and human-in-the-loop (HITL) workflows.

## First-pass scope

- Azure-first deployment for Mode A
- Azure Container Apps hosting target
- Azure Table + Blob as default durable persistence
- Strict cloud adapter boundaries to keep AWS and GCP portable
- No Redis in first pass

## Core components

- Frontend shell (generated in later phase)
- .NET backend control plane (generated in later phase)
- Agent orchestration abstraction
- MCP and tool execution abstraction
- HITL decision service
- Audit and correlation pipeline
- Multi-cloud provider adapters

## Architecture style

- Modular monorepo under `agent-world-lab/`
- Feature-flag driven infrastructure and capability enablement
- Security-by-default and least privilege
- Separation of approvals and audit persistence

## Guiding constraints

- Minimize always-on services
- Prefer serverless or scale-to-zero patterns
- Keep implementation simple enough for labs but structured like production
- Keep naming, tags, and governance consistent across cloud providers
