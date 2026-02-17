#!/usr/bin/env bash
set -euo pipefail

echo "=== VERSION CHECK ==="

dotnet --version || true
git --version || true
node --version || true
npm --version || true
codex --version || true
copilot --version || true
claude --version || true
/usr/bin/pwsh --version || true

echo "====================="
echo "If not already logged in, run 'copilot' / 'claude' / 'codex' and then '/login'."