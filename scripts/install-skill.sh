#!/usr/bin/env bash
set -euo pipefail

SKILL_SRC="gembox-skill"

echo "=== Installing GemBox skills..."

# GitHub Copilot CLI
mkdir -p "$HOME/.copilot/skills"
cp -r "$SKILL_SRC" "$HOME/.copilot/skills"

# Claude Code
mkdir -p "$HOME/.claude/skills"
cp -r "$SKILL_SRC" "$HOME/.claude/skills"

# OpenAI Codex CLI
mkdir -p "$HOME/.codex/skills"
cp -r "$SKILL_SRC" "$HOME/.codex/skills"