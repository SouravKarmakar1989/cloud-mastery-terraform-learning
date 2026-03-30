from datetime import datetime, timedelta, timezone

from app.infrastructure.in_memory.approval_service import InMemoryApprovalService


def test_create_adds_pending() -> None:
    service = InMemoryApprovalService()
    expiry = datetime.now(timezone.utc) + timedelta(minutes=15)
    approval = service.create("azure.resource.scan", "developer@agentworld.local", "corr-1", expiry)

    pending = service.get_pending()
    assert any(item.approval_request_id == approval.approval_request_id for item in pending)


def test_respond_approve_transitions_state() -> None:
    service = InMemoryApprovalService()
    expiry = datetime.now(timezone.utc) + timedelta(minutes=15)
    approval = service.create("azure.resource.scan", "developer@agentworld.local", "corr-1", expiry)

    decided = service.respond(approval.approval_request_id, "approve", "approver@agentworld.local", None, None)

    assert decided.status == "Approved"
    assert decided.decided_by == "approver@agentworld.local"
