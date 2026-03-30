using AgentWorldLab.Application.Abstractions;
using AgentWorldLab.Application.Models;
using AgentWorldLab.Domain.Models;

namespace AgentWorldLab.Infrastructure.Services;

public sealed class ToolAuthorizationService : IToolAuthorizationService
{
    public bool IsToolAllowed(CurrentUser user, ToolDefinition tool, string environment)
    {
        _ = environment;

        if (string.IsNullOrWhiteSpace(user.Email))
        {
            return false;
        }

        return user.Roles.Any(role => tool.AllowedRoles.Contains(role, StringComparer.OrdinalIgnoreCase));
    }
}
