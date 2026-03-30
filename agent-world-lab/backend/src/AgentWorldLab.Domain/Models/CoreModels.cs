namespace AgentWorldLab.Domain.Models;

public enum RiskLevel
{
    Low,
    Medium,
    High
}

public sealed record ChatMessage(string Role, string Content, DateTimeOffset TimestampUtc);

public sealed class ChatThread
{
    public required string SessionId { get; init; }
    public required string ThreadId { get; init; }
    public List<ChatMessage> Messages { get; } = [];
}

public sealed record ToolDefinition(
    string Name,
    string Description,
    RiskLevel RiskLevel,
    IReadOnlyCollection<string> AllowedRoles);

public sealed class ApprovalRequest
{
    public required string ApprovalRequestId { get; init; }
    public required string ToolName { get; init; }
    public required string RequestedBy { get; init; }
    public required string CorrelationId { get; init; }
    public required DateTimeOffset RequestedAtUtc { get; init; }
    public required DateTimeOffset ExpiresAtUtc { get; init; }
    public string Status { get; set; } = "Pending";
    public string? DecidedBy { get; set; }
    public string? DecisionComments { get; set; }
}

public sealed record AuditEvent(
    string EventType,
    string Actor,
    string Resource,
    string Outcome,
    string CorrelationId,
    DateTimeOffset TimestampUtc,
    string Details);
