import { Panel } from "../../components/Panel";
import type { ToolDefinition } from "../../app/types";

type ToolPanelProps = {
  tools: ToolDefinition[];
  selectedTool: string;
  toolInput: string;
  toolResult?: string;
  onSelectedToolChange: (toolName: string) => void;
  onToolInputChange: (input: string) => void;
  onRunTool: () => Promise<void>;
};

export function ToolPanel({
  tools,
  selectedTool,
  toolInput,
  toolResult,
  onSelectedToolChange,
  onToolInputChange,
  onRunTool
}: ToolPanelProps) {
  return (
    <Panel title="Tools" subtitle="GET /api/tools and POST /api/tools/test">
      <div className="grid-form">
        <label>
          Tool
          <select value={selectedTool} onChange={(e) => onSelectedToolChange(e.target.value)}>
            {tools.map((tool) => (
              <option key={tool.name} value={tool.name}>
                {tool.name} ({tool.riskLevel})
              </option>
            ))}
          </select>
        </label>
        <label>
          Input
          <input value={toolInput} onChange={(e) => onToolInputChange(e.target.value)} />
        </label>
      </div>
      <button onClick={() => void onRunTool()} disabled={!selectedTool || tools.length === 0}>
        Run Tool
      </button>
      {toolResult ? <pre className="tool-result">{toolResult}</pre> : null}
    </Panel>
  );
}
