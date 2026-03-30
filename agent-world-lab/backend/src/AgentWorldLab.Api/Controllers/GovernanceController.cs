using AgentWorldLab.Application.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;

namespace AgentWorldLab.Api.Controllers;

[ApiController]
[Authorize(Roles = "Admin")]
[Route("api/admin/governance")]
public sealed class GovernanceController : ControllerBase
{
    private readonly IOptions<HitlOptions> _hitlOptions;

    public GovernanceController(IOptions<HitlOptions> hitlOptions)
    {
        _hitlOptions = hitlOptions;
    }

    [HttpGet]
    public ActionResult<object> Get()
    {
        return Ok(new
        {
            hitlMode = _hitlOptions.Value.Mode,
            approvalExpiryMinutes = _hitlOptions.Value.ApprovalExpiryMinutes,
            correlationHeader = Common.CorrelationIdMiddleware.HeaderName
        });
    }
}
