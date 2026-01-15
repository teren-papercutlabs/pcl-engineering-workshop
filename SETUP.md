# Setup

## Prerequisites

- Ruby 4.0+ (Homebrew: `brew install ruby`)
- Espanso (`brew install espanso`)
- Claude Code

```bash
# Use Homebrew Ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
# Install deps
bundle install

# Setup database
bin/rails db:setup

# Run server
bin/rails server -p 3100

# Espanso (copy macros)
cat espanso/workshop.yml >> ~/Library/Application\ Support/espanso/match/base.yml
espanso restart
```

## Verify

- App at http://localhost:3100
- `:interview` expands in any text field
- `/interview` invokes the skill in Claude
