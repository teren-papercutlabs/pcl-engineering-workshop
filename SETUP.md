# Workshop Environment Setup

Set up the Rails workshop app for today's Claude Code session.

**Important:** Check if each tool/step already exists before running. Skip steps that are already done.

## Tasks

1. **Check Ruby version** — run `ruby --version`. Need Ruby 3.0+ (4.0+ preferred).
   - If already 3.0+: you're good, skip this step
   - If using macOS system Ruby (2.6.x): need a newer Ruby via rbenv, asdf, or Homebrew
   - Quick fix if no Ruby manager: `export PATH="/opt/homebrew/opt/ruby/bin:$PATH"` (requires `brew install ruby`)

2. **Install dependencies** — run `bundle install`

3. **Set up database** — run `bin/rails db:setup` (creates SQLite database and seeds sample data)

4. **Add yolo alias** to shell config (detect zsh or bash). Check if it already exists first.
   ```
   alias yolo='claude --dangerously-skip-permissions'
   ```

5. **Install espanso macros** from `espanso/workshop.yml`:
   - Copy/append to `~/Library/Application Support/espanso/match/base.yml`
   - Restart espanso (`espanso restart`)

6. **Start the Rails server** on port 3200:
   ```
   bin/rails server -p 3200
   ```
   Run this in background so we can continue working.

7. **Verify setup** — confirm http://localhost:3200 returns 200 and shows the task list.

After each step, confirm what you did before moving on.
