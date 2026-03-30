using AgentWorldLab.Application.Models;
using AgentWorldLab.Infrastructure.InMemory;
using AgentWorldLab.Infrastructure.Services;
using Xunit;

namespace AgentWorldLab.UnitTests;

public sealed class ChatServiceTests
{
    [Fact]
    public void Send_AppendsMessagesToThread()
    {
        var service = new ChatService(
            new InMemoryThreadService(),
            new InMemorySessionService(),
            new BaselineAgentOrchestrator(),
            new InMemoryAuditService());

        var user = new CurrentUser("developer@agentworld.local", ["Developer"]);

        var result = service.Send(user, "hello", "s1", "t1", "azure", "baseline", "baseline", "corr-1");

        Assert.Equal("s1", result.SessionId);
        Assert.Equal("t1", result.ThreadId);
        Assert.Contains("hello", result.Reply);
    }
}
