using AgentWorldLab.Adapters.Abstractions;

namespace AgentWorldLab.Adapters.Azure;

public sealed class AzureToolAdapter : IProviderToolAdapter
{
    public string ProviderName => "azure";

    public bool CanHandle(string toolName)
    {
        return toolName.StartsWith("azure.", StringComparison.OrdinalIgnoreCase);
    }

    public ProviderToolResponse Execute(ProviderToolContext context)
    {
        var payload = context.Input ?? string.Empty;
        var message = $"azure-adapter:{context.ToolName}:{payload}";
        return new ProviderToolResponse("Executed", message, ProviderName, DateTimeOffset.UtcNow);
    }
}
