using AgentWorldLab.Application.Abstractions;
using AgentWorldLab.Api.Contracts;
using AgentWorldLab.Domain.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace AgentWorldLab.Api.Controllers;

[ApiController]
[Authorize(Roles = "Admin,Approver")]
[Route("api/approvals")]
public sealed class ApprovalsController : ControllerBase
{
    private readonly ICurrentUserAccessor _currentUserAccessor;
    private readonly IApprovalService _approvalService;
    private readonly IAuditService _auditService;

    public ApprovalsController(ICurrentUserAccessor currentUserAccessor, IApprovalService approvalService, IAuditService auditService)
    {
        _currentUserAccessor = currentUserAccessor;
        _approvalService = approvalService;
        _auditService = auditService;
    }

    [HttpGet("pending")]
    public ActionResult<IReadOnlyCollection<ApprovalItemResponse>> Pending()
    {
        var items = _approvalService.GetPending()
            .Select(a => new ApprovalItemResponse(
                a.ApprovalRequestId,
                a.ToolName,
                a.RequestedBy,
                a.Status,
                a.RequestedAtUtc,
                a.ExpiresAtUtc,
                a.CorrelationId))
            .ToArray();

        return Ok(items);
    }

    [HttpPost("respond")]
    public ActionResult<ApprovalActionResult> Respond([FromBody] ApprovalResponseRequest request)
    {
        var user = _currentUserAccessor.GetCurrentUser();
        var correlationId = HttpContext.TraceIdentifier;

        try
        {
            var updated = _approvalService.Respond(
                request.ApprovalRequestId,
                request.Action,
                user.Email,
                request.Comments,
                request.DelegateTo);

            _auditService.Append(new AuditEvent(
                "approval.respond",
                user.Email,
                request.ApprovalRequestId,
                updated.Status,
                correlationId,
                DateTimeOffset.UtcNow,
                request.Action));

            return Ok(new ApprovalActionResult(updated.ApprovalRequestId, updated.Status, "Approval updated.", correlationId));
        }
        catch (InvalidOperationException ex)
        {
            _auditService.Append(new AuditEvent(
                "approval.respond",
                user.Email,
                request.ApprovalRequestId,
                "Failed",
                correlationId,
                DateTimeOffset.UtcNow,
                ex.Message));

            return BadRequest(new ErrorResponse("approval.invalid", ex.Message, correlationId));
        }
    }
}
