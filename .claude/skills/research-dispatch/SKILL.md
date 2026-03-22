---
name: research-dispatch
description: 当内部讨论触碰 volatile 外部议题时，先派发 research owner 和证据要求，而不是直接闭门讨论。
disable-model-invocation: false
allowed-tools: Read, Glob, Grep, Bash, WebSearch, WebFetch
---

执行 internal research dispatch。

步骤：

1. 阅读 [../../../docs/workflows/internal-research-routing.md](../../../docs/workflows/internal-research-routing.md)。
2. 阅读 [../../../docs/workflows/volatile-research-default.md](../../../docs/workflows/volatile-research-default.md)。
3. 阅读 [../../../docs/templates/research-dispatch.md](../../../docs/templates/research-dispatch.md)。
4. 判断当前议题是否 `volatile-by-default`。
5. 指定 `research owner`、freshness window、source types 和 downstream consumer。
6. 生成一个 dispatch artifact，写入 `workspace/research/dispatches/`。
7. 如果当前不具备 fresh external evidence，明确标记 `blocked` 或 `open`，不得伪装成正式结论。
