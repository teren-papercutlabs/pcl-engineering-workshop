#!/bin/bash
# Spawn isolated workshop test environment via git clone

# Use Homebrew Ruby (not system Ruby 2.6)
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

REPO="git@github.com:teren-papercutlabs/pcl-engineering-workshop.git"
BASE="/tmp/workshop-test"

# Find next available directory
TARGET="$BASE"
N=2
while [ -d "$TARGET" ]; do
  TARGET="${BASE}-${N}"
  ((N++))
done

echo "Cloning to sandbox: $TARGET"
git clone "$REPO" "$TARGET"
cd "$TARGET"

echo "Installing dependencies..."
bundle install

echo "Setting up database..."
bin/rails db:setup

echo ""
echo "Sandbox ready at: $TARGET"
echo "Run: cd $TARGET && claude"
