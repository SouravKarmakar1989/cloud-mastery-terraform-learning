using AgentWorldLab.Application.Abstractions;

namespace AgentWorldLab.Infrastructure.InMemory;

public sealed class InMemorySessionService : ISessionService
{
    private readonly Dictionary<string, HashSet<string>> _sessionThreads = new(StringComparer.OrdinalIgnoreCase);
    private readonly object _lock = new();

    public IReadOnlyCollection<string> GetThreads(string sessionId)
    {
        lock (_lock)
        {
            if (!_sessionThreads.TryGetValue(sessionId, out var threads))
            {
                return [];
            }

            return threads.ToArray();
        }
    }

    public void RegisterThread(string sessionId, string threadId)
    {
        lock (_lock)
        {
            if (!_sessionThreads.TryGetValue(sessionId, out var threads))
            {
                threads = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
                _sessionThreads[sessionId] = threads;
            }

            threads.Add(threadId);
        }
    }
}
