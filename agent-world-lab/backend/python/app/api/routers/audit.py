from __future__ import annotations

from fastapi import APIRouter, Depends, Request

from app.api.contracts import AuditEventResponse
from app.api.deps import get_current_user
from app.application.models import CurrentUser

router = APIRouter(prefix="/api/audit", tags=["Audit"])


@router.get("", response_model=list[AuditEventResponse])
def list_audit(request: Request, user: CurrentUser = Depends(get_current_user)) -> list[AuditEventResponse]:
    del user
    return [
        AuditEventResponse(
            eventType=e.event_type,
            actor=e.actor,
            resource=e.resource,
            outcome=e.outcome,
            correlationId=e.correlation_id,
            timestampUtc=e.timestamp_utc,
            details=e.details,
        )
        for e in request.app.state.audit_service.list()
    ]
