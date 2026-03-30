from __future__ import annotations

from app.application.interfaces import IToolAuthorizationService
from app.application.models import CurrentUser
from app.domain.models import ToolDefinition


class ToolAuthorizationService(IToolAuthorizationService):
    def is_tool_allowed(self, user: CurrentUser, tool: ToolDefinition, environment: str | None) -> bool:
        allowed = {role.lower() for role in tool.allowed_roles}
        return any(role.lower() in allowed for role in user.roles)
