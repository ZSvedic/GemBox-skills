#!/usr/bin/env bash
set -euo pipefail

echo "=== VERSION CHECK ==="

dotnet --version
git --version
node --version
npm --version
codex --version
copilot --version
claude --version
/usr/bin/pwsh --version

echo "====================="
echo "If not already logged in, run 'copilot' / 'claude' / 'codex' and then '/login'."