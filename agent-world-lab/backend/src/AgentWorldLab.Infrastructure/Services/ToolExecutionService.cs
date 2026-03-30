using AgentWorldLab.Adapters.Abstractions;
using AgentWorldLab.Application.Abstractions;
using AgentWorldLab.Application.Models;
using AgentWorldLab.Domain.Models;

namespace AgentWorldLab.Infrastructure.Services;

public sealed class ToolExecutionService : IToolExecutionService
{
    private readonly IReadOnlyCollection<IProviderToolAdapter> _adapters;

    public ToolExecutionService(IEnumerable<IProviderToolAdapter> adapters)
    {
        _adapters = adapters.ToArray();
    }

    public ToolExecutionResult Execute(ToolDefinition tool, string? input, string requestedBy, string environment, string correlationId)
    {
        var adapter = _adapters.FirstOrDefault(a => a.CanHandle(tool.Name));
        if (adapter is null)
        {
            return new ToolExecutionResult("Failed", $"No provider adapter found for tool '{tool.Name}'.");
        }

        var context = new ProviderToolContext(tool.Name, input, correlationId, requestedBy, environment);
        var result = adapter.Execute(context);

        return new ToolExecutionResult(result.Status, $"[{result.Provider}] {result.Message}");
    }
}
