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
check_file "docs/templates/daily-department-report.md"
check_file "docs/templates/department-retro.md"
check_file "docs/templates/process-audit.md"
check_file "docs/templates/frontier-scan.md"
check_file "docs/templates/governance-surface-audit.md"
check_file "docs/templates/company-daily-digest.md"
check_file "docs/templates/governance-meeting-brief.md"
check_file "docs/templates/meeting-minutes.md"
check_file "docs/templates/improvement-plan.md"
check_file "docs/templates/vision-meeting-brief.md"
check_file "docs/templates/requirements-meeting-brief.md"
check_file "docs/templates/brainstorming-notes.md"
check_file "workspace/decisions/log/README.md"
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
check_file ".codex/agents/compounding-engineering.toml"
check_file ".claude/commands/daily-digest.md"
check_file ".claude/commands/meeting.md"
check_file ".claude/commands/os-audit.md"
check_file ".claude/commands/retro.md"
check_exec ".claude/hooks/block-dangerous-bash.sh"
check_exec "scripts/new_decision.sh"
check_exec "scripts/new_research.sh"
check_exec "scripts/new_checkpoint.sh"
check_exec "scripts/new_intake.sh"
check_exec "scripts/new_daily_report.sh"
check_exec "scripts/new_retro.sh"
check_exec "scripts/new_worktree.sh"
check_exec "scripts/validate_workspace.sh"

if [ "$ok" -eq 1 ]; then
  [ "$quiet" = "--quiet" ] || echo "workspace baseline: ok"
  exit 0
fi

exit 1
