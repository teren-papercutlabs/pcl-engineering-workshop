---
name: feature-workflow
description: Interview me about my feature development workflow. Invoke when starting a new feature to capture and follow my process.
---

# Feature Workflow Interview

When invoked, interview the user to understand their feature development workflow, then follow it.

## Interview Phase

Ask these questions one at a time. Wait for each answer before proceeding.

1. **"When you start a new feature, what's the FIRST thing you do?"**
   - Examples: create a branch, write a ticket, check existing code

2. **"Before writing code, what do you check or set up?"**
   - Examples: run tests, check dependencies, review related code

3. **"How do you structure your commits?"**
   - Examples: atomic commits, conventional commits, feature branches

4. **"What should ALWAYS happen before you consider a feature done?"**
   - Examples: tests pass, code review, manual testing

5. **"Any patterns or conventions specific to this codebase I should follow?"**
   - Examples: naming conventions, file organization, error handling patterns

## Execution Phase

After gathering answers, summarize what you learned:

```
## Your Feature Workflow

1. [First step from their answer]
2. [Second step...]
3. [...]

## Before Done Checklist
- [ ] [Item from their answer]
- [ ] [...]
```

Then ask: **"Should I follow this workflow now for a feature? If so, what feature?"**

## Notes

- Be conversational, not robotic
- If an answer is vague, ask a clarifying follow-up
- Capture specifics - "run tests" becomes "run `bin/rails test`"
