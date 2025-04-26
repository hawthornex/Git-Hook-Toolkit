#!/usr/bin/env sh
set -eu

repo_root="$(git rev-parse --show-toplevel 2>/dev/null || echo ".")"
src="$repo_root/hooks"
dst="$repo_root/.git/hooks"

if [ ! -d "$dst" ]; then
  echo "Cannot find .git/hooks. Are you inside a git repo?" >&2
  exit 1
fi

cp -f "$src"/pre-commit "$dst"/pre-commit
cp -f "$src"/commit-msg "$dst"/commit-msg
chmod +x "$dst"/pre-commit" "$dst"/commit-msg
echo "Installed pre-commit and commit-msg hooks into .git/hooks" 
