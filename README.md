# Git Hook Toolkit

A small, practical set of Git hooks and helpers for personal projects. Focuses on:
- Pre-commit sanity checks (trailing whitespace, large files)
- Commit message linting with a lightweight, human style
- Optional secret scanning patterns

This is intentionally minimal so it’s easy to drop into solo repos.

## Quick Start
- Copy `hooks/` into your repo’s `.git/hooks/` and make scripts executable.
- Tweak `config/sample.config.json` to suit your preferences.
- Optionally set `GIT_HOOK_MAX_SIZE_BYTES` to change the large-file cap.

## Notes
- No external dependencies; POSIX shell where possible.
- Scripts try to fail softly with helpful messages.

## Roadmap
- Add configurable size thresholds per file type.
- Add ignore patterns for vendored or generated files.

## License
Choose a permissive license when you copy this into a project.
