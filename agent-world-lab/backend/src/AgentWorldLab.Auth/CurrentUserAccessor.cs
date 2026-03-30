using System.Security.Claims;
using AgentWorldLab.Application.Abstractions;
using AgentWorldLab.Application.Models;
using Microsoft.AspNetCore.Http;

namespace AgentWorldLab.Auth;

public sealed class CurrentUserAccessor : ICurrentUserAccessor
{
    private readonly IHttpContextAccessor _httpContextAccessor;

    public CurrentUserAccessor(IHttpContextAccessor httpContextAccessor)
    {
        _httpContextAccessor = httpContextAccessor;
    }

    public CurrentUser GetCurrentUser()
    {
        var principal = _httpContextAccessor.HttpContext?.User;
        if (principal?.Identity?.IsAuthenticated != true)
        {
            return new CurrentUser(string.Empty, []);
        }

        var email = principal.FindFirst(ClaimTypes.Name)?.Value ?? principal.FindFirst(ClaimTypes.Email)?.Value ?? string.Empty;
        var roles = principal.FindAll(ClaimTypes.Role).Select(r => r.Value).Distinct(StringComparer.OrdinalIgnoreCase).ToList();

        return new CurrentUser(email, roles);
    }
}
