from __future__ import annotations

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from app.adapters.aws import AwsToolAdapter
from app.adapters.azure import AzureToolAdapter
from app.adapters.gcp import GcpToolAdapter
from app.adapters.mcp import McpToolAdapter
from app.api.middleware import CorrelationIdMiddleware
from app.api.routers import approvals, audit, auth, chat, governance, health, sessions, tools
from app.application.models import CurrentUser
from app.auth.token_service import TokenService
from app.auth.user_store import LabUserStore
from app.infrastructure.in_memory.approval_service import InMemoryApprovalService
from app.infrastructure.in_memory.audit_service import InMemoryAuditService
from app.infrastructure.in_memory.session_service import InMemorySessionService
from app.infrastructure.in_memory.thread_service import InMemoryThreadService
from app.infrastructure.services.baseline_agent_orchestrator import BaselineAgentOrchestrator
from app.infrastructure.services.chat_service import ChatService
from app.infrastructure.services.hitl_policy_service import HitlPolicyService
from app.infrastructure.services.tool_authorization_service import ToolAuthorizationService
from app.infrastructure.services.tool_catalog_service import ToolCatalogService
from app.infrastructure.services.tool_execution_service import ToolExecutionService
from app.settings import AppSettings


def create_app(settings: AppSettings | None = None) -> FastAPI:
    app_settings = settings or AppSettings()
    app = FastAPI(title="Agent World Lab Python API", version="0.1.0")

    app.add_middleware(CorrelationIdMiddleware)
    app.add_middleware(
        CORSMiddleware,
        allow_origins=app_settings.frontend.allowed_origins,
        allow_credentials=True,
        allow_methods=["*"],
        allow_headers=["*"],
    )

    user_store = LabUserStore()
    token_service = TokenService(app_settings.jwt)
    thread_service = InMemoryThreadService()
    session_service = InMemorySessionService()
    audit_service = InMemoryAuditService()
    approval_service = InMemoryApprovalService()
    tool_catalog_service = ToolCatalogService()
    tool_authorization_service = ToolAuthorizationService()
    hitl_policy_service = HitlPolicyService(app_settings.hitl)
    adapters = [AzureToolAdapter(), AwsToolAdapter(), GcpToolAdapter(), McpToolAdapter()]
    tool_execution_service = ToolExecutionService(adapters)
    orchestrator = BaselineAgentOrchestrator()
    chat_service = ChatService(thread_service, session_service, audit_service, orchestrator)

    app.state.settings = app_settings
    app.state.user_store = user_store
    app.state.token_service = token_service
    app.state.thread_service = thread_service
    app.state.session_service = session_service
    app.state.audit_service = audit_service
    app.state.approval_service = approval_service
    app.state.tool_catalog_service = tool_catalog_service
    app.state.tool_authorization_service = tool_authorization_service
    app.state.hitl_policy_service = hitl_policy_service
    app.state.tool_execution_service = tool_execution_service
    app.state.chat_service = chat_service
    app.state.current_user_admin = CurrentUser(email="admin@agentworld.local", roles=["Admin"])

    app.include_router(health.router)
    app.include_router(auth.router)
    app.include_router(chat.router)
    app.include_router(tools.router)
    app.include_router(approvals.router)
    app.include_router(audit.router)
    app.include_router(sessions.router)
    app.include_router(governance.router)
    return app


app = create_app()
