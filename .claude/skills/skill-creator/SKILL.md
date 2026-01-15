---
name: skill-creator
description: Help me create a Claude Code skill. Interviews about the workflow, then generates the skill file.
---

# Skill Creator

Interview the user to understand what skill they want, then create it.

## Interview Phase

Ask these questions one at a time:

1. **"What task or workflow should this skill help with?"**
   - Get the core purpose

2. **Propose a trigger phrase** based on their workflow. Don't ask - suggest:
   - "Based on what you described, I'd trigger this skill when you say 'implement feature', 'add capability to model', or 'build [feature name]'. Does that match when you'd want this guidance?"

3. **"What should Claude DO when the skill is invoked?"**
   - Steps, rules, output format

4. **"Should this output a checklist, a plan, or take action?"**
   - Determines the skill's output mode

## Skill Structure

Skills live in `.claude/skills/<skill-name>/SKILL.md`:

```markdown
---
name: my-skill
description: Short description with trigger keywords.
---

# Skill Title

Instructions for Claude when invoked.
```

## Create the Skill

After the interview, write the SKILL.md file to `.claude/skills/<skill-name>/SKILL.md`.

**No registration needed.** Just creating the file is enough - Claude auto-discovers skills in `.claude/skills/`.

Include:
- Name from the workflow topic
- Description with trigger keywords
- Instructions capturing their process/rules

## Description Best Practices

- Use categorical descriptions: "operations involving X" not "create X, make X, add X"
- Include trigger keywords naturally
- Keep it one sentence

## Example Output

```markdown
---
name: migration-checklist
description: Checklist for database migrations. Invoke when creating or running migrations.
---

# Migration Checklist

Before running any migration:

1. Review the migration file
2. Check for null/default on new columns
3. Verify index additions
4. Test rollback works

After running:
- Verify schema.rb changes
- Check development data
```
