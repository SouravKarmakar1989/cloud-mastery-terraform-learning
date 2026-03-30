from __future__ import annotations

import threading
import uuid

from app.application.interfaces import IThreadService
from app.domain.models import ChatThread


class InMemoryThreadService(IThreadService):
    def __init__(self) -> None:
        self._threads: dict[str, ChatThread] = {}
        self._lock = threading.Lock()

    def get_or_create_thread(self, session_id: str, thread_id: str | None) -> ChatThread:
        with self._lock:
            resolved_thread_id = thread_id or str(uuid.uuid4())
            thread = self._threads.get(resolved_thread_id)
            if thread is None:
                thread = ChatThread(session_id=session_id, thread_id=resolved_thread_id)
                self._threads[resolved_thread_id] = thread
            return thread

    def get_thread(self, thread_id: str) -> ChatThread | None:
        with self._lock:
            return self._threads.get(thread_id)
