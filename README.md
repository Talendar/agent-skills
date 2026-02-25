# AI Agent Skills for Claude, Codex, Copilot & More

This repository contains a collection of AI agent skills compatible with agents like Claude, Codex, Copilot, and others that support the [Agent Skills specification](https://agentskills.io/specification).


## Skills Catalog

### GitHub Pull Request Review

This skill reviews GitHub PRs by:

1. Fetching PR metadata, diff, linked issues, comments, and CI status
2. Reading repo conventions (CONTRIBUTING.md, linter configs, CI workflows)
3. Analyzing code changes for bugs, security risks, style issues, and goal alignment
4. Running available lint, typecheck, and test commands
5. Producing a structured report with a prioritized verdict (approve/request changes)
6. Optionally posting the review directly on the PR

Requires **`gh` CLI** installed and authenticated (`gh auth login`).

Example usage: say "Review PR #123" to your AI agent.

The skill will guide the agent through a structured review process and produce a detailed report.


## Installation

### Option 1: Install Specific Skills (Recommended)

```bash
npx skills add talendar/agent-skills@github-pull-request-review
```

### Option 2: Install All Skills

```bash
npx skills add talendar/agent-skills
```


## Developer Setup

Configure git to run automated tests before each commit:

```bash
bash scripts/setup-git-hooks.sh
```

Run tests manually (same entrypoint used by hooks and CI):

```bash
bash scripts/run-tests.sh
```
