#!/usr/bin/env python3
import json
import sys


def main() -> int:
    try:
        payload = json.load(sys.stdin)
    except json.JSONDecodeError:
        return 0

    agent_type = payload.get("agent_type", "subagent")
    message = (
        f"Subagent '{agent_type}' must follow the project's volatile research default. "
        "If the task touches market/news/realtime prices/tooling capabilities/community best practices "
        "or other volatile external facts, do not rely only on internal memory. "
        "First gather fresh external sources with WebSearch/WebFetch when available, or require current "
        "source-note support / official URLs before reaching a formal conclusion. "
        "If fresh evidence is missing, mark the work exploratory or blocked by freshness."
    )

    output = {
        "hookSpecificOutput": {
            "hookEventName": "SubagentStart",
            "additionalContext": message,
        }
    }
    json.dump(output, sys.stdout)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
