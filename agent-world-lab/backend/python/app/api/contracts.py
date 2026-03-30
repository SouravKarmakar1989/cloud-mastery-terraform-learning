from __future__ import annotations

from datetime import datetime

from pydantic import BaseModel


class ChatSendRequest(BaseModel):
    message: str
    sessionId: str | None = None
    threadId: str | None = None
    cloudProvider: str = "azure"
    agentFrameworkMode: str = "baseline"
    modelBackendMode: str = "mock"
    toolMode: str = "none"


class ChatMessageDto(BaseModel):
    role: str
    content: str
    timestampUtc: datetime


class ChatSendResponse(BaseModel):
    sessionId: str
    threadId: str
    reply: str
    traceEvents: list[str]


class ChatThreadResponse(BaseModel):
    sessionId: str
    threadId: str
    messages: list[ChatMessageDto]


class ToolDefinitionDto(BaseModel):
    name: str
    description: str
    riskLevel: str
    allowedRoles: list[str]
    requiresApproval: bool


class ToolTestRequest(BaseModel):
    toolName: str
    input: str | None = None
    environment: str | None = None


class ToolTestResponse(BaseModel):
    status: str
    toolName: str
    message: str
    approvalRequestId: str | None = None
    correlationId: str


class ApprovalItemResponse(BaseModel):
    approvalRequestId: str
    toolName: str
    requestedBy: str
    status: str
    requestedAtUtc: datetime
    expiresAtUtc: datetime
    correlationId: str


class ApprovalResponseRequest(BaseModel):
    approvalRequestId: str
    action: str
    comments: str | None = None
    delegateTo: str | None = None


class ApprovalActionResult(BaseModel):
    approvalRequestId: str
    status: str
    message: str
    correlationId: str


class AuditEventResponse(BaseModel):
    eventType: str
    actor: str
    resource: str
    outcome: str
    correlationId: str
    timestampUtc: datetime
    details: str


class LoginRequest(BaseModel):
    email: str
    password: str


class LoginResponse(BaseModel):
    accessToken: str
    email: str
    roles: list[str]


class SessionThreadsResponse(BaseModel):
    sessionId: str
    threadIds: list[str]
