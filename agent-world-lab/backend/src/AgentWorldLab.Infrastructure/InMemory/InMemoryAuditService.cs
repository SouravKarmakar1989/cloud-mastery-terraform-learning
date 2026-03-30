using AgentWorldLab.Application.Abstractions;
using AgentWorldLab.Domain.Models;

namespace AgentWorldLab.Infrastructure.InMemory;

public sealed class InMemoryAuditService : IAuditService
{
    private readonly List<AuditEvent> _events = [];
    private readonly object _lock = new();

    public void Append(AuditEvent auditEvent)
    {
        lock (_lock)
        {
            _events.Add(auditEvent);
        }
    }

    public IReadOnlyCollection<AuditEvent> List()
    {
        lock (_lock)
        {
            return _events.OrderByDescending(e => e.TimestampUtc).ToArray();
        }
    }
}
