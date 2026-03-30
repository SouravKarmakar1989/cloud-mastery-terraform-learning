from __future__ import annotations

from dataclasses import dataclass, field


@dataclass(slots=True)
class JwtOptions:
    issuer: str = "AgentWorldLab"
    audience: str = "AgentWorldLab.Client"
    signing_key: str = "CHANGE_ME_TO_A_LONG_RANDOM_DEV_SECRET_1234567890"
    expiry_minutes: int = 60


@dataclass(slots=True)
class HitlSettings:
    mode: str = "risky-tools-only"
    approval_expiry_minutes: int = 15


@dataclass(slots=True)
class FrontendSettings:
    allowed_origins: list[str] = field(default_factory=lambda: ["http://localhost:5173"])


@dataclass(slots=True)
class AppSettings:
    jwt: JwtOptions = field(default_factory=JwtOptions)
    hitl: HitlSettings = field(default_factory=HitlSettings)
    frontend: FrontendSettings = field(default_factory=FrontendSettings)
