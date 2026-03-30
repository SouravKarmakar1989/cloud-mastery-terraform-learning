import { Panel } from "../../components/Panel";

type SessionPanelProps = {
  sessionId?: string;
  threadId?: string;
  threads: string[];
  onThreadSelect: (threadId: string) => void;
};

export function SessionPanel({ sessionId, threadId, threads, onThreadSelect }: SessionPanelProps) {
  return (
    <Panel title="Session / Threads" subtitle={sessionId ? `Session: ${sessionId}` : "No active session yet."}>
      {threads.length === 0 ? (
        <p className="muted">No threads yet. Send a message to create one.</p>
      ) : (
        <ul className="list-tight">
          {threads.map((t) => (
            <li key={t}>
              <button className={t === threadId ? "chip chip-active" : "chip"} onClick={() => onThreadSelect(t)}>
                {t}
              </button>
            </li>
          ))}
        </ul>
      )}
    </Panel>
  );
}
