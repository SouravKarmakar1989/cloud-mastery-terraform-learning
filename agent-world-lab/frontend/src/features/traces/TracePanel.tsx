import { Panel } from "../../components/Panel";
import type { AuditEvent, TraceEvent } from "../../app/types";

type TracePanelProps = {
  traceEvents: TraceEvent[];
  auditEvents: AuditEvent[];
};

export function TracePanel({ traceEvents, auditEvents }: TracePanelProps) {
  return (
    <Panel title="Trace" subtitle="Tool call traces, orchestration events, and audit snapshots.">
      <h3>Request Trace</h3>
      {traceEvents.length === 0 ? <p className="muted">No trace events yet.</p> : null}
      <ul className="list-tight">
        {traceEvents.map((event, idx) => (
          <li key={`${event.timestampUtc}-${idx}`}>
            <strong>{event.eventType}</strong> - {event.message}
          </li>
        ))}
      </ul>

      <h3>Recent Audit Events</h3>
      {auditEvents.length === 0 ? <p className="muted">No audit events loaded.</p> : null}
      <ul className="list-tight">
        {auditEvents.slice(0, 8).map((event, idx) => (
          <li key={`${event.timestampUtc}-${idx}`}>
            <strong>{event.eventType}</strong> {event.outcome} ({event.actor})
          </li>
        ))}
      </ul>
    </Panel>
  );
}
