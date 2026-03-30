from __future__ import annotations

from app.adapters.abstractions import IProviderToolAdapter, ProviderToolContext, ProviderToolResponse


class AwsToolAdapter(IProviderToolAdapter):
    provider_name = "aws"

    def can_handle(self, tool_name: str) -> bool:
        return tool_name.startswith("aws.")

    def execute(self, context: ProviderToolContext) -> ProviderToolResponse:
        message = f"aws-adapter:{context.tool_name}:{context.tool_input or ''}"
        return ProviderToolResponse(status="Executed", message=message, provider=self.provider_name)
