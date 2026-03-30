using AgentWorldLab.Application.Models;
using AgentWorldLab.Domain.Models;
using AgentWorldLab.Infrastructure.Services;
using Xunit;

namespace AgentWorldLab.UnitTests;

public sealed class ToolAuthorizationServiceTests
{
    [Fact]
    public void IsToolAllowed_ReturnsTrue_WhenUserHasMatchingRole()
    {
        var service = new ToolAuthorizationService();
        var user = new CurrentUser("developer@agentworld.local", ["Developer"]);
        var tool = new ToolDefinition("aws.cost.snapshot", "", RiskLevel.Medium, ["Developer", "Admin"]);

        var result = service.IsToolAllowed(user, tool, "lab");

        Assert.True(result);
    }

    [Fact]
    public void IsToolAllowed_ReturnsFalse_WhenUserHasNoMatchingRole()
    {
        var service = new ToolAuthorizationService();
        var user = new CurrentUser("viewer@agentworld.local", ["Viewer"]);
        var tool = new ToolDefinition("aws.cost.snapshot", "", RiskLevel.Medium, ["Developer", "Admin"]);

        var result = service.IsToolAllowed(user, tool, "lab");

        Assert.False(result);
    }
}
