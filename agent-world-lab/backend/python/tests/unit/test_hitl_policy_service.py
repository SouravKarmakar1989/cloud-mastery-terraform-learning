from app.application.models import CurrentUser
from app.domain.models import RiskLevel, ToolDefinition
from app.infrastructure.services.hitl_policy_service import HitlPolicyService
from app.settings import HitlSettings


def test_risky_tools_only_high_risk_requires_approval() -> None:
    service = HitlPolicyService(HitlSettings(mode="risky-tools-only", approval_expiry_minutes=15))
    user = CurrentUser(email="developer@agentworld.local", roles=["Developer"])
    tool = ToolDefinition("azure.resource.scan", "", RiskLevel.HIGH, ["Admin", "Approver"])

    assert service.requires_approval(user, tool, None) is True


def test_risky_tools_only_low_risk_no_approval() -> None:
    service = HitlPolicyService(HitlSettings(mode="risky-tools-only", approval_expiry_minutes=15))
    user = CurrentUser(email="developer@agentworld.local", roles=["Developer"])
    tool = ToolDefinition("time.now", "", RiskLevel.LOW, ["Developer"])

    assert service.requires_approval(user, tool, None) is False
