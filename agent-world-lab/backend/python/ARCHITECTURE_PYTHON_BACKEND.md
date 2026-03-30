# Python Backend Architecture (Parity With .NET 8)

This document describes the full code architecture for the Python backend implementation located in `agent-world-lab/backend/python`, designed to mirror the .NET 8 backend behavior.

## 1. Design Goals

- Match the .NET endpoint contracts and route structure.
- Preserve clean boundaries: Domain, Application, Infrastructure, Adapters, Auth, API.
- Preserve governance behavior: role-based tool authorization, HITL approvals, audit trail, correlation IDs.
- Keep persistence in-memory for first pass parity.

## 2. Project Layout

```text
python/
  pyproject.toml
  README.md
  ARCHITECTURE_PYTHON_BACKEND.md
  app/
    main.py
    settings.py
    domain/
      models.py
    application/
      interfaces.py
      models.py
    auth/
      models.py
      user_store.py
      token_service.py
    adapters/
      abstractions.py
      aws.py
      azure.py
      gcp.py
      mcp.py
    infrastructure/
      in_memory/
        thread_service.py
        session_service.py
        audit_service.py
        approval_service.py
      services/
        tool_catalog_service.py
        tool_authorization_service.py
        hitl_policy_service.py
        tool_execution_service.py
        baseline_agent_orchestrator.py
        chat_service.py
    api/
      middleware.py
      deps.py
      contracts.py
      routers/
        health.py
        auth.py
        chat.py
        tools.py
        approvals.py
        audit.py
        sessions.py
        governance.py
  tests/
    unit/
      test_chat_service.py
      test_hitl_policy_service.py
      test_tool_authorization_service.py
      test_approval_service.py
    integration/
      test_api_integration.py
```

## 3. Layer-by-Layer Architecture

## 3.1 Domain Layer

File: `app/domain/models.py`

- `RiskLevel`: enum with `Low`, `Medium`, `High`.
- `ChatMessage`: role/content/timestamp record.
- `ChatThread`: conversation aggregate with message list.
- `ToolDefinition`: static tool metadata and allowed roles.
- `AuditEvent`: immutable-style audit entry.
- `ApprovalRequest`: HITL approval aggregate and decision metadata.

Domain objects are framework-agnostic and contain no FastAPI concerns.

## 3.2 Application Layer

Files:
- `app/application/models.py`
- `app/application/interfaces.py`

Responsibilities:
- Defines application-level models (`ChatResult`, `CurrentUser`, `ToolExecutionResult`, `HitlOptions`).
- Declares service contracts used by API and infrastructure implementations.

The API layer depends on interfaces, not concrete classes.

## 3.3 Auth Layer

Files:
- `app/auth/models.py`
- `app/auth/user_store.py`
- `app/auth/token_service.py`

Behavior:
- In-memory user store with seeded users and roles.
- HS256 JWT creation/validation with issuer/audience/signing key.
- Claims include: `sub`, `email`, `name`, and `roles`.

Seeded users:
- `admin@agentworld.local / AdminPass!1`
- `approver@agentworld.local / ApproverPass!1`
- `developer@agentworld.local / DeveloperPass!1`
- `analyst@agentworld.local / AnalystPass!1`
- `viewer@agentworld.local / ViewerPass!1`

## 3.4 Provider Adapter Layer

Files:
- `app/adapters/abstractions.py`
- `app/adapters/aws.py`
- `app/adapters/azure.py`
- `app/adapters/gcp.py`
- `app/adapters/mcp.py`

Pattern:
- Adapter interface: `can_handle(tool_name)` + `execute(context)`.
- First matching adapter handles execution.

Routing behavior:
- `aws.*` -> `AwsToolAdapter`
- `azure.*` -> `AzureToolAdapter`
- `gcp.*` -> `GcpToolAdapter`
- `mcp.*` and `time.now` -> `McpToolAdapter`

Special case:
- `time.now` returns current UTC timestamp in ISO format.

## 3.5 Infrastructure Layer

### In-memory state services

Files:
- `app/infrastructure/in_memory/thread_service.py`
- `app/infrastructure/in_memory/session_service.py`
- `app/infrastructure/in_memory/audit_service.py`
- `app/infrastructure/in_memory/approval_service.py`

Characteristics:
- Thread-safe with `threading.Lock`.
- Mimics .NET singleton in-memory store behavior.

Rules:
- Approval responses fail when request is missing, expired, or not pending.
- Actions supported: `approve`, `reject`, `delegate`.

### Business services

Files:
- `app/infrastructure/services/tool_catalog_service.py`
- `app/infrastructure/services/tool_authorization_service.py`
- `app/infrastructure/services/hitl_policy_service.py`
- `app/infrastructure/services/tool_execution_service.py`
- `app/infrastructure/services/baseline_agent_orchestrator.py`
- `app/infrastructure/services/chat_service.py`

