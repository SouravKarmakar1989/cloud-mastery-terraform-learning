using AgentWorldLab.Application.Models;

namespace AgentWorldLab.Auth;

public interface ILabUserStore
{
    LabUser? ValidateCredentials(string email, string password);
    LabUser? GetByEmail(string email);
}

public interface ITokenService
{
    string CreateToken(LabUser user);
}

public sealed record LabUser(string Email, string Password, IReadOnlyCollection<string> Roles);

public sealed class JwtOptions
{
    public string Issuer { get; set; } = "AgentWorldLab";
    public string Audience { get; set; } = "AgentWorldLab.Client";
    public string SigningKey { get; set; } = "CHANGE_ME_TO_A_LONG_RANDOM_DEV_SECRET_1234567890";
    public int ExpiryMinutes { get; set; } = 60;
}
