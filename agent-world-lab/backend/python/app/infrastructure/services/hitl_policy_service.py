from __future__ import annotations

from datetime import datetime, timedelta, timezone

from app.application.interfaces import IHitlPolicyService
from app.application.models import CurrentUser
from app.domain.models import RiskLevel, ToolDefinition
from app.settings import HitlSettings


class HitlPolicyService(IHitlPolicyService):
    def __init__(self, options: HitlSettings) -> None:
        self._options = options

    def requires_approval(self, user: CurrentUser, tool: ToolDefinition, environment: str | None) -> bool:
        mode = self._options.mode.lower()
        if mode == "none":
            return False
        if mode == "always":
            return True
        if mode == "risky-tools-only":
            return tool.risk_level == RiskLevel.HIGH
        if mode == "role-based":
            return not user.is_in_role("Admin") and tool.risk_level != RiskLevel.LOW
        if mode == "environment-based":
            return (environment or "").lower() == "prod"
        return False

    def compute_approval_expiry(self) -> datetime:
        return datetime.now(timezone.utc) + timedelta(minutes=self._options.approval_expiry_minutes)
