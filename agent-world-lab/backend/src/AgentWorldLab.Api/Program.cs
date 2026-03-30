using System.Text;
using AgentWorldLab.Adapters.Abstractions;
using AgentWorldLab.Adapters.Aws;
using AgentWorldLab.Adapters.Azure;
using AgentWorldLab.Adapters.Gcp;
using AgentWorldLab.Adapters.Mcp;
using AgentWorldLab.Application.Abstractions;
using AgentWorldLab.Application.Models;
using AgentWorldLab.Api.Common;
using AgentWorldLab.Auth;
using AgentWorldLab.Infrastructure.InMemory;
using AgentWorldLab.Infrastructure.Services;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;

var builder = WebApplication.CreateBuilder(args);
var allowedOrigins = builder.Configuration.GetSection("Frontend:AllowedOrigins").Get<string[]>() ?? ["http://localhost:5173"];

builder.Services.Configure<JwtOptions>(builder.Configuration.GetSection("Jwt"));
builder.Services.Configure<HitlOptions>(builder.Configuration.GetSection("Hitl"));

builder.Services.AddSingleton<ILabUserStore, LabUserStore>();
builder.Services.AddSingleton<ITokenService, TokenService>();
builder.Services.AddSingleton<IThreadService, InMemoryThreadService>();
builder.Services.AddSingleton<IApprovalService, InMemoryApprovalService>();
builder.Services.AddSingleton<IAuditService, InMemoryAuditService>();
builder.Services.AddSingleton<IToolCatalogService, ToolCatalogService>();
builder.Services.AddSingleton<IToolAuthorizationService, ToolAuthorizationService>();
builder.Services.AddSingleton<IHitlPolicyService, HitlPolicyService>();
builder.Services.AddSingleton<IProviderToolAdapter, AzureToolAdapter>();
builder.Services.AddSingleton<IProviderToolAdapter, AwsToolAdapter>();
builder.Services.AddSingleton<IProviderToolAdapter, GcpToolAdapter>();
builder.Services.AddSingleton<IProviderToolAdapter, McpToolAdapter>();
builder.Services.AddSingleton<IToolExecutionService, ToolExecutionService>();
builder.Services.AddSingleton<IAgentOrchestrator, BaselineAgentOrchestrator>();
builder.Services.AddSingleton<IChatService, ChatService>();
builder.Services.AddSingleton<ISessionService, InMemorySessionService>();

builder.Services.AddHttpContextAccessor();
builder.Services.AddScoped<ICurrentUserAccessor, CurrentUserAccessor>();

var jwtConfig = builder.Configuration.GetSection("Jwt").Get<JwtOptions>() ?? new JwtOptions();
var key = Encoding.UTF8.GetBytes(jwtConfig.SigningKey);

builder.Services.AddAuthentication(options =>
{
    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
}).AddJwtBearer(options =>
{
    options.TokenValidationParameters = new TokenValidationParameters
    {
        ValidateIssuerSigningKey = true,
        IssuerSigningKey = new SymmetricSecurityKey(key),
        ValidateIssuer = true,
        ValidIssuer = jwtConfig.Issuer,
        ValidateAudience = true,
        ValidAudience = jwtConfig.Audience,
        ValidateLifetime = true,
        ClockSkew = TimeSpan.FromMinutes(1)
    };
});

builder.Services.AddAuthorization();
builder.Services.AddCors(options =>
{
    options.AddPolicy("FrontendPolicy", policy =>
    {
        policy.WithOrigins(allowedOrigins)
            .AllowAnyHeader()
            .AllowAnyMethod();
    });
});
builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

app.UseMiddleware<CorrelationIdMiddleware>();

app.UseSwagger();
app.UseSwaggerUI();

app.UseCors("FrontendPolicy");
app.UseAuthentication();
app.UseAuthorization();

app.MapControllers();

app.Run();

public partial class Program;
