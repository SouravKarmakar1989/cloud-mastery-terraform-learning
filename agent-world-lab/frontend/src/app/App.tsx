import { useEffect, useMemo, useState } from "react";
import { LoginView } from "../features/auth/LoginView";
import { SettingsPanel } from "../features/settings/SettingsPanel";
import { SessionPanel } from "../features/sessions/SessionPanel";
import { ChatView } from "../features/chat/ChatView";
import { ToolPanel } from "../features/chat/ToolPanel";
import { ApprovalPanel } from "../features/approvals/ApprovalPanel";
import { TracePanel } from "../features/traces/TracePanel";
import {
  getAudit,
  getPendingApprovals,
  getSessionThreads,
  getThread,
  listTools,
  login,
  respondApproval,
  sendChat,
  testTool
} from "./apiClient";
import type {
  ApprovalItem,
  AuditEvent,
  ChatMessage,
  SettingsState,
  ToolDefinition,
  TraceEvent
} from "./types";

const defaultSettings: SettingsState = {
  cloudProvider: "azure",
  agentFrameworkMode: "baseline",
  modelBackendMode: "baseline",
  toolMode: "default"
};

export default function App() {
  const [token, setToken] = useState<string>("");
  const [email, setEmail] = useState<string>("");
  const [roles, setRoles] = useState<string[]>([]);
  const [loginError, setLoginError] = useState<string>("");

  const [settings, setSettings] = useState<SettingsState>(defaultSettings);
  const [sessionId, setSessionId] = useState<string>("");
  const [threadId, setThreadId] = useState<string>("");
  const [threads, setThreads] = useState<string[]>([]);
  const [messages, setMessages] = useState<ChatMessage[]>([]);

  const [tools, setTools] = useState<ToolDefinition[]>([]);
  const [selectedTool, setSelectedTool] = useState<string>("");
  const [toolInput, setToolInput] = useState<string>("target=demo");
  const [toolResult, setToolResult] = useState<string>("");

  const [approvals, setApprovals] = useState<ApprovalItem[]>([]);
  const [traceEvents, setTraceEvents] = useState<TraceEvent[]>([]);
  const [auditEvents, setAuditEvents] = useState<AuditEvent[]>([]);
  const [error, setError] = useState<string>("");

  const canApprove = useMemo(() => roles.includes("Admin") || roles.includes("Approver"), [roles]);
  const canReadAudit = useMemo(
    () => roles.includes("Admin") || roles.includes("Approver") || roles.includes("Analyst"),
    [roles]
  );

  async function handleLogin(emailInput: string, passwordInput: string) {
    setLoginError("");
    try {
      const result = await login(emailInput, passwordInput);
      setToken(result.accessToken);
      setEmail(result.email);
      setRoles(result.roles);
    } catch (e) {
      setLoginError(e instanceof Error ? e.message : "Login failed.");
    }
  }

  async function refreshData(currentToken: string, currentSessionId?: string) {
    const [toolList, pending, audit] = await Promise.all([
      listTools(currentToken),
      canApprove ? getPendingApprovals(currentToken) : Promise.resolve([]),
      canReadAudit ? getAudit(currentToken) : Promise.resolve([])
    ]);

    setTools(toolList);
    setSelectedTool((prev) => prev || toolList[0]?.name || "");
    setApprovals(pending);
    setAuditEvents(audit);

    if (currentSessionId) {
      const session = await getSessionThreads(currentToken, currentSessionId);
      setThreads(session.threadIds);
    }
  }

  useEffect(() => {
    if (!token) {
      return;
    }

    void refreshData(token, sessionId).catch((e) => setError(e instanceof Error ? e.message : "Load failed."));
  }, [token, canApprove, canReadAudit]);

  async function handleSend(message: string) {
    if (!token) {
      return;
    }

    setError("");
    try {
      const response = await sendChat(token, {
        message,
        sessionId: sessionId || undefined,
        threadId: threadId || undefined,
        cloudProvider: settings.cloudProvider,
        agentFrameworkMode: settings.agentFrameworkMode,
        modelBackendMode: settings.modelBackendMode,
        toolMode: settings.toolMode
      });

      setSessionId(response.sessionId);
      setThreadId(response.threadId);
      setTraceEvents(response.traceEvents);

      const thread = await getThread(token, response.threadId);
      setMessages(thread.messages);

      const session = await getSessionThreads(token, response.sessionId);
      setThreads(session.threadIds);

      if (canReadAudit) {
        setAuditEvents(await getAudit(token));
      }
    } catch (e) {
      setError(e instanceof Error ? e.message : "Send failed.");
    }
  }

  async function handleThreadSelect(nextThreadId: string) {
    if (!token) {
      return;
    }

    setThreadId(nextThreadId);
    try {
      const thread = await getThread(token, nextThreadId);
      setMessages(thread.messages);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Thread load failed.");
    }
  }

  async function handleRunTool() {
    if (!token || !selectedTool) {
      return;
    }

    setError("");
    try {
      const result = await testTool(token, selectedTool, toolInput, "lab");
      setToolResult(JSON.stringify(result, null, 2));
      if (canApprove) {
        setApprovals(await getPendingApprovals(token));
      }
      if (canReadAudit) {
        setAuditEvents(await getAudit(token));
      }
    } catch (e) {
      setError(e instanceof Error ? e.message : "Tool test failed.");
    }
  }

  async function handleApprovalResponse(approvalRequestId: string, action: "approve" | "reject") {
    if (!token) {
      return;
    }

    setError("");
    try {
      await respondApproval(token, approvalRequestId, action);
      setApprovals(await getPendingApprovals(token));
      if (canReadAudit) {
        setAuditEvents(await getAudit(token));
      }
    } catch (e) {
      setError(e instanceof Error ? e.message : "Approval update failed.");
    }
  }

  if (!token) {
    return <LoginView onSubmit={handleLogin} error={loginError} />;
  }

  return (
    <div className="app-shell">
      <header className="app-header">
        <div>
          <h1>Agent World Lab</h1>
          <p>
            Signed in as {email} ({roles.join(", ")})
          </p>
        </div>
        <button
          onClick={() => {
            setToken("");
            setEmail("");
            setRoles([]);
            setSessionId("");
            setThreadId("");
            setThreads([]);
            setMessages([]);
          }}
        >
          Sign out
        </button>
      </header>

      {error ? <div className="error-banner">{error}</div> : null}

      <div className="layout-grid">
        <SettingsPanel settings={settings} onChange={setSettings} />
        <SessionPanel sessionId={sessionId} threadId={threadId} threads={threads} onThreadSelect={handleThreadSelect} />
        <ChatView messages={messages} onSend={handleSend} />
        <ToolPanel
          tools={tools}
          selectedTool={selectedTool}
          toolInput={toolInput}
          toolResult={toolResult}
          onSelectedToolChange={setSelectedTool}
          onToolInputChange={setToolInput}
          onRunTool={handleRunTool}
        />
        <ApprovalPanel items={approvals} onRespond={handleApprovalResponse} />
        <TracePanel traceEvents={traceEvents} auditEvents={auditEvents} />
      </div>
    </div>
  );
}
