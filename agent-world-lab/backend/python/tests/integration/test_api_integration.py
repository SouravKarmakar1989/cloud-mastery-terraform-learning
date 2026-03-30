from fastapi.testclient import TestClient

from app.main import create_app


def _get_token(client: TestClient) -> str:
    response = client.post(
        "/api/auth/login",
        json={"email": "developer@agentworld.local", "password": "DeveloperPass!1"},
    )
    assert response.status_code == 200
    return response.json()["accessToken"]


def test_health_returns_ok() -> None:
    client = TestClient(create_app())
    response = client.get("/api/health")
    assert response.status_code == 200
    assert response.json()["status"] == "ok"


def test_login_then_get_tools_returns_data() -> None:
    client = TestClient(create_app())
    token = _get_token(client)
    response = client.get("/api/tools", headers={"Authorization": f"Bearer {token}"})

    assert response.status_code == 200
    assert len(response.json()) > 0


def test_risky_tool_returns_approval_required() -> None:
    client = TestClient(create_app())
    token = _get_token(client)
    response = client.post(
        "/api/tools/test",
        headers={"Authorization": f"Bearer {token}"},
        json={"toolName": "azure.resource.scan", "environment": "dev"},
    )

    assert response.status_code == 200
    data = response.json()
    assert data["status"] == "ApprovalRequired"
    assert data["approvalRequestId"]


def test_chat_send_then_get_thread_returns_conversation() -> None:
    client = TestClient(create_app())
    token = _get_token(client)
    send_response = client.post(
        "/api/chat/send",
        headers={"Authorization": f"Bearer {token}"},
        json={"message": "hello"},
    )
    assert send_response.status_code == 200
    data = send_response.json()

    thread_response = client.get(
        f"/api/chat/thread/{data['threadId']}",
        headers={"Authorization": f"Bearer {token}"},
    )
    assert thread_response.status_code == 200
    thread = thread_response.json()
    assert len(thread["messages"]) >= 2