Behavior parity:
- Tool catalog includes:
  - `time.now` (Low)
  - `aws.cost.snapshot` (Medium)
  - `azure.resource.scan` (High)
- Tool authorization checks role intersection.
- HITL policy modes:
  - `none`
  - `always`
  - `risky-tools-only`
  - `role-based`
  - `environment-based`
- Baseline orchestrator format: `[cloudProvider/agentMode/modelMode] message`
- Chat service flow:
  - Resolve session/thread
  - Append user message
  - Generate assistant reply
  - Persist thread-session relation
  - Append audit event

## 3.6 API Layer

Files:
- `app/api/middleware.py`
- `app/api/deps.py`
- `app/api/contracts.py`
- `app/api/routers/*.py`

### Middleware

- `CorrelationIdMiddleware` ensures every request has `X-Correlation-Id`.
- Header is added to responses and made available via request state.

### Auth dependency

- `get_current_user` reads Bearer token, validates JWT, and builds `CurrentUser`.

### Endpoint map

- `POST /api/auth/login`
- `GET /api/auth/me`
- `GET /api/health`
- `POST /api/chat/send`
- `GET /api/chat/thread/{threadId}`
- `GET /api/tools`
- `POST /api/tools/test`
- `GET /api/approvals/pending`
- `POST /api/approvals/respond`
- `GET /api/audit`
- `GET /api/sessions/{sessionId}/threads`
- `GET /api/admin/governance`

## 4. Dependency Wiring

File: `app/main.py`

The app factory (`create_app`) composes all components as singleton-like instances attached to `app.state`:

- `user_store`, `token_service`
- in-memory stores for threads/sessions/audit/approvals
- tool catalog, authorization, HITL policy
- provider adapters + tool executor
- orchestrator + chat service

Routers are registered after dependencies are initialized.

## 5. Request Flow Examples

## 5.1 Tool test flow (`POST /api/tools/test`)

1. Validate JWT and create `CurrentUser`.
2. Resolve tool from catalog.
3. Enforce tool-role authorization.
4. Evaluate HITL policy.
5. If approval required:
   - Create approval request.
   - Write audit event.
   - Return `ApprovalRequired` with approval id.
6. If no approval required:
   - Dispatch to matching provider adapter.
   - Write audit event.
   - Return executed result.

## 5.2 Chat flow (`POST /api/chat/send`)

1. Validate JWT and obtain user.
2. Resolve or create session/thread.
3. Save user message.
4. Generate orchestrator reply.
5. Save assistant message.
6. Register thread under session.
7. Append audit event.
8. Return session/thread IDs, reply, trace events.

## 6. Test Coverage

Unit tests mirror .NET intent:
- Chat service appends user + assistant messages.
- HITL policy high risk behavior in `risky-tools-only` mode.
- Tool authorization role matching.
- Approval create/respond lifecycle.

Integration tests mirror .NET scenarios:
- Health endpoint is reachable.
- Login + authenticated tools fetch.
- Risky tool triggers approval in default mode.
- Chat send + thread retrieval persistence.

## 7. Configuration

File: `app/settings.py`

Default settings match .NET defaults:
- JWT issuer/audience/signing key and expiry.
- HITL mode: `risky-tools-only`.
- Approval expiry: `15` minutes.
- Frontend allowed origin: `http://localhost:5173`.

## 8. Code Examples

### 8.1 Domain Models

```python
# app/domain/models.py

class RiskLevel(str, Enum):
    LOW = "Low"
    MEDIUM = "Medium"
    HIGH = "High"

@dataclass(slots=True)
class ChatMessage:
    role: str
    content: str
    timestamp_utc: datetime = field(default_factory=utc_now)

@dataclass(slots=True)
class ToolDefinition:
    name: str
    description: str
    risk_level: RiskLevel
    allowed_roles: list[str]

@dataclass(slots=True)
class ApprovalRequest:
    approval_request_id: str
    tool_name: str
    requested_by: str
    correlation_id: str
    requested_at_utc: datetime
    expires_at_utc: datetime
    status: str = "Pending"
    decided_by: str | None = None
```

### 8.2 API Request/Response Contracts

