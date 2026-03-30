using AgentWorldLab.Application.Abstractions;
using AgentWorldLab.Domain.Models;

namespace AgentWorldLab.Infrastructure.InMemory;

public sealed class InMemoryThreadService : IThreadService
{
    private readonly Dictionary<string, ChatThread> _threads = new(StringComparer.OrdinalIgnoreCase);
    private readonly object _lock = new();

    public ChatThread GetOrCreateThread(string sessionId, string threadId)
    {
        lock (_lock)
        {
            if (_threads.TryGetValue(threadId, out var existing))
            {
                return existing;
            }

            var created = new ChatThread
            {
                SessionId = sessionId,
                ThreadId = threadId
            };
            _threads[threadId] = created;
            return created;
        }
    }

    public ChatThread? GetThread(string threadId)
    {
        lock (_lock)
        {
            return _threads.TryGetValue(threadId, out var value) ? value : null;
        }
    }
}
