namespace AgentWorldLab.Api.Contracts;

public sealed record ChatSendRequest(
    string Message,
    string? SessionId,
    string? ThreadId,
    string? CloudProvider,
    string? AgentFrameworkMode,
    string? ModelBackendMode,
    string? ToolMode);

public sealed record TraceEventDto(
    string EventType,
    string Message,
    DateTimeOffset TimestampUtc,
    string CorrelationId);

public sealed record ChatSendResponse(
    string SessionId,
    string ThreadId,
    string Reply,
    IReadOnlyCollection<TraceEventDto> TraceEvents);

public sealed record ChatMessageDto(string Role, string Content, DateTimeOffset TimestampUtc);
public sealed record ChatThreadResponse(string SessionId, string ThreadId, IReadOnlyCollection<ChatMessageDto> Messages);
