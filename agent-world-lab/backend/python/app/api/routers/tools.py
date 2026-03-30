from __future__ import annotations

from fastapi import APIRouter, Depends, HTTPException, Request, status

from app.api.contracts import ToolDefinitionDto, ToolTestRequest, ToolTestResponse
from app.api.deps import get_correlation_id, get_current_user
from app.application.models import CurrentUser
from app.domain.models import AuditEvent

router = APIRouter(prefix="/api/tools", tags=["Tools"])


@router.get("", response_model=list[ToolDefinitionDto])
def list_tools(request: Request, user: CurrentUser = Depends(get_current_user)) -> list[ToolDefinitionDto]:
    del user
    catalog = request.app.state.tool_catalog_service
    hitl_policy = request.app.state.hitl_policy_service
    current_user = request.app.state.current_user_admin
    tools = catalog.list_tools()
    return [
        ToolDefinitionDto(
            name=tool.name,
            description=tool.description,
            riskLevel=tool.risk_level.value,
            allowedRoles=tool.allowed_roles,
            requiresApproval=hitl_policy.requires_approval(current_user, tool, None),
        )
        for tool in tools
    ]


@router.post("/test", response_model=ToolTestResponse)
def test_tool(
    payload: ToolTestRequest,
    request: Request,
    user: CurrentUser = Depends(get_current_user),
    correlation_id: str = Depends(get_correlation_id),
) -> ToolTestResponse:
    catalog = request.app.state.tool_catalog_service
    authorization = request.app.state.tool_authorization_service
    hitl_policy = request.app.state.hitl_policy_service
    approvals = request.app.state.approval_service
    executor = request.app.state.tool_execution_service
    audit = request.app.state.audit_service

    tool = catalog.find_by_name(payload.toolName)
    if tool is None:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Tool not found")

    if not authorization.is_tool_allowed(user, tool, payload.environment):
        raise HTTPException(status_code=status.HTTP_403_FORBIDDEN, detail="Tool access denied")

    if hitl_policy.requires_approval(user, tool, payload.environment):
        approval = approvals.create(
            tool_name=tool.name,
            requested_by=user.email,
            correlation_id=correlation_id,
            expires_at=hitl_policy.compute_approval_expiry(),
        )
        audit.append(
            AuditEvent(
                event_type="tool.requested",
                actor=user.email,
                resource=f"tool:{tool.name}",
                outcome="ApprovalRequired",
                correlation_id=correlation_id,
                details=approval.approval_request_id,
            )
        )
        return ToolTestResponse(
            status="ApprovalRequired",
            toolName=tool.name,
            message="Approval is required before execution",
            approvalRequestId=approval.approval_request_id,
            correlationId=correlation_id,
        )

    message = executor.execute(tool.name, payload.input, user.email, payload.environment, correlation_id)
    audit.append(
        AuditEvent(
            event_type="tool.executed",
            actor=user.email,
            resource=f"tool:{tool.name}",
            outcome="Success",
            correlation_id=correlation_id,
            details=message,
        )
    )
    return ToolTestResponse(
        status="Executed",
        toolName=tool.name,
        message=message,
        approvalRequestId=None,
        correlationId=correlation_id,
    )
