from __future__ import annotations

from datetime import datetime, timedelta, timezone

import jwt

from app.auth.models import LabUser
from app.settings import JwtOptions


class TokenService:
    def __init__(self, options: JwtOptions) -> None:
        self._options = options

    def create_token(self, user: LabUser) -> str:
        now = datetime.now(timezone.utc)
        payload = {
            "sub": user.email,
            "email": user.email,
            "name": user.email,
            "roles": user.roles,
            "iss": self._options.issuer,
            "aud": self._options.audience,
            "iat": int(now.timestamp()),
            "exp": int((now + timedelta(minutes=self._options.expiry_minutes)).timestamp()),
        }
        return jwt.encode(payload, self._options.signing_key, algorithm="HS256")

    def decode_token(self, token: str) -> dict:
        return jwt.decode(
            token,
            self._options.signing_key,
            algorithms=["HS256"],
            audience=self._options.audience,
            issuer=self._options.issuer,
        )
