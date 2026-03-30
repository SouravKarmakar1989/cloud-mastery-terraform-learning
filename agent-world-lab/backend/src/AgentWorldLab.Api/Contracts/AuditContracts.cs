namespace AgentWorldLab.Api.Contracts;

public sealed record AuditEventResponse(
    string EventType,
    string Actor,
    string Resource,
    string Outcome,
    string CorrelationId,
    DateTimeOffset TimestampUtc,
    string Details);
