# Agent World Lab — End-to-End Walkthrough

This document traces one complete request flow through the system: a Developer calling a high-risk tool that triggers Human-in-the-Loop (HITL) approval, and an Approver granting it.

---

## Scenario

> A Developer wants to run `azure.resource.scan`.  
> The tool is HIGH risk.  
> The HITL policy is `risky-tools-only`.  
> The Developer cannot self-approve — an Approver must respond.

---

## Step 0 — Application Startup

`main.py` wires together all services and registers them on `app.state`:
īī
```
UserStore        ← in-memory user credentials
TokenService     ← creates/decodes JWT tokens
ToolCatalogService  ← the fixed list of 3 tools
ToolAuthorizationService  ← role-based access check
HitlPolicyService  ← decides if approval is needed
ApprovalService  ← in-memory pending-approvals queue
ToolExecutionService ← dispatches to cloud adapters
AuditService     ← append-only event log
```

The HITL mode is read from `AppSettings.hitl.mode`, which defaults to `"risky-tools-only"`.

---

## Step 1 — Developer logs in

**Request**
```http
POST /api/auth/login
Content-Type: application/json

{
  "email": "developer@agentworld.local",
  "password": "DeveloperPass!1"
}
```

**What happens in the code**

1. `auth.py` router receives the request.
2. `LabUserStore.validate_credentials(email, password)` looks up the user in the in-memory dictionary.
3. On success, `TokenService.create_token(user)` builds a JWT payload:
   ```json
   {
     "sub": "developer@agentworld.local",
     "email": "developer@agentworld.local",
     "roles": ["Developer"],
     "iss": "AgentWorldLab",
     "aud": "AgentWorldLab.Client",
     "exp": <now + 60 min>
   }
   ```
   Signed with HS256 using the `signing_key` from `JwtOptions`.

**Response**
```json
{
  "accessToken": "<jwt>",
  "email": "developer@agentworld.local",
  "roles": ["Developer"]
}
```

The client stores the `accessToken` and sends it as `Authorization: Bearer <jwt>` on every subsequent request.

---

## Step 2 — Developer lists available tools

**Request**
```http
GET /api/tools
Authorization: Bearer <developer-jwt>
```

**What happens in the code**

1. `deps.py` middleware verifies the JWT via `TokenService.decode_token()` and creates a `CurrentUser(email, roles)`.
2. `tools.py` router calls `ToolCatalogService.list_tools()` — returns all three tools.
3. For each tool, `HitlPolicyService.requires_approval(admin_user, tool, None)` is called to pre-compute the `requiresApproval` flag shown in the catalogue.

**Response** (abbreviated)
```json
[
  { "name": "time.now",           "riskLevel": "Low",    "requiresApproval": false },
  { "name": "aws.cost.snapshot",  "riskLevel": "Medium", "requiresApproval": false },
  { "name": "azure.resource.scan","riskLevel": "High",   "requiresApproval": true  }
]
```

---

## Step 3 — Developer invokes `azure.resource.scan`

**Request**
```http
POST /api/tools/test
Authorization: Bearer <developer-jwt>
Content-Type: application/json

{
  "toolName": "azure.resource.scan",
  "input": "subscription/my-sub",
  "environment": "dev"
}
```

**What happens in the code — step by step**

```
tools.py router → POST /api/tools/test
│
├─ 1. Dependency: JWT verified → CurrentUser(email="developer@...", roles=["Developer"])
│
├─ 2. ToolCatalogService.find_by_name("azure.resource.scan")
│      Returns ToolDefinition(name, description, riskLevel=HIGH, allowedRoles=["Admin","Approver","Developer"])
│
├─ 3. ToolAuthorizationService.is_tool_allowed(user, tool, "dev")
│      user.roles = ["Developer"]
│      tool.allowed_roles = ["Admin", "Approver", "Developer"]
│      → "developer" ∈ allowed → True → proceed
│
├─ 4. HitlPolicyService.requires_approval(user, tool, "dev")
│      mode = "risky-tools-only"
│      tool.risk_level == HIGH → True → approval required
│
├─ 5. ApprovalService.create(...)
│      Generates a UUID approvalRequestId, stores:
│        { status: "Pending", toolName: "azure.resource.scan",
│          requestedBy: "developer@...", expiresAtUtc: now+15min }
│
└─ 6. AuditService.append(AuditEvent(
         event_type="tool.requested",
         actor="developer@...",
         resource="tool:azure.resource.scan",
         outcome="ApprovalRequired",
         correlation_id=<uuid>
       ))
```

**Response (HTTP 200)**
```json
{
  "status": "ApprovalRequired",
  "toolName": "azure.resource.scan",
  "message": "Approval is required before execution",
  "approvalRequestId": "a1b2c3d4-...",
  "correlationId": "x9y8z7w6-..."
}
```

> Note: The response is `200 OK`, not `403`. The tool call was **authorised** — it's just **waiting for approval**. A `403` would mean the role is not permitted at all.

---

## Step 4 — Approver logs in

Same as Step 1 but with Approver credentials:

```http
POST /api/auth/login
{ "email": "approver@agentworld.local", "password": "ApproverPass!1" }
```

Returns `roles: ["Approver"]` in the JWT.

---

## Step 5 — Approver fetches the pending queue

**Request**
```http
GET /api/approvals/pending
Authorization: Bearer <approver-jwt>
```

**What happens**

`approvals.py` router calls `ApprovalService.get_pending()`, returning all requests with `status == "Pending"`.

**Response**
```json
[
  {
    "approvalRequestId": "a1b2c3d4-...",
    "toolName": "azure.resource.scan",
    "requestedBy": "developer@agentworld.local",
    "status": "Pending",
    "requestedAtUtc": "2025-01-01T10:00:00Z",
    "expiresAtUtc": "2025-01-01T10:15:00Z",
    "correlationId": "x9y8z7w6-..."
  }
]
```

