#!/bin/bash
set -euo pipefail

# Log everything for debugging
exec > /var/log/cloud-init-runner.log 2>&1
echo "=== Runner setup started at $(date) ==="

export DEBIAN_FRONTEND=noninteractive
apt-get update -y
apt-get install -y curl tar jq ca-certificates

# Create a dedicated non-root user for the runner
useradd -m -s /bin/bash runner-svc || true

mkdir -p /opt/actions-runner
cd /opt/actions-runner

# Pinned version — update when new runner releases are needed
RUNNER_VERSION="2.332.0"
echo "Downloading runner v${RUNNER_VERSION}..."
curl -fsSL -o actions-runner.tar.gz \
  "https://github.com/actions/runner/releases/download/v${RUNNER_VERSION}/actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz"
tar xzf actions-runner.tar.gz
rm -f actions-runner.tar.gz

chown -R runner-svc:runner-svc /opt/actions-runner

REPO_URL="__REPO_URL__"
RUNNER_TOKEN="__RUNNER_TOKEN__"
RUNNER_LABELS="self-hosted,ephemeral"

echo "Configuring runner for ${REPO_URL}..."
sudo -u runner-svc ./config.sh \
  --url "$REPO_URL" \
  --token "$RUNNER_TOKEN" \
  --unattended \
  --ephemeral \
  --disableupdate \
  --labels "$RUNNER_LABELS" \
  --name "ephemeral-$(hostname)" \
  --work "_work"

echo "=== Runner configured, starting ==="
sudo -u runner-svc ./run.sh
echo "=== Runner job complete, shutting down ==="

shutdown -h now
