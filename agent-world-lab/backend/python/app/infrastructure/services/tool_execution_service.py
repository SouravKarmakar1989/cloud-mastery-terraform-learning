from __future__ import annotations

from app.adapters.abstractions import IProviderToolAdapter, ProviderToolContext
from app.application.interfaces import IToolExecutionService


class ToolExecutionService(IToolExecutionService):
    def __init__(self, adapters: list[IProviderToolAdapter]) -> None:
        self._adapters = adapters

    def execute(self, tool_name: str, tool_input: str | None, requested_by: str, environment: str | None, correlation_id: str) -> str:
        for adapter in self._adapters:
            if adapter.can_handle(tool_name):
                response = adapter.execute(
                    ProviderToolContext(
                        tool_name=tool_name,
                        tool_input=tool_input,
                        requested_by=requested_by,
                        environment=environment,
                        correlation_id=correlation_id,
                    )
                )
                return response.message
        raise ValueError(f"No adapter can handle tool '{tool_name}'")
