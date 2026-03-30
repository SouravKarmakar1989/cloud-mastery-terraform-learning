namespace AgentWorldLab.Application.Models;

public sealed record ChatResult(
    string SessionId,
    string ThreadId,
    string Reply,
    IReadOnlyCollection<(string EventType, string Message)> TraceEvents);

public sealed record ToolExecutionResult(string Status, string Message, string? ApprovalRequestId = null);

public sealed class HitlOptions
{
    public string Mode { get; set; } = "risky-tools-only";
    public int ApprovalExpiryMinutes { get; set; } = 15;
}

public sealed record CurrentUser(string Email, IReadOnlyCollection<string> Roles)
{
    public bool IsInRole(string role) => Roles.Contains(role, StringComparer.OrdinalIgnoreCase);
}