---

## Step 6 — Approver grants approval

**Request**
```http
POST /api/approvals/respond
Authorization: Bearer <approver-jwt>
Content-Type: application/json

{
  "approvalRequestId": "a1b2c3d4-...",
  "action": "approve",
  "comments": "LGTM, safe for dev environment"
}
```

**What happens in the code**

```
approvals.py router → POST /api/approvals/respond
│
├─ 1. JWT verified → CurrentUser("approver@...", ["Approver"])
│
├─ 2. ApprovalService.respond(approvalRequestId, action="approve", ...)
│      Finds the pending item by ID
│      Sets status = "Approved", decidedBy = "approver@...", comments = "LGTM..."
│
└─ 3. AuditService.append(AuditEvent(
         event_type="approval.responded",
         actor="approver@...",
         resource="approval:a1b2c3d4-...",
         outcome="Approved",
         correlation_id=<new uuid>,
         details="approve"
       ))
```

**Response (HTTP 200)**
```json
{
  "approvalRequestId": "a1b2c3d4-...",
  "status": "Approved",
  "message": "Approval recorded",
  "correlationId": "x9y8z7w6-..."
}
```

---

## Step 7 — Developer retries the tool (now executes)

**Request** (same as Step 3)
```http
POST /api/tools/test
Authorization: Bearer <developer-jwt>

{ "toolName": "azure.resource.scan", "input": "subscription/my-sub", "environment": "dev" }
```

**What happens now**

Steps 1–4 are the same. However, at Step 4:

```
HitlPolicyService.requires_approval(user, tool, "dev")
  → mode = "risky-tools-only", tool.risk_level == HIGH → True
```

The approval check **still fires**, but the approval is now `"Approved"`. Whether the system automatically proceeds or requires a different call path depends on your implementation. In the current baseline design, the approval gate always fires but an approved record means the tool can be considered authorised. In a production design you would pass the `approvalRequestId` back to re-authorise.

The `ToolExecutionService.execute(...)` is then called:

```
ToolExecutionService.execute("azure.resource.scan", input, email, env, correlation_id)
│
└─ Iterates adapters → finds one where adapter.can_handle("azure.resource.scan") == True
   → calls adapter.execute(ProviderToolContext(...))
   → returns mock response message
```

**Response (HTTP 200)**
```json
{
  "status": "Executed",
  "toolName": "azure.resource.scan",
  "message": "[Mock] Azure resource scan completed for subscription/my-sub",
  "approvalRequestId": null,
  "correlationId": "x9y8z7w6-..."
}
```

An `AuditEvent(event_type="tool.executed", outcome="Success")` is written.

---

## Full Request Flow Diagram

```
Developer                Backend                    Approver
    │                       │                           │
    │── POST /auth/login ──▶│                           │
    │◀─ { accessToken } ────│                           │
    │                       │                           │
    │── GET /tools ────────▶│                           │
    │◀─ [ tool catalogue ] ─│                           │
    │                       │                           │
    │── POST /tools/test ──▶│                           │
    │   azure.resource.scan │                           │
    │                       │── authorization check ───│
    │                       │── HITL policy: HIGH risk  │
    │                       │── create Pending approval │
    │                       │── write audit event ──────│
    │◀─ 200 ApprovalRequired│                           │
    │   approvalRequestId   │                           │
    │                       │                           │
    │                       │◀─── POST /auth/login ─────│
    │                       │──── { approverToken } ───▶│
    │                       │                           │
    │                       │◀─── GET /approvals/pending│
    │                       │──── [ pending list ] ────▶│
    │                       │                           │
    │                       │◀─── POST /approvals/respond
    │                       │     action: "approve" ────│
    │                       │──── set Approved ─────────│
    │                       │──── write audit event ────│
    │                       │──── 200 Approved ────────▶│
    │                       │                           │
    │── POST /tools/test ──▶│                           │
    │   (retry after approv)│── execute via adapter ────│
    │                       │── write audit event ──────│
    │◀─ 200 Executed ────────│                           │
```

---

## Key Concepts Illustrated

| Concept | Where it lives |
|---|---|
| JWT-based authentication | `auth/token_service.py`, `api/deps.py` |
| Role-based authorisation | `infrastructure/services/tool_authorization_service.py` |
| HITL policy strategies | `infrastructure/services/hitl_policy_service.py` |
| Approval lifecycle | `infrastructure/in_memory/` approval store |
| Audit trail | `infrastructure/in_memory/` audit store, `domain/models.py AuditEvent` |
| Tool catalogue | `infrastructure/services/tool_catalog_service.py` |
| Tool execution adapters | `adapters/`, `infrastructure/services/tool_execution_service.py` |

The .NET project under `src/` mirrors this exact structure: same routes, same service interfaces, same HITL modes — making it straightforward to compare C# and Python implementations side by side.

---

## Quick Reference: Users & Roles

| Email | Password | Roles | Can call HIGH risk tools? | Can approve? |
|---|---|---|---|---|
| admin@agentworld.local | AdminPass!1 | Admin | Yes, no approval needed (Admin bypasses HITL in role-based mode) | Yes |
| approver@agentworld.local | ApproverPass!1 | Approver | Yes, no approval needed | Yes |
| developer@agentworld.local | DeveloperPass!1 | Developer | Yes, approval required | No |
| analyst@agentworld.local | AnalystPass!1 | Analyst | No (not in allowedRoles for HIGH tools) | No |
| viewer@agentworld.local | ViewerPass!1 | Viewer | No | No |
