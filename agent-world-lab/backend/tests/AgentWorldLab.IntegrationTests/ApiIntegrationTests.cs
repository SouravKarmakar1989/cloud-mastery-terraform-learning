using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Text.Json;
using AgentWorldLab.Api.Contracts;
using Microsoft.AspNetCore.Mvc.Testing;
using Xunit;

namespace AgentWorldLab.IntegrationTests;

public sealed class ApiIntegrationTests : IClassFixture<WebApplicationFactory<Program>>
{
    private readonly WebApplicationFactory<Program> _factory;

    public ApiIntegrationTests(WebApplicationFactory<Program> factory)
    {
        _factory = factory;
    }

    [Fact]
    public async Task Health_ReturnsOk()
    {
        var client = _factory.CreateClient();

        var response = await client.GetAsync("/api/health");

        response.EnsureSuccessStatusCode();
    }

    [Fact]
    public async Task Login_Then_GetTools_ReturnsData()
    {
        var client = _factory.CreateClient();
        var login = await client.PostAsJsonAsync("/api/auth/login", new LoginRequest("developer@agentworld.local", "DeveloperPass!1"));
        login.EnsureSuccessStatusCode();

        var payload = await login.Content.ReadFromJsonAsync<LoginResponse>();
        Assert.NotNull(payload);

        client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", payload!.AccessToken);

        var toolsResponse = await client.GetAsync("/api/tools");
        toolsResponse.EnsureSuccessStatusCode();

        var tools = await toolsResponse.Content.ReadFromJsonAsync<ToolDefinitionDto[]>();
        Assert.NotNull(tools);
        Assert.NotEmpty(tools!);
    }

    [Fact]
    public async Task RiskyTool_ReturnsApprovalRequired()
    {
        var client = _factory.CreateClient();
        var login = await client.PostAsJsonAsync("/api/auth/login", new LoginRequest("developer@agentworld.local", "DeveloperPass!1"));
        login.EnsureSuccessStatusCode();

        var payload = await login.Content.ReadFromJsonAsync<LoginResponse>();
        client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", payload!.AccessToken);

        var response = await client.PostAsJsonAsync("/api/tools/test", new ToolTestRequest("azure.resource.scan", "sub=demo", "lab"));
        response.EnsureSuccessStatusCode();

        var result = await response.Content.ReadFromJsonAsync<ToolTestResponse>();
        Assert.NotNull(result);
        Assert.Equal("ApprovalRequired", result!.Status);
        Assert.False(string.IsNullOrWhiteSpace(result.ApprovalRequestId));
    }

    [Fact]
    public async Task Chat_Send_Then_GetThread_ReturnsConversation()
    {
        var client = _factory.CreateClient();
        var login = await client.PostAsJsonAsync("/api/auth/login", new LoginRequest("developer@agentworld.local", "DeveloperPass!1"));
        login.EnsureSuccessStatusCode();

        var payload = await login.Content.ReadFromJsonAsync<LoginResponse>();
        client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", payload!.AccessToken);

        var send = await client.PostAsJsonAsync("/api/chat/send", new ChatSendRequest("hello", null, null, "azure", "baseline", "baseline", "default"));
        send.EnsureSuccessStatusCode();

        var chat = await send.Content.ReadFromJsonAsync<ChatSendResponse>();
        Assert.NotNull(chat);

        var thread = await client.GetAsync($"/api/chat/thread/{chat!.ThreadId}");
        thread.EnsureSuccessStatusCode();

        var threadPayload = await thread.Content.ReadFromJsonAsync<ChatThreadResponse>(new JsonSerializerOptions(JsonSerializerDefaults.Web));
        Assert.NotNull(threadPayload);
        Assert.True(threadPayload!.Messages.Count >= 2);
    }
}
