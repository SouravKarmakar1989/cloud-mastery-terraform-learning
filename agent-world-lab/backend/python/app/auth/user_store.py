from __future__ import annotations

from app.auth.models import LabUser


class LabUserStore:
    def __init__(self) -> None:
        self._users = {
            "admin@agentworld.local": LabUser("admin@agentworld.local", "AdminPass!1", ["Admin"]),
            "approver@agentworld.local": LabUser("approver@agentworld.local", "ApproverPass!1", ["Approver"]),
            "developer@agentworld.local": LabUser("developer@agentworld.local", "DeveloperPass!1", ["Developer"]),
            "analyst@agentworld.local": LabUser("analyst@agentworld.local", "AnalystPass!1", ["Analyst"]),
            "viewer@agentworld.local": LabUser("viewer@agentworld.local", "ViewerPass!1", ["Viewer"]),
        }

    def validate_credentials(self, email: str, password: str) -> LabUser | None:
        user = self._users.get(email.lower())
        if not user or user.password != password:
            return None
        return user

    def get_by_email(self, email: str) -> LabUser | None:
        return self._users.get(email.lower())
