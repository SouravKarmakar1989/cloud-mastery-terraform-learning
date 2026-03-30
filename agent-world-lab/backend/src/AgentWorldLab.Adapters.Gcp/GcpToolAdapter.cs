using AgentWorldLab.Adapters.Abstractions;

namespace AgentWorldLab.Adapters.Gcp;

public sealed class GcpToolAdapter : IProviderToolAdapter
{
    public string ProviderName => "gcp";

    public bool CanHandle(string toolName)
    {
        return toolName.StartsWith("gcp.", StringComparison.OrdinalIgnoreCase);
    }

    public ProviderToolResponse Execute(ProviderToolContext context)
    {
        var payload = context.Input ?? string.Empty;
        var message = $"gcp-adapter:{context.ToolName}:{payload}";
        return new ProviderToolResponse("Executed", message, ProviderName, DateTimeOffset.UtcNow);
    }
}
