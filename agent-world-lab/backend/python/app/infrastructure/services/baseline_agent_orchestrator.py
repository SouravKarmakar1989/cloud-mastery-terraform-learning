from __future__ import annotations

from app.application.interfaces import IAgentOrchestrator


class BaselineAgentOrchestrator(IAgentOrchestrator):
    def generate_reply(self, message: str, cloud_provider: str, agent_mode: str, model_mode: str) -> str:
        return f"[{cloud_provider}/{agent_mode}/{model_mode}] {message}"
