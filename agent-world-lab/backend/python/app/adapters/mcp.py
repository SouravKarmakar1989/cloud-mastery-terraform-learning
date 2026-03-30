from __future__ import annotations

from datetime import datetime, timezone

from app.adapters.abstractions import IProviderToolAdapter, ProviderToolContext, ProviderToolResponse


class McpToolAdapter(IProviderToolAdapter):
    provider_name = "mcp"

    def can_handle(self, tool_name: str) -> bool:
        return tool_name.startswith("mcp.") or tool_name == "time.now"

    def execute(self, context: ProviderToolContext) -> ProviderToolResponse:
        if context.tool_name == "time.now":
            message = datetime.now(timezone.utc).isoformat()
        else:
            message = f"mcp-adapter:{context.tool_name}:{context.tool_input or ''}"
        return ProviderToolResponse(status="Executed", message=message, provider=self.provider_name)
