using AgentWorldLab.Application.Models;
using AgentWorldLab.Domain.Models;
using AgentWorldLab.Infrastructure.Services;
using Microsoft.Extensions.Options;
using Xunit;

namespace AgentWorldLab.UnitTests;

public sealed class HitlPolicyServiceTests
{
    [Fact]
    public void RequiresApproval_ReturnsTrue_ForHighRiskTool_WhenRiskyToolsOnly()
    {
        var service = new HitlPolicyService(Options.Create(new HitlOptions
        {
            Mode = "risky-tools-only",
            ApprovalExpiryMinutes = 10
        }));

        var user = new CurrentUser("developer@agentworld.local", ["Developer"]);
        var tool = new ToolDefinition("azure.resource.scan", "", RiskLevel.High, ["Developer"]);

        var result = service.RequiresApproval(user, tool, "lab");

        Assert.True(result);
    }

    [Fact]
    public void RequiresApproval_ReturnsFalse_ForLowRiskTool_WhenRiskyToolsOnly()
    {
        var service = new HitlPolicyService(Options.Create(new HitlOptions
        {
            Mode = "risky-tools-only"
        }));

        var user = new CurrentUser("viewer@agentworld.local", ["Viewer"]);
        var tool = new ToolDefinition("time.now", "", RiskLevel.Low, ["Viewer"]);

        var result = service.RequiresApproval(user, tool, "lab");

        Assert.False(result);
    }
}
