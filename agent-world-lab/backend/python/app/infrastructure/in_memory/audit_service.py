from __future__ import annotations

import threading

from app.application.interfaces import IAuditService
from app.domain.models import AuditEvent


class InMemoryAuditService(IAuditService):
    def __init__(self) -> None:
        self._events: list[AuditEvent] = []
        self._lock = threading.Lock()

    def append(self, event: AuditEvent) -> None:
        with self._lock:
            self._events.append(event)

    def list(self) -> list[AuditEvent]:
        with self._lock:
            return list(self._events)
