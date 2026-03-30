from __future__ import annotations

from fastapi import Depends, HTTPException, Request, status
from fastapi.security import HTTPAuthorizationCredentials, HTTPBearer

from app.application.models import CurrentUser

auth_scheme = HTTPBearer(auto_error=False)


def get_correlation_id(request: Request) -> str:
    return request.state.correlation_id


def get_current_user(request: Request, creds: HTTPAuthorizationCredentials | None = Depends(auth_scheme)) -> CurrentUser:
    if creds is None:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Authentication required")

    token_service = request.app.state.token_service
    try:
        claims = token_service.decode_token(creds.credentials)
    except Exception as ex:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Invalid token") from ex

    email = claims.get("email") or claims.get("sub")
    roles = claims.get("roles", [])
    if not email:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Invalid token claims")
    return CurrentUser(email=email, roles=roles)
