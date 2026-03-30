from __future__ import annotations

from app.adapters.abstractions import IProviderToolAdapter, ProviderToolContext, ProviderToolResponse


class AzureToolAdapter(IProviderToolAdapter):
    provider_name = "azure"

    def can_handle(self, tool_name: str) -> bool:
        return tool_name.startswith("azure.")

    def execute(self, context: ProviderToolContext) -> ProviderToolResponse:
        message = f"azure-adapter:{context.tool_name}:{context.tool_input or ''}"
        return ProviderToolResponse(status="Executed", message=message, provider=self.provider_name)
