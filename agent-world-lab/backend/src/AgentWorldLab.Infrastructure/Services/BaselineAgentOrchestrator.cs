using AgentWorldLab.Application.Abstractions;

namespace AgentWorldLab.Infrastructure.Services;

public sealed class BaselineAgentOrchestrator : IAgentOrchestrator
{
    public string GenerateReply(string userMessage, string cloudProvider, string agentMode, string modelMode)
    {
        return $"[{cloudProvider}/{agentMode}/{modelMode}] {userMessage}";
    }
}
