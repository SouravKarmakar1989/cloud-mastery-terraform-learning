from __future__ import annotations

import threading

from app.application.interfaces import ISessionService


class InMemorySessionService(ISessionService):
    def __init__(self) -> None:
        self._sessions: dict[str, set[str]] = {}
        self._lock = threading.Lock()

    def register_thread(self, session_id: str, thread_id: str) -> None:
        with self._lock:
            threads = self._sessions.setdefault(session_id, set())
            threads.add(thread_id)

    def get_threads(self, session_id: str) -> list[str]:
        with self._lock:
            return sorted(self._sessions.get(session_id, set()))
