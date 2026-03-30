import type { SettingsState } from "../../app/types";
import { Panel } from "../../components/Panel";

type SettingsPanelProps = {
  settings: SettingsState;
  onChange: (next: SettingsState) => void;
};

export function SettingsPanel({ settings, onChange }: SettingsPanelProps) {
  return (
    <Panel title="Settings" subtitle="Provider and orchestration selectors for learning mode.">
      <div className="grid-form">
        <label>
          Cloud Provider
          <select
            value={settings.cloudProvider}
            onChange={(e) => onChange({ ...settings, cloudProvider: e.target.value as SettingsState["cloudProvider"] })}
          >
            <option value="azure">Azure</option>
            <option value="aws">AWS</option>
            <option value="gcp">GCP</option>
          </select>
        </label>
        <label>
          Agent Framework Mode
          <select
            value={settings.agentFrameworkMode}
            onChange={(e) => onChange({ ...settings, agentFrameworkMode: e.target.value as SettingsState["agentFrameworkMode"] })}
          >
            <option value="baseline">Baseline</option>
            <option value="semantic-kernel">Semantic Kernel (shape)</option>
            <option value="autogen">AutoGen (shape)</option>
            <option value="langchain">LangChain (shape)</option>
          </select>
        </label>
        <label>
          Model Backend Mode
          <select
            value={settings.modelBackendMode}
            onChange={(e) => onChange({ ...settings, modelBackendMode: e.target.value as SettingsState["modelBackendMode"] })}
          >
            <option value="baseline">Baseline</option>
            <option value="openai-compatible">OpenAI-compatible</option>
            <option value="azure-foundry">Azure Foundry (shape)</option>
            <option value="bedrock">Bedrock (shape)</option>
          </select>
        </label>
        <label>
          Tool Mode
          <select
            value={settings.toolMode}
            onChange={(e) => onChange({ ...settings, toolMode: e.target.value as SettingsState["toolMode"] })}
          >
            <option value="default">Default</option>
            <option value="mcp">MCP</option>
            <option value="cloud">Cloud</option>
          </select>
        </label>
      </div>
    </Panel>
  );
}
