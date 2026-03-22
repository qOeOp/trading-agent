#!/bin/sh
set -eu

mode="${1:-}"
tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT

append_file() {
  file="$1"
  [ -n "$file" ] || return 0
  printf '%s\n' "$file" >>"$tmp"
}

collect_all_files() {
  find workspace/research/sources workspace/decisions/log workspace/briefs departments \
    -type f -name '*.md' 2>/dev/null | sort
}

collect_staged_files() {
  git diff --cached --name-only --diff-filter=ACMR
}

is_governed_artifact() {
  case "$1" in
    workspace/research/sources/*.md|workspace/decisions/log/*.md|workspace/briefs/*.md|departments/*/workspace/memos/*.md|departments/*/workspace/outputs/*.md)
      case "$(basename "$1")" in
        README.md)
          return 1
          ;;
      esac
      return 0
      ;;
    *)
      return 1
      ;;
  esac
}

require_field() {
  file="$1"
  label="$2"

  if ! awk -v label="$label" '
    BEGIN {
      prefix = "- " label ":"
      found = 0
      waiting = 0
    }
    index($0, prefix) == 1 {
      value = substr($0, length(prefix) + 1)
      gsub(/^[[:space:]]+|[[:space:]]+$/, "", value)
      if (value != "") {
        found = 1
        exit 0
      }
      waiting = 1
      next
    }
    waiting == 1 {
      if ($0 ~ /^-[[:space:]]/) {
        exit 1
      }
      if ($0 ~ /^[[:space:]]*$/) {
        next
      }
      found = 1
      exit 0
    }
    END {
      if (found == 1) {
        exit 0
      }
      exit 1
    }
  ' "$file"; then
    printf '%s\n' "freshness gate failed: $file missing non-empty field '${label}'" >&2
    return 1
  fi

  return 0
}

validate_file() {
  file="$1"
  ok=0

  heading=$(sed -n '1p' "$file" | tr -d '\r')

  case "$heading" in
    "# Research Memo")
      require_field "$file" "Verification date" || ok=1
      require_field "$file" "Freshness level" || ok=1
      require_field "$file" "Sources reviewed" || ok=1
      require_field "$file" "Conflicting sources" || ok=1
      require_field "$file" "Earliest-source check" || ok=1
      ;;
    "# Decision Pack")
      require_field "$file" "Verification date" || ok=1
      require_field "$file" "Sources reviewed" || ok=1
      require_field "$file" "Freshness caveats" || ok=1
      ;;
    "# Vision Meeting Brief"|"# Requirements Meeting Brief"|"# Governance Meeting Brief")
      require_field "$file" "Verification date" || ok=1
      require_field "$file" "Sources reviewed" || ok=1
      require_field "$file" "What remains unverified" || ok=1
      ;;
    "# Brainstorming Notes")
      require_field "$file" "External claims needing freshness check" || ok=1
      ;;
    *)
      return 0
      ;;
  esac

  return "$ok"
}

case "$mode" in
  --staged)
    collect_staged_files >"$tmp"
    shift
    ;;
  "")
    collect_all_files >"$tmp"
    ;;
  *)
    : >"$tmp"
    for file in "$@"; do
      append_file "$file"
    done
    ;;
esac

checked=0
failed=0

while IFS= read -r file; do
  [ -n "$file" ] || continue
  [ -f "$file" ] || continue
  is_governed_artifact "$file" || continue
  checked=$((checked + 1))
  if ! validate_file "$file"; then
    failed=1
  fi
done <"$tmp"

if [ "$failed" -eq 1 ]; then
  exit 1
fi

printf '%s\n' "freshness gate: ok (${checked} files checked)"
