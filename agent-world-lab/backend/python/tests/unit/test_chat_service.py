from app.application.models import CurrentUser
from app.infrastructure.in_memory.audit_service import InMemoryAuditService
from app.infrastructure.in_memory.session_service import InMemorySessionService
from app.infrastructure.in_memory.thread_service import InMemoryThreadService
from app.infrastructure.services.baseline_agent_orchestrator import BaselineAgentOrchestrator
from app.infrastructure.services.chat_service import ChatService


def test_send_appends_messages_to_thread() -> None:
    service = ChatService(
        thread_service=InMemoryThreadService(),
        session_service=InMemorySessionService(),
        audit_service=InMemoryAuditService(),
        orchestrator=BaselineAgentOrchestrator(),
    )
    user = CurrentUser(email="developer@agentworld.local", roles=["Developer"])

    result = service.send(user, "hello", None, None, "azure", "baseline", "mock", "corr-1")

    assert result.session_id
    assert result.thread_id
    assert "hello" in result.reply
