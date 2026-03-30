namespace AgentWorldLab.Auth;

public sealed class LabUserStore : ILabUserStore
{
    private readonly List<LabUser> _users =
    [
        new("admin@agentworld.local", "AdminPass!1", ["Admin"]),
        new("approver@agentworld.local", "ApproverPass!1", ["Approver"]),
        new("developer@agentworld.local", "DeveloperPass!1", ["Developer"]),
        new("analyst@agentworld.local", "AnalystPass!1", ["Analyst"]),
        new("viewer@agentworld.local", "ViewerPass!1", ["Viewer"])
    ];

    public LabUser? ValidateCredentials(string email, string password)
    {
        return _users.FirstOrDefault(u =>
            string.Equals(u.Email, email, StringComparison.OrdinalIgnoreCase)
            && u.Password == password);
    }

    public LabUser? GetByEmail(string email)
    {
        return _users.FirstOrDefault(u => string.Equals(u.Email, email, StringComparison.OrdinalIgnoreCase));
    }
}
