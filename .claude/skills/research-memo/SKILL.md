---
name: research-memo
description: 当需要把一个模糊问题变成结构化研究 memo，并保留证据与反证时使用。
disable-model-invocation: false
allowed-tools: Read, Glob, Grep, Bash, WebSearch, WebFetch
---

生成 research memo。

步骤：

1. 阅读 [../../../docs/templates/research-memo.md](../../../docs/templates/research-memo.md)。
2. 阅读 [../../../docs/workflows/volatile-research-default.md](../../../docs/workflows/volatile-research-default.md)。
3. 明确问题、范围、主要来源、最强证据、最强反证、未知数。
4. 对 `volatile` 议题，先执行 `research-dispatch` workflow，再做外部检索并形成 source note 或至少留下带访问日期的 URL。
5. 如果来源质量不足，优先指出来源问题，而不是硬给结论。
6. 如果你在部门上下文，输出写入当前部门 `workspace/memos/`；否则写入 `workspace/research/sources/`。
