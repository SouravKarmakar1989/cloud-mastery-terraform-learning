using AgentWorldLab.Application.Abstractions;
using AgentWorldLab.Application.Models;
using AgentWorldLab.Domain.Models;
using Microsoft.Extensions.Options;

namespace AgentWorldLab.Infrastructure.Services;

public sealed class HitlPolicyService : IHitlPolicyService
{
    private readonly HitlOptions _options;

    public HitlPolicyService(IOptions<HitlOptions> options)
    {
        _options = options.Value;
    }

    public bool RequiresApproval(CurrentUser user, ToolDefinition tool, string environment)
    {
        var mode = _options.Mode.Trim().ToLowerInvariant();
        return mode switch
        {
            "none" => false,
            "always" => true,
            "risky-tools-only" => tool.RiskLevel == RiskLevel.High,
            "role-based" => !user.IsInRole("Admin") && tool.RiskLevel != RiskLevel.Low,
            "environment-based" => string.Equals(environment, "prod", StringComparison.OrdinalIgnoreCase),
            _ => tool.RiskLevel == RiskLevel.High
        };
    }

    public DateTimeOffset ComputeApprovalExpiry()
    {
        return DateTimeOffset.UtcNow.AddMinutes(Math.Max(_options.ApprovalExpiryMinutes, 1));
    }
}
