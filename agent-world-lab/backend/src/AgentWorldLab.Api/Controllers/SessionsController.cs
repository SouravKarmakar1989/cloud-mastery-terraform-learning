using AgentWorldLab.Api.Contracts;
using AgentWorldLab.Application.Abstractions;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace AgentWorldLab.Api.Controllers;

[ApiController]
[Authorize]
[Route("api/sessions")]
public sealed class SessionsController : ControllerBase
{
    private readonly ISessionService _sessionService;

    public SessionsController(ISessionService sessionService)
    {
        _sessionService = sessionService;
    }

    [HttpGet("{sessionId}/threads")]
    public ActionResult<SessionThreadsResponse> GetThreads([FromRoute] string sessionId)
    {
        var threads = _sessionService.GetThreads(sessionId);
        return Ok(new SessionThreadsResponse(sessionId, threads));
    }
}
