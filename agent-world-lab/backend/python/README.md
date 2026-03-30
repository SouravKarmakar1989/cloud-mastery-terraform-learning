# Agent World Lab Python Backend

Python FastAPI backend that mirrors the existing .NET 8 backend behavior and architecture.

## Stack

- Python 3.11+
- FastAPI
- Pydantic v2
- PyJWT
- pytest

## Run

```powershell
cd agent-world-lab/backend/python
pip install -e .[dev]
uvicorn app.main:app --reload --port 8081
```

## Test

```powershell
cd agent-world-lab/backend/python
pytest -q
```

## API

The API mirrors .NET endpoints:

- `POST /api/auth/login`
- `GET /api/auth/me`
- `GET /api/health`
- `POST /api/chat/send`
- `GET /api/chat/thread/{threadId}`
- `GET /api/tools`
- `POST /api/tools/test`
- `GET /api/approvals/pending`
- `POST /api/approvals/respond`
- `GET /api/audit`
- `GET /api/sessions/{sessionId}/threads`
- `GET /api/admin/governance`

See `ARCHITECTURE_PYTHON_BACKEND.md` for full details.
