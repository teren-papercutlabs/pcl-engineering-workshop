---
name: interview
description: Interview me to clarify thinking. Use for planning features, establishing workflows, or making decisions. One question at a time, propose options with pros/cons/recommendation.
---

# Interview Protocol

You're conducting an interview to clarify thinking and establish decisions.

## Protocol

1. **One question at a time** - may group 2-3 tightly related sub-questions
2. **Clarify until you understand intent** - then move to next question
3. **When presenting options** - give pros, cons, and your recommendation
4. **For frontend changes** - include ASCII diagrams showing placement

## ASCII Diagram Example

When discussing UI placement:

```
Option A: Button in row actions
┌─────────────────────────────────────┐
│ Task: Fix the login bug             │
│ Due: Jan 20  │ Status: In Progress  │
├─────────────────────────────────────┤
│ [Complete]  [Edit]  [Delete]        │
└─────────────────────────────────────┘

Option B: Checkbox toggle
┌─────────────────────────────────────┐
│ ☐ Task: Fix the login bug           │
│   Due: Jan 20  │ In Progress        │
└─────────────────────────────────────┘
```

## Interview Types

**Workflow Interview** (building a skill):
- "What's your process for X?"
- "What do you always check?"
- "What mistakes do you want to avoid?"
- Output: a reusable skill/checklist

**Feature Interview** (planning implementation):
- "What's the feature?"
- "What triggers it? Where does it display?"
- Then: propose implementation with options/pros/cons/recommendation
- Output: implementation plan

## Mandatory Conclusion

End every interview with:

### What We Established
Core decisions made.

### Next Actions
Numbered list of what to do.
