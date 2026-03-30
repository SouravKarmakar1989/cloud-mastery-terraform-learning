from __future__ import annotations

from abc import ABC, abstractmethod
from datetime import datetime

from app.application.models import ChatResult, CurrentUser
from app.domain.models import ApprovalRequest, AuditEvent, ChatThread, ToolDefinition


class ICurrentUserAccessor(ABC):
    @abstractmethod
    def get_current_user(self) -> CurrentUser:
        raise NotImplementedError


class IThreadService(ABC):
    @abstractmethod
    def get_or_create_thread(self, session_id: str, thread_id: str | None) -> ChatThread:
        raise NotImplementedError

    @abstractmethod
    def get_thread(self, thread_id: str) -> ChatThread | None:
        raise NotImplementedError


class ISessionService(ABC):
    @abstractmethod
    def register_thread(self, session_id: str, thread_id: str) -> None:
        raise NotImplementedError

    @abstractmethod
    def get_threads(self, session_id: str) -> list[str]:
        raise NotImplementedError


class IAuditService(ABC):
    @abstractmethod
    def append(self, event: AuditEvent) -> None:
        raise NotImplementedError

    @abstractmethod
    def list(self) -> list[AuditEvent]:
        raise NotImplementedError


class IApprovalService(ABC):
    @abstractmethod
    def create(self, tool_name: str, requested_by: str, correlation_id: str, expires_at: datetime) -> ApprovalRequest:
        raise NotImplementedError

    @abstractmethod
    def get_pending(self) -> list[ApprovalRequest]:
        raise NotImplementedError

    @abstractmethod
    def get_by_id(self, approval_request_id: str) -> ApprovalRequest | None:
        raise NotImplementedError

    @abstractmethod
    def respond(
        self,
        approval_request_id: str,
        action: str,
        decided_by: str,
        comments: str | None,
        delegated_to: str | None,
    ) -> ApprovalRequest:
        raise NotImplementedError


class IToolCatalogService(ABC):
    @abstractmethod
    def list_tools(self) -> list[ToolDefinition]:
        raise NotImplementedError

    @abstractmethod
    def find_by_name(self, name: str) -> ToolDefinition | None:
        raise NotImplementedError


class IToolAuthorizationService(ABC):
    @abstractmethod
    def is_tool_allowed(self, user: CurrentUser, tool: ToolDefinition, environment: str | None) -> bool:
        raise NotImplementedError


class IHitlPolicyService(ABC):
    @abstractmethod
    def requires_approval(self, user: CurrentUser, tool: ToolDefinition, environment: str | None) -> bool:
        raise NotImplementedError

    @abstractmethod
    def compute_approval_expiry(self) -> datetime:
        raise NotImplementedError


class IToolExecutionService(ABC):
    @abstractmethod
    def execute(self, tool_name: str, tool_input: str | None, requested_by: str, environment: str | None, correlation_id: str) -> str:
        raise NotImplementedError


class IAgentOrchestrator(ABC):
    @abstractmethod
    def generate_reply(self, message: str, cloud_provider: str, agent_mode: str, model_mode: str) -> str:
        raise NotImplementedError


class IChatService(ABC):
    @abstractmethod
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
        raise NotImplementedError
