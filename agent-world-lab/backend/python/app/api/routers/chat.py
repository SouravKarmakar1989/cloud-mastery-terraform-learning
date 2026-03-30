from __future__ import annotations

from fastapi import APIRouter, Depends, HTTPException, Request, status

from app.api.contracts import ChatMessageDto, ChatSendRequest, ChatSendResponse, ChatThreadResponse
from app.api.deps import get_correlation_id, get_current_user
from app.application.models import CurrentUser

router = APIRouter(prefix="/api/chat", tags=["Chat"])


@router.post("/send", response_model=ChatSendResponse)
def send_chat(
    payload: ChatSendRequest,
    request: Request,
    user: CurrentUser = Depends(get_current_user),
    correlation_id: str = Depends(get_correlation_id),
) -> ChatSendResponse:
    chat_service = request.app.state.chat_service
    result = chat_service.send(
        user=user,
        message=payload.message,
        session_id=payload.sessionId,
        thread_id=payload.threadId,
        cloud_provider=payload.cloudProvider,
        agent_framework_mode=payload.agentFrameworkMode,
        model_backend_mode=payload.modelBackendMode,
        correlation_id=correlation_id,
    )
    return ChatSendResponse(
        sessionId=result.session_id,
        threadId=result.thread_id,
        reply=result.reply,
        traceEvents=result.trace_events,
    )


@router.get("/thread/{thread_id}", response_model=ChatThreadResponse)
def get_thread(thread_id: str, request: Request, user: CurrentUser = Depends(get_current_user)) -> ChatThreadResponse:
    del user
    thread = request.app.state.thread_service.get_thread(thread_id)
    if thread is None:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Thread not found")
    return ChatThreadResponse(
        sessionId=thread.session_id,
        threadId=thread.thread_id,
        messages=[
            ChatMessageDto(role=m.role, content=m.content, timestampUtc=m.timestamp_utc) for m in thread.messages
        ],
    )
