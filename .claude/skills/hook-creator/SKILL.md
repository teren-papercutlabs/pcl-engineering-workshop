---
name: hook-creator
description: Help me create a Claude Code hook. Interviews about what to catch, then generates PreToolUse or PostToolUse hook.
---

# Hook Creator

Use the **interview skill** protocol to understand what guardrail they want, then create the hook.

## Questions to Ask

1. **"What do you want to catch or check?"**
   - Get the core concern

2. **"Describe a scenario where this should fire."**
   - Helps determine Pre vs Post

3. **"What should happen when it fires?"**
   - Block, warn, remind, validate

## Pre vs Post Heuristic

Based on their answers, determine:

**PreToolUse** (fires BEFORE action):
- Catch wrong approach before it happens
- "Don't do X directly, do Y instead"
- "Pause and consider before acting"
- Can BLOCK the action

**PostToolUse** (fires AFTER action):
- Validate output (lint-like)
- "Check the result follows pattern X"
- Deterministic checks on what was written
- Cannot block (already happened), but can warn

## Tool Matching

Common patterns:
- `Bash` with `db:migrate` - catches migration runs
- `Edit` with `app/models/` - catches model edits
- `Write` with `db/migrate/` - catches migration file creation
- `Bash` with `rm` or `delete` - catches destructive commands

## After the Interview

Create:

### 1. Hook Script

Create `.claude/hooks/<hook-name>.sh` (or `.py`):

```bash
#!/bin/bash
# Hook: <name>
# Fires: <Pre|Post>ToolUse on <tool>

echo "Reminder: <message>"
exit 0
```

For blocking hooks, exit non-zero:
```bash
echo "Blocked: <reason>"
exit 1
```

### 2. Settings Entry

Add to `.claude/settings.json`:

```json
{
  "hooks": {
    "<Pre|Post>ToolUse": [
      {
        "matcher": {
          "tool": "<Bash|Edit|Write>",
          "<command|file_path>": "<pattern>"
        },
        "hooks": [
          {
            "type": "command",
            "command": ".claude/hooks/<hook-name>.sh"
          }
        ]
      }
    ]
  }
}
```

## Matcher Patterns

- `command`: regex match on Bash command (e.g., `"db:migrate"`)
- `file_path`: glob match on file path (e.g., `"app/models/**"`)

## Example Hooks

**Pre-migrate reminder:**
```json
{
  "matcher": { "tool": "Bash", "command": "db:migrate" },
  "hooks": [{ "type": "command", "command": "echo 'Did you review the migration?'" }]
}
```

**Post-model edit lint:**
```json
{
  "matcher": { "tool": "Edit", "file_path": "app/models/**" },
  "hooks": [{ "type": "command", "command": ".claude/hooks/check-model.sh" }]
}
```
