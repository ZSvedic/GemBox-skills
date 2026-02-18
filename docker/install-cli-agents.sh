#!/usr/bin/env bash
set -e

npm install -g \
  @openai/codex \
  @github/copilot \
  @anthropic-ai/claude-code

mkdir -p \
  /root/.copilot/skills \
  /root/.claude/skills \
  /root/.codex/skills

cp -r /gembox-skills/gembox-skill /root/.copilot/skills/gembox-skill
cp -r /gembox-skills/gembox-skill /root/.claude/skills/gembox-skill
cp -r /gembox-skills/gembox-skill /root/.codex/skills/gembox-skill

npm cache clean --force
