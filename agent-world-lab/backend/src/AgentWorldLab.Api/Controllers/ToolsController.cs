using AgentWorldLab.Application.Abstractions;
using AgentWorldLab.Api.Contracts;
using AgentWorldLab.Domain.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace AgentWorldLab.Api.Controllers;

[ApiController]
[Authorize]
[Route("api/tools")]
public sealed class ToolsController : ControllerBase
{
    private readonly ICurrentUserAccessor _currentUserAccessor;
    private readonly IToolCatalogService _toolCatalogService;
    private readonly IToolAuthorizationService _toolAuthorizationService;
    private readonly IHitlPolicyService _hitlPolicyService;
    private readonly IApprovalService _approvalService;
    private readonly IToolExecutionService _toolExecutionService;
    private readonly IAuditService _auditService;

    public ToolsController(
        ICurrentUserAccessor currentUserAccessor,
        IToolCatalogService toolCatalogService,
        IToolAuthorizationService toolAuthorizationService,
        IHitlPolicyService hitlPolicyService,
        IApprovalService approvalService,
        IToolExecutionService toolExecutionService,
        IAuditService auditService)
    {
        _currentUserAccessor = currentUserAccessor;
        _toolCatalogService = toolCatalogService;
        _toolAuthorizationService = toolAuthorizationService;
        _hitlPolicyService = hitlPolicyService;
        _approvalService = approvalService;
        _toolExecutionService = toolExecutionService;
        _auditService = auditService;
    }

    [HttpGet]
    public ActionResult<IReadOnlyCollection<ToolDefinitionDto>> GetTools()
    {
        var user = _currentUserAccessor.GetCurrentUser();
        var env = "lab";
        var tools = _toolCatalogService.ListTools()
            .Where(t => _toolAuthorizationService.IsToolAllowed(user, t, env))
            .Select(t => new ToolDefinitionDto(
                t.Name,
                t.Description,
                t.RiskLevel.ToString(),
                t.AllowedRoles,
                _hitlPolicyService.RequiresApproval(user, t, env)))
            .ToArray();

        return Ok(tools);
    }

    [HttpPost("test")]
    public ActionResult<ToolTestResponse> Test([FromBody] ToolTestRequest request)
    {
        var correlationId = HttpContext.TraceIdentifier;
        var user = _currentUserAccessor.GetCurrentUser();
        var env = string.IsNullOrWhiteSpace(request.Environment) ? "lab" : request.Environment.Trim();

        var tool = _toolCatalogService.FindByName(request.ToolName);
        if (tool is null)
        {
            _auditService.Append(new AuditEvent("tool.test", user.Email, request.ToolName, "Denied", correlationId, DateTimeOffset.UtcNow, "tool_not_found"));
            return NotFound(new ToolTestResponse("NotFound", request.ToolName, "Tool not found.", null, correlationId));
        }

        if (!_toolAuthorizationService.IsToolAllowed(user, tool, env))
        {
            _auditService.Append(new AuditEvent("tool.test", user.Email, tool.Name, "Denied", correlationId, DateTimeOffset.UtcNow, "role_not_allowed"));
            return Forbid();
        }

        if (_hitlPolicyService.RequiresApproval(user, tool, env))
        {
            var approval = _approvalService.Create(tool.Name, user.Email, correlationId, _hitlPolicyService.ComputeApprovalExpiry());
            _auditService.Append(new AuditEvent("tool.test", user.Email, tool.Name, "ApprovalRequired", correlationId, DateTimeOffset.UtcNow, approval.ApprovalRequestId));
            return Ok(new ToolTestResponse("ApprovalRequired", tool.Name, "Approval is required before execution.", approval.ApprovalRequestId, correlationId));
        }

        var result = _toolExecutionService.Execute(tool, request.Input, user.Email, env, correlationId);
        _auditService.Append(new AuditEvent("tool.test", user.Email, tool.Name, result.Status, correlationId, DateTimeOffset.UtcNow, result.Message));
        return Ok(new ToolTestResponse(result.Status, tool.Name, result.Message, result.ApprovalRequestId, correlationId));
    }
}
