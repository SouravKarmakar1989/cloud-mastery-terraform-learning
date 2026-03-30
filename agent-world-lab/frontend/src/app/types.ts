export type LoginResponse = {
  accessToken: string;
  email: string;
  roles: string[];
};

export type ChatSendResponse = {
  sessionId: string;
  threadId: string;
  reply: string;
  traceEvents: TraceEvent[];
};

export type ChatMessage = {
  role: string;
  content: string;
  timestampUtc: string;
};

export type ThreadResponse = {
  sessionId: string;
  threadId: string;
  messages: ChatMessage[];
};

export type SessionThreadsResponse = {
  sessionId: string;
  threadIds: string[];
};

export type ToolDefinition = {
  name: string;
  description: string;
  riskLevel: string;
  allowedRoles: string[];
  requiresApproval: boolean;
};

export type ToolTestResponse = {
  status: string;
  toolName: string;
  message: string;
  approvalRequestId?: string;
  correlationId: string;
};

export type ApprovalItem = {
  approvalRequestId: string;
  toolName: string;
  requestedBy: string;
  status: string;
  requestedAtUtc: string;
  expiresAtUtc: string;
  correlationId: string;
};

export type ApprovalActionResult = {
  approvalRequestId: string;
  status: string;
  message: string;
  correlationId: string;
};

export type TraceEvent = {
  eventType: string;
  message: string;
  timestampUtc: string;
  correlationId: string;
};

export type AuditEvent = {
  eventType: string;
  actor: string;
  resource: string;
  outcome: string;
  correlationId: string;
  timestampUtc: string;
  details: string;
};

export type SettingsState = {
  cloudProvider: "azure" | "aws" | "gcp";
  agentFrameworkMode: "baseline" | "semantic-kernel" | "autogen" | "langchain";
  modelBackendMode: "baseline" | "openai-compatible" | "azure-foundry" | "bedrock";
  toolMode: "default" | "mcp" | "cloud";
};
