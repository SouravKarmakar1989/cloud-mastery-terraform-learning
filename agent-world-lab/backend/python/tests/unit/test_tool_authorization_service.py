from app.application.models import CurrentUser
from app.domain.models import RiskLevel, ToolDefinition
from app.infrastructure.services.tool_authorization_service import ToolAuthorizationService


def test_is_tool_allowed_when_role_matches() -> None:
    service = ToolAuthorizationService()
    user = CurrentUser(email="developer@agentworld.local", roles=["Developer"])
    tool = ToolDefinition("aws.cost.snapshot", "", RiskLevel.MEDIUM, ["Developer", "Admin"])

    assert service.is_tool_allowed(user, tool, None) is True


def test_is_tool_denied_when_role_missing() -> None:
    service = ToolAuthorizationService()
    user = CurrentUser(email="viewer@agentworld.local", roles=["Viewer"])
    tool = ToolDefinition("aws.cost.snapshot", "", RiskLevel.MEDIUM, ["Developer", "Admin"])

    assert service.is_tool_allowed(user, tool, None) is False
