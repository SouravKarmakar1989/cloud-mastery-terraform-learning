from __future__ import annotations

from dataclasses import dataclass


@dataclass(slots=True)
class LabUser:
    email: str
    password: str
    roles: list[str]
