from __future__ import annotations

from abc import ABC, abstractmethod
from dataclasses import dataclass, field
from datetime import datetime, timezone


def utc_now() -> datetime:
    return datetime.now(timezone.utc)


@dataclass(slots=True)
class ProviderToolContext:
    tool_name: str
    tool_input: str | None
    correlation_id: str
    requested_by: str
    environment: str | None


@dataclass(slots=True)
class ProviderToolResponse:
    status: str
    message: str
    provider: str
    timestamp_utc: datetime = field(default_factory=utc_now)


class IProviderToolAdapter(ABC):
    provider_name: str

    @abstractmethod
    def can_handle(self, tool_name: str) -> bool:
        raise NotImplementedError

    @abstractmethod
    def execute(self, context: ProviderToolContext) -> ProviderToolResponse:
        raise NotImplementedError
