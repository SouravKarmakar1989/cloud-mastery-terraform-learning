using AgentWorldLab.Adapters.Abstractions;

namespace AgentWorldLab.Adapters.Aws;

public sealed class AwsToolAdapter : IProviderToolAdapter
{
    public string ProviderName => "aws";

    public bool CanHandle(string toolName)
    {
        return toolName.StartsWith("aws.", StringComparison.OrdinalIgnoreCase);
    }

    public ProviderToolResponse Execute(ProviderToolContext context)
    {
        var payload = context.Input ?? string.Empty;
        var message = $"aws-adapter:{context.ToolName}:{payload}";
        return new ProviderToolResponse("Executed", message, ProviderName, DateTimeOffset.UtcNow);
    }
}
