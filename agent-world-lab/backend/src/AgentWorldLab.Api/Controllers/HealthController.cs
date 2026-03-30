using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace AgentWorldLab.Api.Controllers;

[ApiController]
[Route("api/health")]
public sealed class HealthController : ControllerBase
{
    [HttpGet]
    [AllowAnonymous]
    public ActionResult<object> Get()
    {
        return Ok(new
        {
            status = "ok",
            service = "AgentWorldLab.Api",
            timestampUtc = DateTimeOffset.UtcNow,
            correlationId = HttpContext.TraceIdentifier
        });
    }
}
