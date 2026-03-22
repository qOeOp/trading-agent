#!/usr/bin/env python3
import json
import re
import sys


def main() -> int:
    try:
        payload = json.load(sys.stdin)
    except Exception:
        return 0

    prompt = payload.get("prompt", "")
    text = prompt.lower()

    if "internal-only" in text or "仅内部" in text:
        return 0

    volatile_patterns = [
        r"\bbtc\b",
        r"\beth\b",
        r"crypto",
        r"行情",
        r"市场",
        r"新闻",
        r"宏观",
        r"价格",
        r"投资",
        r"交易",
        r"latest",
        r"recent",
        r"today",
        r"最新",
        r"最近",
        r"前沿",
        r"best practice",
        r"claude code",
        r"\bcodex\b",
        r"\bmcp\b",
        r"\bhook\b",
        r"\bskills?\b",
        r"\brules?\b",
        r"\bplugins?\b",
        r"开源仓库",
        r"社区",
        r"博客",
        r"官方文档",
    ]

    if not any(re.search(pattern, text) for pattern in volatile_patterns):
        return 0

    additional_context = (
        "This prompt appears to depend on volatile external information. "
        "Before reasoning or answering, gather fresh external sources using web search "
        "or official docs and create/reference source notes under workspace/research/sources/. "
        "Do not rely on repository memory alone. "
        "For any resulting artifact, set Verification mode to web-verified or mixed unless the work is explicitly internal-only."
    )

    print(
        json.dumps(
            {
                "hookSpecificOutput": {
                    "hookEventName": "UserPromptSubmit",
                    "additionalContext": additional_context,
                }
            },
            ensure_ascii=False,
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
