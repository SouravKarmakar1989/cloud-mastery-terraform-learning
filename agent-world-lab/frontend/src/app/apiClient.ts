import { config } from "./config";
import type {
  ApprovalActionResult,
  ApprovalItem,
  AuditEvent,
  ChatSendResponse,
  LoginResponse,
  SessionThreadsResponse,
  ThreadResponse,
  ToolDefinition,
  ToolTestResponse
} from "./types";

async function request<T>(
  path: string,
  options: RequestInit,
  token?: string
): Promise<T> {
  const headers = new Headers(options.headers ?? {});
  headers.set("Content-Type", "application/json");
  if (token) {
    headers.set("Authorization", `Bearer ${token}`);
  }

  const response = await fetch(`${config.apiBaseUrl}${path}`, {
    ...options,
    headers
  });

  if (!response.ok) {
    const text = await response.text();
    throw new Error(`${response.status} ${response.statusText}: ${text}`);
  }

  return (await response.json()) as T;
}

export async function login(email: string, password: string): Promise<LoginResponse> {
  return request<LoginResponse>("/api/auth/login", {
    method: "POST",
    body: JSON.stringify({ email, password })
  });
}

export async function sendChat(
  token: string,
  payload: {
    message: string;
    sessionId?: string;
    threadId?: string;
    cloudProvider: string;
    agentFrameworkMode: string;
    modelBackendMode: string;
    toolMode: string;
  }
): Promise<ChatSendResponse> {
  return request<ChatSendResponse>(
    "/api/chat/send",
    {
      method: "POST",
      body: JSON.stringify({
        message: payload.message,
        sessionId: payload.sessionId ?? null,
        threadId: payload.threadId ?? null,
        cloudProvider: payload.cloudProvider,
        agentFrameworkMode: payload.agentFrameworkMode,
        modelBackendMode: payload.modelBackendMode,
        toolMode: payload.toolMode
      })
    },
    token
  );
}

export async function getThread(token: string, threadId: string): Promise<ThreadResponse> {
  return request<ThreadResponse>(`/api/chat/thread/${threadId}`, { method: "GET" }, token);
}

export async function getSessionThreads(token: string, sessionId: string): Promise<SessionThreadsResponse> {
  return request<SessionThreadsResponse>(`/api/sessions/${sessionId}/threads`, { method: "GET" }, token);
}

export async function listTools(token: string): Promise<ToolDefinition[]> {
  return request<ToolDefinition[]>("/api/tools", { method: "GET" }, token);
}

export async function testTool(
  token: string,
  toolName: string,
  input: string,
  environment = "lab"
): Promise<ToolTestResponse> {
  return request<ToolTestResponse>(
    "/api/tools/test",
    {
      method: "POST",
      body: JSON.stringify({ toolName, input, environment })
    },
    token
  );
}

export async function getPendingApprovals(token: string): Promise<ApprovalItem[]> {
  return request<ApprovalItem[]>("/api/approvals/pending", { method: "GET" }, token);
}

export async function respondApproval(
  token: string,
  approvalRequestId: string,
  action: "approve" | "reject" | "delegate",
  comments?: string,
  delegateTo?: string
): Promise<ApprovalActionResult> {
  return request<ApprovalActionResult>(
    "/api/approvals/respond",
    {
      method: "POST",
      body: JSON.stringify({ approvalRequestId, action, comments: comments ?? null, delegateTo: delegateTo ?? null })
    },
    token
  );
}

export async function getAudit(token: string): Promise<AuditEvent[]> {
  return request<AuditEvent[]>("/api/audit", { method: "GET" }, token);
}
