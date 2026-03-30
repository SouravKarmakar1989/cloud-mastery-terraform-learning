namespace AgentWorldLab.Adapters.Abstractions;

public sealed record ProviderToolContext(
    string ToolName,
    string? Input,
    string CorrelationId,
    string RequestedBy,
    string Environment);

public sealed record ProviderToolResponse(
    string Status,
    string Message,
    string Provider,
    DateTimeOffset TimestampUtc);

public interface IProviderToolAdapter
{
    string ProviderName { get; }
    bool CanHandle(string toolName);
    ProviderToolResponse Execute(ProviderToolContext context);
}
