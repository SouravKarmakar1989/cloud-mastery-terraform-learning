import { Panel } from "../../components/Panel";
import type { ApprovalItem } from "../../app/types";

type ApprovalPanelProps = {
  items: ApprovalItem[];
  onRespond: (approvalRequestId: string, action: "approve" | "reject") => Promise<void>;
};

export function ApprovalPanel({ items, onRespond }: ApprovalPanelProps) {
  return (
    <Panel title="Approvals" subtitle="HITL inbox for pending tool approvals.">
      {items.length === 0 ? (
        <p className="muted">No pending approvals.</p>
      ) : (
        <ul className="list-tight">
          {items.map((item) => (
            <li key={item.approvalRequestId} className="approval-card">
              <div>
                <strong>{item.toolName}</strong> by {item.requestedBy}
              </div>
              <div className="muted">Expires: {new Date(item.expiresAtUtc).toLocaleString()}</div>
              <div className="row-gap">
                <button onClick={() => onRespond(item.approvalRequestId, "approve")}>Approve</button>
                <button className="btn-danger" onClick={() => onRespond(item.approvalRequestId, "reject")}>Reject</button>
              </div>
            </li>
          ))}
        </ul>
      )}
    </Panel>
  );
}
