#!/bin/sh
set -eu

quiet="${1:-}"
ok=1

check_file() {
  if [ ! -e "$1" ]; then
    ok=0
    [ "$quiet" = "--quiet" ] || echo "missing: $1"
  fi
}

check_exec() {
  if [ ! -x "$1" ]; then
    ok=0
    [ "$quiet" = "--quiet" ] || echo "not executable: $1"
  fi
}

check_contains() {
  file="$1"
  pattern="$2"
  if ! grep -Fq "$pattern" "$file"; then
    ok=0
    [ "$quiet" = "--quiet" ] || echo "missing pattern '$pattern' in $file"
  fi
}

check_file "README.md"
check_file "CLAUDE.md"
check_file "AGENTS.md"
check_file "departments/README.md"
check_file "departments/market-intelligence/charter.md"
check_file "departments/strategy-research/charter.md"
check_file "departments/position-operations/charter.md"
check_file "departments/risk-office/charter.md"
check_file "departments/learning-evolution/charter.md"
check_file "docs/organization/org-chart.md"
check_file "docs/organization/department-map.md"
check_file "docs/workflows/decision-workflow.md"
check_file "docs/workflows/founder-intake-evolution-loop.md"
check_file "docs/workflows/worktree-parallelism.md"
check_file "docs/workflows/agile-runnable-demo-policy.md"
check_file "docs/organization/compounding-engineering-lead.md"
check_file "docs/workflows/process-compounding-cadence.md"
check_file "docs/workflows/founder-governance-meeting-loop.md"
check_file "docs/workflows/founder-meeting-taxonomy.md"
check_file "docs/workflows/governance-surface-audit.md"
check_file "docs/workflows/company-bootstrap-loop.md"
check_file "docs/workflows/volatile-research-default.md"
check_file "docs/workflows/internal-research-routing.md"
check_file "docs/templates/daily-department-report.md"
check_file "docs/templates/department-retro.md"
check_file "docs/templates/department-bootstrap-brief.md"
check_file "docs/templates/process-audit.md"
check_file "docs/templates/frontier-scan.md"
check_file "docs/templates/governance-surface-audit.md"
check_file "docs/templates/company-daily-digest.md"
check_file "docs/templates/governance-meeting-brief.md"
check_file "docs/templates/acceptance-review-brief.md"
check_file "docs/templates/meeting-minutes.md"
check_file "docs/templates/improvement-plan.md"
check_file "docs/templates/source-note.md"
check_file "docs/templates/research-dispatch.md"
check_file "docs/templates/vision-meeting-brief.md"
check_file "docs/templates/requirements-meeting-brief.md"
check_file "docs/templates/brainstorming-notes.md"
check_file "workspace/decisions/log/README.md"
check_file "workspace/research/dispatches/README.md"
check_file "workspace/status/digests/README.md"
check_file "workspace/status/process-audits/README.md"
check_file "workspace/status/snapshots/README.md"
check_file "workspace/research/sources/README.md"
check_file "workspace/intake/inbox/README.md"
check_file "departments/market-intelligence/workspace/reports/daily/README.md"
check_file "departments/strategy-research/workspace/reports/daily/README.md"
check_file "departments/position-operations/workspace/reports/daily/README.md"
check_file "departments/risk-office/workspace/reports/daily/README.md"
check_file "departments/learning-evolution/workspace/reports/daily/README.md"
check_file ".claude/settings.json"
check_file ".codex/config.toml"
check_file ".claude/agents/compounding-engineering-lead.md"
check_file ".claude/agents/market-intelligence-lead.md"
check_file ".claude/agents/strategy-research-lead.md"
check_file ".claude/agents/position-operations-lead.md"
check_file ".claude/agents/risk-office-lead.md"
check_file ".claude/agents/learning-evolution-lead.md"
check_file ".codex/agents/compounding-engineering.toml"
check_file ".codex/agents/market-intelligence.toml"
check_file ".codex/agents/strategy-research.toml"
check_file ".codex/agents/position-operations.toml"
check_file ".codex/agents/risk-office.toml"
check_file ".codex/agents/learning-evolution.toml"
check_file ".claude/commands/daily-digest.md"
check_file ".claude/commands/bootstrap-company.md"
check_file ".claude/commands/meeting.md"
check_file ".claude/commands/os-audit.md"
check_file ".claude/commands/retro.md"
check_exec ".claude/hooks/block-dangerous-bash.sh"
check_exec ".claude/hooks/volatile-prompt-research.py"
check_exec ".claude/hooks/subagent-volatile-research.py"
check_exec "scripts/new_decision.sh"
check_exec "scripts/new_research.sh"
check_exec "scripts/new_research_dispatch.sh"
check_exec "scripts/new_source_note.sh"
check_exec "scripts/new_checkpoint.sh"
check_exec "scripts/new_intake.sh"
check_exec "scripts/new_daily_report.sh"
check_exec "scripts/new_company_digest.sh"
check_exec "scripts/new_retro.sh"
check_exec "scripts/new_worktree.sh"
check_exec "scripts/enable_git_hooks.sh"
check_exec "scripts/validate_freshness_gate.sh"
check_exec "scripts/validate_workspace.sh"
check_exec ".githooks/pre-commit"
check_exec ".githooks/pre-push"
check_file ".github/workflows/governance-gates.yml"

