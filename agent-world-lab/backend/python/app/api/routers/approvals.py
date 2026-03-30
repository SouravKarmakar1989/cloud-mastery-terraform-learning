from __future__ import annotations

from fastapi import APIRouter, Depends, HTTPException, Request, status

from app.api.contracts import ApprovalActionResult, ApprovalItemResponse, ApprovalResponseRequest
from app.api.deps import get_correlation_id, get_current_user
from app.application.models import CurrentUser
from app.domain.models import AuditEvent

router = APIRouter(prefix="/api/approvals", tags=["Approvals"])


@router.get("/pending", response_model=list[ApprovalItemResponse])
def get_pending(request: Request, user: CurrentUser = Depends(get_current_user)) -> list[ApprovalItemResponse]:
    del user
    pending = request.app.state.approval_service.get_pending()
    return [
        ApprovalItemResponse(
            approvalRequestId=item.approval_request_id,
            toolName=item.tool_name,
            requestedBy=item.requested_by,
            status=item.status,
            requestedAtUtc=item.requested_at_utc,
            expiresAtUtc=item.expires_at_utc,
            correlationId=item.correlation_id,
        )
        for item in pending
    ]


@router.post("/respond", response_model=ApprovalActionResult)
def respond(
    payload: ApprovalResponseRequest,
    request: Request,
    user: CurrentUser = Depends(get_current_user),
    correlation_id: str = Depends(get_correlation_id),
) -> ApprovalActionResult:
    approvals = request.app.state.approval_service
    audit = request.app.state.audit_service
    try:
        result = approvals.respond(
            approval_request_id=payload.approvalRequestId,
            action=payload.action,
            decided_by=user.email,
            comments=payload.comments,
            delegated_to=payload.delegateTo,
        )
    except ValueError as ex:
        raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail=str(ex)) from ex

    audit.append(
        AuditEvent(
            event_type="approval.responded",
            actor=user.email,
            resource=f"approval:{result.approval_request_id}",
            outcome=result.status,
            correlation_id=correlation_id,
            details=payload.action,
        )
    )

    return ApprovalActionResult(
        approvalRequestId=result.approval_request_id,
        status=result.status,
        message=f"Approval {result.status.lower()}",
        correlationId=correlation_id,
    )
