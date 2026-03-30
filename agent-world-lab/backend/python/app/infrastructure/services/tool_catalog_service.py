from __future__ import annotations

from app.application.interfaces import IToolCatalogService
from app.domain.models import RiskLevel, ToolDefinition


class ToolCatalogService(IToolCatalogService):
    def __init__(self) -> None:
        self._tools = [
            ToolDefinition("time.now", "Returns current UTC time", RiskLevel.LOW, ["Admin", "Approver", "Developer", "Analyst", "Viewer"]),
            ToolDefinition("aws.cost.snapshot", "Gets mock AWS cost snapshot", RiskLevel.MEDIUM, ["Admin", "Approver", "Developer", "Analyst"]),
            ToolDefinition("azure.resource.scan", "Performs mock Azure resource scan", RiskLevel.HIGH, ["Admin", "Approver", "Developer"]),
        ]

    def list_tools(self) -> list[ToolDefinition]:
        return list(self._tools)

    def find_by_name(self, name: str) -> ToolDefinition | None:
        for tool in self._tools:
            if tool.name.lower() == name.lower():
                return tool
        return None