```python
# Chat Send

POST /api/chat/send
Content-Type: application/json
Authorization: Bearer <token>
X-Correlation-Id: <uuid>

{
  "message": "what is my AWS cost status?",
  "sessionId": "session-123",
  "threadId": "thread-123",
  "cloudProvider": "azure",
  "agentFrameworkMode": "baseline",
  "modelBackendMode": "mock",
  "toolMode": "none"
}

200 OK
{
  "sessionId": "session-123",
  "threadId": "thread-123",
  "reply": "[azure/baseline/mock] what is my AWS cost status?",
  "traceEvents": ["message_appended", "thread_persisted"]
}

# Tool Test

POST /api/tools/test
{
  "toolName": "azure.resource.scan",
  "input": "rg=myRG",
  "environment": "prod"
}

200 OK (No approval needed)
{
  "status": "Success",
  "toolName": "azure.resource.scan",
  "message": "Tool executed successfully",
  "approvalRequestId": null,
  "correlationId": "corr-1"
}

202 Accepted (Approval required)
{
  "status": "ApprovalRequired",
  "toolName": "azure.resource.scan",
  "message": "High-risk tool requires approval",
  "approvalRequestId": "appr-uuid",
  "correlationId": "corr-1"
}
```

### 8.3 Tool Authorization Logic

```python
# app/infrastructure/services/tool_authorization_service.py

class ToolAuthorizationService(IToolAuthorizationService):
    def is_tool_allowed(self, user: CurrentUser, tool: ToolDefinition, environment: str | None) -> bool:
        """
        Check if user has at least one role matching tool allowed_roles.
        Returns True if intersection is non-empty.
        """
        allowed = {role.lower() for role in tool.allowed_roles}
        return any(role.lower() in allowed for role in user.roles)
```

### 8.4 HITL Policy Evaluation

```python
# Approval triggers based on HITL mode

HITL Mode: "none"
  -> No approval required

HITL Mode: "always"
  -> All tools require approval

HITL Mode: "risky-tools-only" (default)
  -> Only High-risk tools require approval
  -> time.now (Low) does not require approval
  -> aws.cost.snapshot (Medium) does not require approval
  -> azure.resource.scan (High) requires approval

HITL Mode: "role-based"
  -> Approval required if user role not in tool allowed_roles

HITL Mode: "environment-based"
  -> Approval required if request environment is "prod"
```

### 8.5 Chat Service Flow

```python
# app/infrastructure/services/chat_service.py

def send(user: CurrentUser, message: str, session_id: str | None, 
         thread_id: str | None, cloud_provider: str, agent_mode: str, 
         model_mode: str, correlation_id: str) -> ChatResult:
    
    # 1. Resolve or create session
    session_id = session_id or str(uuid4())
    thread_id = thread_id or str(uuid4())
    
    # 2. Append user message to thread
    thread = self.thread_service.get_or_create(session_id, thread_id)
    thread.messages.append(ChatMessage(role="user", content=message))
    
    # 3. Generate reply
    reply = self.orchestrator.reply(cloud_provider, agent_mode, model_mode, message)
    
    # 4. Append assistant message
    thread.messages.append(ChatMessage(role="assistant", content=reply))
    thread_service.save(thread)
    
    # 5. Register thread under session
    session_service.add_thread(session_id, thread_id)
    
    # 6. Append audit event
    audit_service.log(AuditEvent(
        event_type="ChatMessageSent",
        actor=user.email,
        resource=f"thread:{thread_id}",
        outcome="Success",
        correlation_id=correlation_id,
        details=f"Message appended and reply generated"
    ))
    
    # 7. Return result
    return ChatResult(session_id, thread_id, reply, ["message_appended", "thread_persisted"])
```

## 9. API Endpoint Contract Reference

### 9.1 Authentication

**POST /api/auth/login**
```
Request:
  email: string
  password: string

Response (200):
  token: string (JWT)
  user:
    email: string
    roles: [string]
```

**GET /api/auth/me**
```
Response (200):
  email: string
  roles: [string]
```

### 9.2 Chat

**POST /api/chat/send**
```
Request:
  message: string
  sessionId?: string
  threadId?: string
  cloudProvider?: string (default: "azure")
  agentFrameworkMode?: string (default: "baseline")
  modelBackendMode?: string (default: "mock")
  toolMode?: string (default: "none")

Response (200):
  sessionId: string
  threadId: string
  reply: string
  traceEvents: [string]
```

**GET /api/chat/thread/{threadId}**
```
Response (200):
  sessionId: string
  threadId: string
  messages: [
    {
      role: string
      content: string
      timestampUtc: datetime
    }
  ]
```

### 9.3 Tools

**GET /api/tools**
```
Response (200):
  [
    {
      name: string
      description: string
      riskLevel: string (Low|Medium|High)
      allowedRoles: [string]
      requiresApproval: boolean
    }
  ]
```

**POST /api/tools/test**
```
Request:
  toolName: string
  input?: string
  environment?: string (e.g., "prod", "staging")

Response (200 or 202):
  status: string (Success|ApprovalRequired|Unauthorized|Error)
  toolName: string
  message: string
  approvalRequestId?: string (only if ApprovalRequired)
  correlationId: string
```

### 9.4 Approvals

