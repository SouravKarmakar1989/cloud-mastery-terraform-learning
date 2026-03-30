from __future__ import annotations

from fastapi import APIRouter, Depends, Request

from app.api.deps import get_current_user
from app.api.middleware import CORRELATION_HEADER
from app.application.models import CurrentUser

router = APIRouter(prefix="/api/admin/governance", tags=["Governance"])


@router.get("")
def get_governance(request: Request, user: CurrentUser = Depends(get_current_user)) -> dict:
    del user
    hitl = request.app.state.settings.hitl
    return {
        "hitlMode": hitl.mode,
        "approvalExpiryMinutes": hitl.approval_expiry_minutes,
        "correlationHeader": CORRELATION_HEADER,
    }
