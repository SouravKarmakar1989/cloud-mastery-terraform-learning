namespace AgentWorldLab.Api.Contracts;

public sealed record ApprovalResponseRequest(
    string ApprovalRequestId,
    string Action,
    string? Comments,
    string? DelegateTo);

public sealed record ApprovalItemResponse(
    string ApprovalRequestId,
    string ToolName,
    string RequestedBy,
    string Status,
    DateTimeOffset RequestedAtUtc,
    DateTimeOffset ExpiresAtUtc,
    string CorrelationId);

public sealed record ApprovalActionResult(
    string ApprovalRequestId,
    string Status,
    string Message,
    string CorrelationId);
