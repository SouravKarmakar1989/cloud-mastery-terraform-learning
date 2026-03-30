namespace AgentWorldLab.Api.Contracts;

public sealed record LoginRequest(string Email, string Password);
public sealed record LoginResponse(string AccessToken, string Email, IReadOnlyCollection<string> Roles);

public sealed record ErrorResponse(string Code, string Message, string CorrelationId);
