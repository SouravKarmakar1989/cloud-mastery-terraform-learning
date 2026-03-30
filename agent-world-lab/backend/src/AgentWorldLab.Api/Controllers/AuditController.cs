using AgentWorldLab.Api.Contracts;
using AgentWorldLab.Application.Abstractions;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace AgentWorldLab.Api.Controllers;

[ApiController]
[Authorize(Roles = "Admin,Approver,Analyst")]
[Route("api/audit")]
public sealed class AuditController : ControllerBase
{
    private readonly IAuditService _auditService;

    public AuditController(IAuditService auditService)
    {
        _auditService = auditService;
    }

    [HttpGet]
    public ActionResult<IReadOnlyCollection<AuditEventResponse>> Get()
    {
        var results = _auditService.List()
            .Select(e => new AuditEventResponse(
                e.EventType,
                e.Actor,
                e.Resource,
                e.Outcome,
                e.CorrelationId,
                e.TimestampUtc,
                e.Details))
            .ToArray();

        return Ok(results);
    }
}
