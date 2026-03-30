from __future__ import annotations

from app.adapters.abstractions import IProviderToolAdapter, ProviderToolContext, ProviderToolResponse


class GcpToolAdapter(IProviderToolAdapter):
    provider_name = "gcp"

    def can_handle(self, tool_name: str) -> bool:
        return tool_name.startswith("gcp.")

    def execute(self, context: ProviderToolContext) -> ProviderToolResponse:
        message = f"gcp-adapter:{context.tool_name}:{context.tool_input or ''}"
        return ProviderToolResponse(status="Executed", message=message, provider=self.provider_name)
