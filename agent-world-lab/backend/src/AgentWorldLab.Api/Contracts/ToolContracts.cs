namespace AgentWorldLab.Api.Contracts;

public sealed record ToolDefinitionDto(
    string Name,
    string Description,
    string RiskLevel,
    IReadOnlyCollection<string> AllowedRoles,
    bool RequiresApproval);

public sealed record ToolTestRequest(string ToolName, string? Input, string? Environment);

public sealed record ToolTestResponse(
    string Status,
    string ToolName,
    string Message,
    string? ApprovalRequestId,
    string CorrelationId);
