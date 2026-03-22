---
name: research-memo
description: 当需要把一个模糊问题变成结构化研究 memo，并保留证据与反证时使用。
disable-model-invocation: false
allowed-tools: Read, Glob, Grep, Bash
---

生成 research memo。

步骤：

1. 阅读 [../../../docs/templates/research-memo.md](../../../docs/templates/research-memo.md)。
2. 明确问题、范围、主要来源、最强证据、最强反证、未知数。
3. 如果来源质量不足，优先指出来源问题，而不是硬给结论。
4. 如果你在部门上下文，输出写入当前部门 `workspace/memos/`；否则写入 `workspace/research/sources/`。
