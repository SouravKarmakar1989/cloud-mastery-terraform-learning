from __future__ import annotations

from dataclasses import dataclass, field


@dataclass(slots=True)
class ChatResult:
    session_id: str
    thread_id: str
    reply: str
    trace_events: list[str] = field(default_factory=list)


@dataclass(slots=True)
class ToolExecutionResult:
    status: str
    message: str
    approval_request_id: str | None = None


@dataclass(slots=True)
class CurrentUser:
    email: str
    roles: list[str]

    def is_in_role(self, role: str) -> bool:
        return any(r.lower() == role.lower() for r in self.roles)


@dataclass(slots=True)
class HitlOptions:
    mode: str = "risky-tools-only"
    approval_expiry_minutes: int = 15
