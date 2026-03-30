from __future__ import annotations

from datetime import datetime, timezone

from fastapi import APIRouter, Depends

from app.api.deps import get_correlation_id

router = APIRouter(prefix="/api/health", tags=["Health"])


@router.get("")
def get_health(correlation_id: str = Depends(get_correlation_id)) -> dict:
    return {
        "status": "ok",
        "service": "agent-world-lab-python",
        "timestampUtc": datetime.now(timezone.utc).isoformat(),
        "correlationId": correlation_id,
    }