check_contains ".claude/settings.json" "UserPromptSubmit"
check_contains ".claude/settings.json" "volatile-prompt-research.py"
check_contains ".claude/settings.json" "SubagentStart"
check_contains ".claude/settings.json" "subagent-volatile-research.py"

check_contains ".claude/agents/general-manager.md" "WebSearch"
check_contains ".claude/agents/general-manager.md" "volatile-research-default.md"
check_contains ".claude/agents/compounding-engineering-lead.md" "WebSearch"
check_contains ".claude/agents/compounding-engineering-lead.md" "volatile-research-default.md"
check_contains ".claude/agents/market-intelligence-lead.md" "WebSearch"
check_contains ".claude/agents/market-intelligence-lead.md" "volatile-research-default.md"
check_contains ".claude/agents/strategy-research-lead.md" "WebSearch"
check_contains ".claude/agents/strategy-research-lead.md" "volatile-research-default.md"
check_contains ".claude/agents/position-operations-lead.md" "WebSearch"
check_contains ".claude/agents/position-operations-lead.md" "volatile-research-default.md"
check_contains ".claude/agents/risk-office-lead.md" "WebSearch"
check_contains ".claude/agents/risk-office-lead.md" "volatile-research-default.md"
check_contains ".claude/agents/learning-evolution-lead.md" "WebSearch"
check_contains ".claude/agents/learning-evolution-lead.md" "volatile-research-default.md"
check_contains ".claude/agents/product-thesis-lead.md" "WebSearch"
check_contains ".claude/agents/product-thesis-lead.md" "volatile-research-default.md"
check_contains ".claude/agents/risk-quality-lead.md" "WebSearch"
check_contains ".claude/agents/risk-quality-lead.md" "volatile-research-default.md"
check_contains ".claude/agents/workflow-automation-lead.md" "WebSearch"
check_contains ".claude/agents/workflow-automation-lead.md" "volatile-research-default.md"

check_contains ".claude/skills/research-memo/SKILL.md" "WebSearch"
check_contains ".claude/skills/research-memo/SKILL.md" "volatile-research-default.md"
check_contains ".claude/skills/research-dispatch/SKILL.md" "internal-research-routing.md"
check_contains ".claude/skills/research-dispatch/SKILL.md" "workspace/research/dispatches/"
check_contains ".claude/skills/decision-pack/SKILL.md" "WebSearch"
check_contains ".claude/skills/decision-pack/SKILL.md" "volatile-research-default.md"
check_contains ".claude/skills/brainstorming-session/SKILL.md" "WebSearch"
check_contains ".claude/skills/brainstorming-session/SKILL.md" "volatile-research-default.md"
check_contains ".claude/skills/requirements-meeting/SKILL.md" "WebSearch"
check_contains ".claude/skills/requirements-meeting/SKILL.md" "volatile-research-default.md"
check_contains ".claude/skills/vision-meeting/SKILL.md" "WebSearch"
check_contains ".claude/skills/vision-meeting/SKILL.md" "volatile-research-default.md"
check_contains ".claude/skills/governance-meeting/SKILL.md" "WebSearch"
check_contains ".claude/skills/governance-meeting/SKILL.md" "volatile-research-default.md"

check_contains ".codex/agents/general-manager.toml" "volatile research default"
check_contains ".codex/agents/general-manager.toml" "research dispatch"
check_contains ".codex/agents/compounding-engineering.toml" "source notes"
check_contains ".codex/agents/market-intelligence.toml" "source notes"
check_contains ".codex/agents/strategy-research.toml" "source notes"
check_contains ".codex/agents/position-operations.toml" "source-note references"
check_contains ".codex/agents/risk-office.toml" "volatile external evidence"
check_contains ".codex/agents/learning-evolution.toml" "externally triangulated"
check_contains ".codex/agents/product-thesis.toml" "fresh external sources"
check_contains ".codex/agents/risk-quality.toml" "fresh external evidence"
check_contains ".codex/agents/workflow-automation.toml" "fresh official docs"
check_contains ".codex/agents/knowledge-memory.toml" "web-verified"

check_contains "docs/templates/research-memo.md" "Research dispatch"
check_contains "docs/templates/decision-pack.md" "Research dispatch"

if git rev-parse --git-dir >/dev/null 2>&1; then
  hooks_path=$(git config --get core.hooksPath || true)
  if [ "$hooks_path" != ".githooks" ]; then
    ok=0
    [ "$quiet" = "--quiet" ] || echo "git core.hooksPath is not set to .githooks"
  fi
fi

if [ "$ok" -eq 1 ]; then
  [ "$quiet" = "--quiet" ] || echo "workspace baseline: ok"
  exit 0
fi

exit 1
