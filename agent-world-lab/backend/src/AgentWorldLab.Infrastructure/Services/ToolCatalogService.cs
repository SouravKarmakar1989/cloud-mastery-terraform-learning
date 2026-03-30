using AgentWorldLab.Application.Abstractions;
using AgentWorldLab.Domain.Models;

namespace AgentWorldLab.Infrastructure.Services;

public sealed class ToolCatalogService : IToolCatalogService
{
    private static readonly IReadOnlyCollection<ToolDefinition> Tools =
    [
        new ToolDefinition(
            "time.now",
            "Returns current UTC timestamp for diagnostics and demos.",
            RiskLevel.Low,
            ["Admin", "Approver", "Developer", "Analyst", "Viewer"]),
        new ToolDefinition(
            "aws.cost.snapshot",
            "Returns a lab cost snapshot from AWS adapter path.",
            RiskLevel.Medium,
            ["Admin", "Approver", "Developer", "Analyst"]),
        new ToolDefinition(
            "azure.resource.scan",
            "Scans tagged Azure resources in read-only mode.",
            RiskLevel.High,
            ["Admin", "Approver", "Developer"])
    ];

    public IReadOnlyCollection<ToolDefinition> ListTools() => Tools;

    public ToolDefinition? FindByName(string toolName)
    {
        return Tools.FirstOrDefault(x => string.Equals(x.Name, toolName, StringComparison.OrdinalIgnoreCase));
    }
}
