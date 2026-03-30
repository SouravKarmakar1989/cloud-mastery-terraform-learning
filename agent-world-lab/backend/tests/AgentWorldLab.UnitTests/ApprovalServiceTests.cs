using AgentWorldLab.Infrastructure.InMemory;
using Xunit;

namespace AgentWorldLab.UnitTests;

public sealed class ApprovalServiceTests
{
    [Fact]
    public void Create_AddsPendingApproval()
    {
        var service = new InMemoryApprovalService();
        var created = service.Create("azure.resource.scan", "developer@agentworld.local", "corr-1", DateTimeOffset.UtcNow.AddMinutes(10));

        var pending = service.GetPending();

        Assert.Contains(pending, x => x.ApprovalRequestId == created.ApprovalRequestId);
    }

    [Fact]
    public void Respond_Approve_TransitionsStatus()
    {
        var service = new InMemoryApprovalService();
        var created = service.Create("azure.resource.scan", "developer@agentworld.local", "corr-1", DateTimeOffset.UtcNow.AddMinutes(10));

        var updated = service.Respond(created.ApprovalRequestId, "approve", "approver@agentworld.local", "ok", null);

        Assert.Equal("Approved", updated.Status);
        Assert.Equal("approver@agentworld.local", updated.DecidedBy);
    }
}
