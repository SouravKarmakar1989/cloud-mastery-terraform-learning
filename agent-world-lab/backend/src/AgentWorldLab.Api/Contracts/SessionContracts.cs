namespace AgentWorldLab.Api.Contracts;

public sealed record SessionThreadsResponse(string SessionId, IReadOnlyCollection<string> ThreadIds);
