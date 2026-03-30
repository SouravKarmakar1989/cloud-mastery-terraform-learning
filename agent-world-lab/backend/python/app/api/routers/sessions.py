from __future__ import annotations

from fastapi import APIRouter, Depends, Request

from app.api.contracts import SessionThreadsResponse
from app.api.deps import get_current_user
from app.application.models import CurrentUser

router = APIRouter(prefix="/api/sessions", tags=["Sessions"])


@router.get("/{session_id}/threads", response_model=SessionThreadsResponse)
def get_session_threads(session_id: str, request: Request, user: CurrentUser = Depends(get_current_user)) -> SessionThreadsResponse:
    del user
    thread_ids = request.app.state.session_service.get_threads(session_id)
    return SessionThreadsResponse(sessionId=session_id, threadIds=thread_ids)
