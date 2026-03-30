from __future__ import annotations

from dataclasses import dataclass, field
from datetime import datetime, timezone
from enum import Enum


def utc_now() -> datetime:
    return datetime.now(timezone.utc)


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
class ChatThread:
    session_id: str
    thread_id: str
    messages: list[ChatMessage] = field(default_factory=list)


@dataclass(slots=True)
class ToolDefinition:
    name: str
    description: str
    risk_level: RiskLevel
    allowed_roles: list[str]


@dataclass(slots=True)
class AuditEvent:
    event_type: str
    actor: str
    resource: str
    outcome: str
    correlation_id: str
    details: str
    timestamp_utc: datetime = field(default_factory=utc_now)


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
    decision_comments: str | None = None
    delegated_to: str | None = None
