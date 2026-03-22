---
name: decision-pack
description: 当需要把分散讨论收敛成 Founder 可拍板的最终决策包时使用。
disable-model-invocation: false
allowed-tools: Read, Glob, Grep, Bash, WebSearch, WebFetch
---

将当前讨论收敛为一个 decision pack。

步骤：

1. 阅读 [../../../docs/templates/decision-pack.md](../../../docs/templates/decision-pack.md)。
2. 阅读 [../../../docs/workflows/volatile-research-default.md](../../../docs/workflows/volatile-research-default.md)。
3. 从 `workspace/briefs/`、`workspace/research/sources/`、`workspace/status/snapshots/` 以及当前部门 `workspace/` 中提取事实。
4. 强制包含 `Dissent` 与 `Tradeoffs`。
5. 对 `volatile` 外部主张，没有 linked research dispatch、fresh source note 或明确 URL 时，不得包装成正式结论。
6. 如果证据不足，明确写出“当前不应拍板”的理由。
7. Founder-facing 决策包写入 `workspace/decisions/log/`；部门内部决策包写入本部门 `workspace/outputs/`。

附加资源：

- [../../../docs/workflows/decision-workflow.md](../../../docs/workflows/decision-workflow.md)
- [../../../docs/workflows/agile-runnable-demo-policy.md](../../../docs/workflows/agile-runnable-demo-policy.md)
