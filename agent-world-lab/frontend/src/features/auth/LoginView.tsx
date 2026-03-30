import { FormEvent, useState } from "react";

type LoginViewProps = {
  onSubmit: (email: string, password: string) => Promise<void>;
  error?: string;
};

export function LoginView({ onSubmit, error }: LoginViewProps) {
  const [email, setEmail] = useState("developer@agentworld.local");
  const [password, setPassword] = useState("DeveloperPass!1");
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setLoading(true);
    try {
      await onSubmit(email, password);
    } finally {
      setLoading(false);
    }
  }

  return (
    <div className="login-shell">
      <form className="login-card" onSubmit={handleSubmit}>
        <h1>Agent World Lab</h1>
        <p>Lab login for role-based auth, tool authorization, and HITL testing.</p>
        <label>
          Email
          <input value={email} onChange={(e) => setEmail(e.target.value)} />
        </label>
        <label>
          Password
          <input type="password" value={password} onChange={(e) => setPassword(e.target.value)} />
        </label>
        {error ? <div className="error-text">{error}</div> : null}
        <button type="submit" disabled={loading}>
          {loading ? "Signing in..." : "Sign in"}
        </button>
      </form>
    </div>
  );
}
