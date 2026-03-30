from __future__ import annotations

import uuid

from app.application.interfaces import IAgentOrchestrator, IAuditService, IChatService, ISessionService, IThreadService
from app.application.models import ChatResult, CurrentUser
from app.domain.models import AuditEvent, ChatMessage


class ChatService(IChatService):
    def __init__(
        self,
        thread_service: IThreadService,
        session_service: ISessionService,
        audit_service: IAuditService,
        orchestrator: IAgentOrchestrator,
    ) -> None:
        self._thread_service = thread_service
        self._session_service = session_service
        self._audit_service = audit_service
        self._orchestrator = orchestrator

    def send(
        self,
        user: CurrentUser,
        message: str,
        session_id: str | None,
        thread_id: str | None,
        cloud_provider: str,
        agent_framework_mode: str,
        model_backend_mode: str,
        correlation_id: str,
    ) -> ChatResult:
        resolved_session_id = session_id or str(uuid.uuid4())
        thread = self._thread_service.get_or_create_thread(resolved_session_id, thread_id)

        thread.messages.append(ChatMessage(role="user", content=message))
        reply = self._orchestrator.generate_reply(message, cloud_provider, agent_framework_mode, model_backend_mode)
        thread.messages.append(ChatMessage(role="assistant", content=reply))

        self._session_service.register_thread(resolved_session_id, thread.thread_id)
        self._audit_service.append(
            AuditEvent(
                event_type="chat.send",
                actor=user.email,
                resource=f"thread:{thread.thread_id}",
                outcome="Success",
                correlation_id=correlation_id,
                details=f"message_length={len(message)}",
            )
        )

        return ChatResult(
            session_id=resolved_session_id,
            thread_id=thread.thread_id,
            reply=reply,
            trace_events=["thread.loaded", "orchestrator.called", "thread.persisted", "audit.appended"],
        )
