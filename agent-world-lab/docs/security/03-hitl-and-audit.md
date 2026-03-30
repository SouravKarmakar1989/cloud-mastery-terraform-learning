# HITL and Audit Model

## HITL modes

- none
- always
- risky-tools-only
- environment-based
- role-based
- policy-based
- expiring approval
- delegated approver

## Workflow requirements

- Approval request generated before risky tool execution
- Approvals persisted separately from audit logs
- Reject and expiry paths block execution
- Delegation path records both delegator and final approver

## Audit requirements

- Every tool call records request, actor, policy result, and outcome
- Correlation ID and trace ID required on all events
- Audit store optimized for append and traceability
- Approval workflow state maintained in dedicated approval store
