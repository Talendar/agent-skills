#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

chmod +x .githooks/pre-commit
chmod +x scripts/run-tests.sh
git config core.hooksPath .githooks

echo "Configured git hooks path to .githooks"
echo "Commits will now run automated tests before creating a commit."
