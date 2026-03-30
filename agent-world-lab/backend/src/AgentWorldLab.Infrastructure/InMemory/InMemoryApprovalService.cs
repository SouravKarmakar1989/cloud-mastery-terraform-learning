using AgentWorldLab.Application.Abstractions;
using AgentWorldLab.Domain.Models;

namespace AgentWorldLab.Infrastructure.InMemory;

public sealed class InMemoryApprovalService : IApprovalService
{
    private readonly Dictionary<string, ApprovalRequest> _approvals = new(StringComparer.OrdinalIgnoreCase);
    private readonly object _lock = new();

    public ApprovalRequest Create(string toolName, string requestedBy, string correlationId, DateTimeOffset expiresAtUtc)
    {
        var req = new ApprovalRequest
        {
            ApprovalRequestId = Guid.NewGuid().ToString("N"),
            ToolName = toolName,
            RequestedBy = requestedBy,
            CorrelationId = correlationId,
            RequestedAtUtc = DateTimeOffset.UtcNow,
            ExpiresAtUtc = expiresAtUtc,
            Status = "Pending"
        };

        lock (_lock)
        {
            _approvals[req.ApprovalRequestId] = req;
        }

        return req;
    }

    public IReadOnlyCollection<ApprovalRequest> GetPending()
    {
        lock (_lock)
        {
            return _approvals.Values
                .Where(x => string.Equals(x.Status, "Pending", StringComparison.OrdinalIgnoreCase))
                .OrderBy(x => x.RequestedAtUtc)
                .ToArray();
        }
    }

    public ApprovalRequest? GetById(string approvalRequestId)
    {
        lock (_lock)
        {
            return _approvals.TryGetValue(approvalRequestId, out var req) ? req : null;
        }
    }

    public ApprovalRequest Respond(string approvalRequestId, string action, string decidedBy, string? comments, string? delegatedTo)
    {
        lock (_lock)
        {
            if (!_approvals.TryGetValue(approvalRequestId, out var req))
            {
                throw new InvalidOperationException("Approval request not found.");
            }

            if (!string.Equals(req.Status, "Pending", StringComparison.OrdinalIgnoreCase))
            {
                throw new InvalidOperationException("Approval request already resolved.");
            }

            if (req.ExpiresAtUtc < DateTimeOffset.UtcNow)
            {
                req.Status = "Expired";
                req.DecidedBy = decidedBy;
                req.DecisionComments = comments;
                return req;
            }

            var normalized = action.Trim().ToLowerInvariant();
            req.Status = normalized switch
            {
                "approve" => "Approved",
                "reject" => "Rejected",
                "delegate" when !string.IsNullOrWhiteSpace(delegatedTo) => "Delegated",
                _ => throw new InvalidOperationException("Unsupported action.")
            };

            req.DecidedBy = decidedBy;
            req.DecisionComments = comments;
            return req;
        }
    }
}
