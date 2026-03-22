#!/bin/sh
set -eu

payload=$(cat)
command=$(printf '%s' "$payload" | tr '\n' ' ' | sed -n 's/.*"command"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p')

case "$command" in
  *"rm -rf"*|*"git reset --hard"*|*"git checkout --"*|*":(){:|:&};:"*)
    printf '%s\n' '{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"deny","permissionDecisionReason":"Blocked by project policy. Use documented workspace scripts and non-destructive Git commands instead."}}'
    ;;
  *)
    printf '%s\n' '{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"allow","permissionDecisionReason":"Command allowed by baseline policy."}}'
    ;;
esac
