using AgentWorldLab.Adapters.Abstractions;

namespace AgentWorldLab.Adapters.Mcp;

public sealed class McpToolAdapter : IProviderToolAdapter
{
    public string ProviderName => "mcp";

    public bool CanHandle(string toolName)
    {
        return toolName.StartsWith("mcp.", StringComparison.OrdinalIgnoreCase)
               || string.Equals(toolName, "time.now", StringComparison.OrdinalIgnoreCase);
    }

    public ProviderToolResponse Execute(ProviderToolContext context)
    {
        if (string.Equals(context.ToolName, "time.now", StringComparison.OrdinalIgnoreCase))
        {
            return new ProviderToolResponse("Executed", DateTimeOffset.UtcNow.ToString("O"), ProviderName, DateTimeOffset.UtcNow);
        }

        var payload = context.Input ?? string.Empty;
        var message = $"mcp-adapter:{context.ToolName}:{payload}";
        return new ProviderToolResponse("Executed", message, ProviderName, DateTimeOffset.UtcNow);
    }
}
