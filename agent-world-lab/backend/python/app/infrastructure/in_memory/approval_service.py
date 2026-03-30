from __future__ import annotations

import threading
import uuid
from datetime import datetime, timezone

from app.application.interfaces import IApprovalService
from app.domain.models import ApprovalRequest


class InMemoryApprovalService(IApprovalService):
    def __init__(self) -> None:
        self._approvals: dict[str, ApprovalRequest] = {}
        self._lock = threading.Lock()

    def create(self, tool_name: str, requested_by: str, correlation_id: str, expires_at: datetime) -> ApprovalRequest:
        with self._lock:
            approval = ApprovalRequest(
                approval_request_id=str(uuid.uuid4()),
                tool_name=tool_name,
                requested_by=requested_by,
                correlation_id=correlation_id,
                requested_at_utc=datetime.now(timezone.utc),
                expires_at_utc=expires_at,
            )
            self._approvals[approval.approval_request_id] = approval
            return approval

    def get_pending(self) -> list[ApprovalRequest]:
        with self._lock:
            return [a for a in self._approvals.values() if a.status == "Pending"]

    def get_by_id(self, approval_request_id: str) -> ApprovalRequest | None:
        with self._lock:
            return self._approvals.get(approval_request_id)

    def respond(
        self,
        approval_request_id: str,
        action: str,
        decided_by: str,
        comments: str | None,
        delegated_to: str | None,
    ) -> ApprovalRequest:
        with self._lock:
            approval = self._approvals.get(approval_request_id)
            if approval is None:
                raise ValueError("Approval request not found")
            if approval.status != "Pending":
                raise ValueError("Approval request is not pending")
            if approval.expires_at_utc < datetime.now(timezone.utc):
                raise ValueError("Approval request has expired")

            normalized_action = action.lower()
            if normalized_action == "approve":
                approval.status = "Approved"
            elif normalized_action == "reject":
                approval.status = "Rejected"
            elif normalized_action == "delegate":
                approval.status = "Delegated"
            else:
                raise ValueError("Invalid approval action")

            approval.decided_by = decided_by
            approval.decision_comments = comments
            approval.delegated_to = delegated_to
            return approval
