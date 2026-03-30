using AgentWorldLab.Application.Models;
using AgentWorldLab.Domain.Models;

namespace AgentWorldLab.Application.Abstractions;

public interface ICurrentUserAccessor
{
    CurrentUser GetCurrentUser();
}

public interface IThreadService
{
    ChatThread GetOrCreateThread(string sessionId, string threadId);
    ChatThread? GetThread(string threadId);
}

public interface ISessionService
{
    IReadOnlyCollection<string> GetThreads(string sessionId);
    void RegisterThread(string sessionId, string threadId);
}

public interface IAuditService
{
    void Append(AuditEvent auditEvent);
    IReadOnlyCollection<AuditEvent> List();
}

public interface IApprovalService
{
    ApprovalRequest Create(string toolName, string requestedBy, string correlationId, DateTimeOffset expiresAtUtc);
    IReadOnlyCollection<ApprovalRequest> GetPending();
    ApprovalRequest? GetById(string approvalRequestId);
    ApprovalRequest Respond(string approvalRequestId, string action, string decidedBy, string? comments, string? delegatedTo);
}

public interface IToolCatalogService
{
    IReadOnlyCollection<ToolDefinition> ListTools();
    ToolDefinition? FindByName(string toolName);
}

public interface IToolAuthorizationService
{
    bool IsToolAllowed(CurrentUser user, ToolDefinition tool, string environment);
}

public interface IHitlPolicyService
{
    bool RequiresApproval(CurrentUser user, ToolDefinition tool, string environment);
    DateTimeOffset ComputeApprovalExpiry();
}

public interface IToolExecutionService
{
    ToolExecutionResult Execute(ToolDefinition tool, string? input, string requestedBy, string environment, string correlationId);
}

public interface IAgentOrchestrator
{
    string GenerateReply(string userMessage, string cloudProvider, string agentMode, string modelMode);
}

public interface IChatService
{
    ChatResult Send(
        CurrentUser user,
        string message,
        string sessionId,
        string threadId,
        string cloudProvider,
        string agentFrameworkMode,
        string modelBackendMode,
        string correlationId);
}
