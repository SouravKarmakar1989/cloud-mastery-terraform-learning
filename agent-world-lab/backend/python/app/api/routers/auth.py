from __future__ import annotations

from fastapi import APIRouter, Depends, HTTPException, Request, status

from app.api.contracts import LoginRequest, LoginResponse
from app.api.deps import get_current_user
from app.application.models import CurrentUser

router = APIRouter(prefix="/api/auth", tags=["Auth"])


@router.post("/login", response_model=LoginResponse)
def login(payload: LoginRequest, request: Request) -> LoginResponse:
    user_store = request.app.state.user_store
    token_service = request.app.state.token_service

    user = user_store.validate_credentials(payload.email, payload.password)
    if user is None:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Invalid credentials")

    token = token_service.create_token(user)
    return LoginResponse(accessToken=token, email=user.email, roles=user.roles)


@router.get("/me")
def me(user: CurrentUser = Depends(get_current_user)) -> dict:
    return {"email": user.email, "roles": user.roles}
