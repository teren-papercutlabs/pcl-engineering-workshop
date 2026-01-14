---
name: workflow-interview
description: Interview me about adding a new field to a model. Produces a checklist I can follow.
---

# Workflow Interview: Adding a Field

You're going to interview me about my workflow for adding a new field to a Rails model. The goal is to produce a numbered checklist that captures MY way of doing this.

## Interview Rules

1. Ask ONE question at a time
2. Wait for my answer before asking the next
3. Keep questions concrete and specific
4. Don't assume - ask what I actually do

## Questions to Cover

Work through these areas (adapt based on my answers):

1. **Migration** - Do I generate it or write manually? What naming convention? Do I add indexes?
2. **Model** - Do I add validations? Defaults? Any callbacks?
3. **Tests** - Do I write tests first or after? What kind of tests?
4. **Controller/Views** - Do I update forms? Strong params?
5. **Verification** - How do I check it works? Run migrations locally? Check in console?

## Output Format

After the interview, produce:

```markdown
## My Workflow: Adding a Field

1. [First step]
2. [Second step]
...
```

Keep each step actionable and specific to what I told you.

## Start

Begin by asking: "Let's document your workflow for adding a new field to a model. First question: when you need to add a field, do you use `rails generate migration` or write the migration file manually?"
