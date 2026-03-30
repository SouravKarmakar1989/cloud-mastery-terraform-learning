# Security and Governance Design

## Security defaults

- No hardcoded secrets
- Least privilege IAM and identity boundaries
- Environment isolation by deployment mode and environment naming
- Explicit authentication and authorization checks for protected APIs
- Correlation ID propagation for all request flows
- Audit events for auth, tools, approvals, and admin actions

## Governance defaults

- Standard naming convention: `awl-{cloud}-{workload}-{env}-{region}`
- Required tags/labels for ownership and cost visibility
- Feature flags used to avoid accidental advanced-cost enablement
- Policy-driven controls for tool access and approval requirements

## Cost guardrails

- Disable advanced services unless explicitly enabled
- Prefer serverless/scale-to-zero patterns
- Keep observability stack optional for lab mode
