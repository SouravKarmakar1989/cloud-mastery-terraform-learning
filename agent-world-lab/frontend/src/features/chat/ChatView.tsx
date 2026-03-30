import { FormEvent, useState } from "react";
import { Panel } from "../../components/Panel";
import type { ChatMessage } from "../../app/types";

type ChatViewProps = {
  messages: ChatMessage[];
  onSend: (message: string) => Promise<void>;
};

export function ChatView({ messages, onSend }: ChatViewProps) {
  const [input, setInput] = useState("");
  const [sending, setSending] = useState(false);

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    if (!input.trim()) {
      return;
    }

    setSending(true);
    try {
      await onSend(input.trim());
      setInput("");
    } finally {
      setSending(false);
    }
  }

  return (
    <Panel title="Chat" subtitle="POST /api/chat/send and GET /api/chat/thread/{id}">
      <div className="chat-log">
        {messages.length === 0 ? <p className="muted">No messages yet.</p> : null}
        {messages.map((msg, idx) => (
          <div key={`${msg.timestampUtc}-${idx}`} className={msg.role === "user" ? "msg msg-user" : "msg msg-assistant"}>
            <div className="msg-role">{msg.role}</div>
            <div className="msg-content">{msg.content}</div>
          </div>
        ))}
      </div>
      <form className="chat-form" onSubmit={handleSubmit}>
        <input value={input} onChange={(e) => setInput(e.target.value)} placeholder="Type your message..." />
        <button type="submit" disabled={sending}>
          {sending ? "Sending..." : "Send"}
        </button>
      </form>
    </Panel>
  );
}
