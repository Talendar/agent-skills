#!/usr/bin/env bash
set -euo pipefail

# Canonical test entrypoint for local hooks and CI.
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

bash skills/github-pull-request-review/tests/run-tests.sh