**GET /api/approvals/pending**
```
Response (200):
  [
    {
      approvalRequestId: string
      toolName: string
      requestedBy: string
      status: string (Pending|Approved|Rejected|DelegatedTo)
      requestedAtUtc: datetime
      expiresAtUtc: datetime
      correlationId: string
    }
  ]
```

**POST /api/approvals/respond**
```
Request:
  approvalRequestId: string
  action: string (approve|reject|delegate)
  comments?: string
  delegateTo?: string

Response (200):
  approvalRequestId: string
  status: string
  message: string
  correlationId: string
```

### 9.5 Audit & Governance

**GET /api/audit**
```
Response (200):
  [
    {
      eventType: string
      actor: string
      resource: string
      outcome: string
      correlationId: string
      details: string
      timestampUtc: datetime
    }
  ]
```

**GET /api/admin/governance**
```
Response (200):
  hitlMode: string
  approvalExpiryMinutes: integer
  defaultCloudProvider: string
```

**GET /api/sessions/{sessionId}/threads**
```
Response (200):
  [
    {
      threadId: string
      createdAtUtc: datetime
    }
  ]
```

## 10. Setup & Deployment

### 10.1 Local Development

**Prerequisites:**
- Python 3.11+
- pip

**Installation:**
```bash
cd agent-world-lab/backend/python
pip install -e .[dev]
```

**Run Server:**
```bash
uvicorn app.main:app --reload --port 8081
```

The server starts at `http://localhost:8081`.

**API Documentation:**
- Swagger UI: `http://localhost:8081/docs`
- ReDoc: `http://localhost:8081/redoc`

### 10.2 Testing

**Run All Tests:**
```bash
pytest -v
```

**Run Unit Tests Only:**
```bash
pytest tests/unit/ -v
```

**Run Integration Tests Only:**
```bash
pytest tests/integration/ -v
```

**Run with Coverage:**
```bash
pytest --cov=app tests/
```

### 10.3 Configuration

Environment variables (via `app/settings.py`):

- `JWT_ISSUER` (default: `AgentworldLab`)
- `JWT_AUDIENCE` (default: `AgentworldLabAPI`)
- `JWT_SIGNING_KEY` (default: `your-secret-key-change-in-prod`)
- `JWT_EXPIRY_MINUTES` (default: `60`)
- `HITL_MODE` (default: `risky-tools-only`)
- `APPROVAL_EXPIRY_MINUTES` (default: `15`)
- `FRONTEND_ALLOWED_ORIGIN` (default: `http://localhost:5173`)

## 11. Test Coverage Strategy

### 11.1 Unit Tests

**Test files:**
- `tests/unit/test_chat_service.py` — Chat message appending, orchestrator invocation
- `tests/unit/test_hitl_policy_service.py` — HITL mode evaluation and approval triggers
- `tests/unit/test_tool_authorization_service.py` — Role-based tool authorization
- `tests/unit/test_approval_service.py` — Approval lifecycle (create, respond, expire)

**Assertion patterns:**
- Service outputs match domain models
- State changes are persisted correctly
- Error conditions are handled (e.g., invalid approval, expired requests)

### 11.2 Integration Tests

**Test file:**
- `tests/integration/test_api_integration.py`

**Scenarios:**
- Health endpoint returns 200
- Login with valid credentials returns JWT
- Authenticated user can fetch tools
- Chat send creates session/thread and appends messages
- Risky tool (High risk) triggers approval in default HITL mode
- Approval response transitions request status
- Audit events are logged for all operations

## 12. Parity with .NET 8 Backend

### 12.1 Matching Behavior

| Aspect | .NET | Python | Match |
|--------|------|--------|-------|
| JWT Auth | HS256 | HS256 | ✓ |
| HITL Modes | 5 (none, always, risky-tools-only, role-based, env-based) | 5 identical | ✓ |
| Tool Adapter Pattern | Strategy pattern | Strategy pattern | ✓ |
| In-memory Store | Singleton dictionaries | Thread-safe dictionaries | ✓ |
| Audit Trail | Full event logging | Full event logging | ✓ |
| Correlation ID | Per-request tracking | Middleware + state | ✓ |
| Endpoint Routes | 12 routes | 12 routes | ✓ |

### 12.2 Intentional Differences

1. **Serialization:** FastAPI/Pydantic (Python) vs. System.Text.Json (.NET)
2. **Async:** Python uses async/await; .NET uses Task-based concurrency
3. **Type Hints:** Python 3.11+ uses PEP 604 union syntax; .NET uses nullable reference types
4. **Persistence:** In-memory only; both are first-pass implementations

## 13. Operational Notes

- Current persistence is in-memory and process-bound.
- This intentionally mirrors the current .NET first pass.
- For production, replace in-memory services with durable implementations while preserving application interfaces.
- Both backends are designed for feature parity; real-world deployments should evaluate scalability needs independently.
