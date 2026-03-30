using AgentWorldLab.Application.Abstractions;
using AgentWorldLab.Api.Contracts;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace AgentWorldLab.Api.Controllers;

[ApiController]
[Authorize]
[Route("api/chat")]
public sealed class ChatController : ControllerBase
{
    private readonly ICurrentUserAccessor _currentUserAccessor;
    private readonly IChatService _chatService;
    private readonly IThreadService _threadService;

    public ChatController(ICurrentUserAccessor currentUserAccessor, IChatService chatService, IThreadService threadService)
    {
        _currentUserAccessor = currentUserAccessor;
        _chatService = chatService;
        _threadService = threadService;
    }

    [HttpPost("send")]
    public ActionResult<ChatSendResponse> Send([FromBody] ChatSendRequest request)
    {
        if (string.IsNullOrWhiteSpace(request.Message))
        {
            return BadRequest(new ErrorResponse("chat.message_required", "Message is required.", HttpContext.TraceIdentifier));
        }

        var user = _currentUserAccessor.GetCurrentUser();
        var sessionId = string.IsNullOrWhiteSpace(request.SessionId) ? Guid.NewGuid().ToString("N") : request.SessionId.Trim();
        var threadId = string.IsNullOrWhiteSpace(request.ThreadId) ? Guid.NewGuid().ToString("N") : request.ThreadId.Trim();

        var result = _chatService.Send(
            user,
            request.Message.Trim(),
            sessionId,
            threadId,
            request.CloudProvider ?? "azure",
            request.AgentFrameworkMode ?? "baseline",
            request.ModelBackendMode ?? "baseline",
            HttpContext.TraceIdentifier);

        var response = new ChatSendResponse(
            result.SessionId,
            result.ThreadId,
            result.Reply,
            result.TraceEvents.Select(t => new TraceEventDto(t.EventType, t.Message, DateTimeOffset.UtcNow, HttpContext.TraceIdentifier)).ToArray());

        return Ok(response);
    }

    [HttpGet("thread/{id}")]
    public ActionResult<ChatThreadResponse> GetThread([FromRoute] string id)
    {
        var thread = _threadService.GetThread(id);
        if (thread is null)
        {
            return NotFound(new ErrorResponse("chat.thread_not_found", "Thread was not found.", HttpContext.TraceIdentifier));
        }

        return Ok(new ChatThreadResponse(
            thread.SessionId,
            thread.ThreadId,
            thread.Messages.Select(m => new ChatMessageDto(m.Role, m.Content, m.TimestampUtc)).ToArray()));
    }
}
