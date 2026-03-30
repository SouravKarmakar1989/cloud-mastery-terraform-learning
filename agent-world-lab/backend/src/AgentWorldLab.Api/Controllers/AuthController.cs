using AgentWorldLab.Application.Abstractions;
using AgentWorldLab.Api.Contracts;
using AgentWorldLab.Auth;
using AgentWorldLab.Domain.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace AgentWorldLab.Api.Controllers;

[ApiController]
[Route("api/auth")]
public sealed class AuthController : ControllerBase
{
    private readonly ILabUserStore _labUserStore;
    private readonly ITokenService _tokenService;
    private readonly IAuditService _auditService;

    public AuthController(ILabUserStore labUserStore, ITokenService tokenService, IAuditService auditService)
    {
        _labUserStore = labUserStore;
        _tokenService = tokenService;
        _auditService = auditService;
    }

    [HttpPost("login")]
    [AllowAnonymous]
    public ActionResult<LoginResponse> Login([FromBody] LoginRequest request)
    {
        var correlationId = HttpContext.TraceIdentifier;
        var user = _labUserStore.ValidateCredentials(request.Email, request.Password);
        if (user is null)
        {
            _auditService.Append(new AuditEvent("auth.login", request.Email, "auth", "Denied", correlationId, DateTimeOffset.UtcNow, "invalid_credentials"));
            return Unauthorized(new ErrorResponse("auth.invalid_credentials", "Invalid credentials.", correlationId));
        }

        var token = _tokenService.CreateToken(user);

        _auditService.Append(new AuditEvent("auth.login", request.Email, "auth", "Success", correlationId, DateTimeOffset.UtcNow, "lab_jwt"));
        return Ok(new LoginResponse(token, user.Email, user.Roles));
    }

    [HttpGet("me")]
    [Authorize]
    public ActionResult<object> Me()
    {
        var email = User.Identity?.Name ?? string.Empty;
        var roles = User.Claims.Where(c => c.Type.EndsWith("/role") || c.Type == System.Security.Claims.ClaimTypes.Role)
            .Select(c => c.Value)
            .Distinct(StringComparer.OrdinalIgnoreCase)
            .ToArray();

        return Ok(new { email, roles });
    }
}
