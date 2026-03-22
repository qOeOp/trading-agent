---
name: memory-checkpoint
description: 当一轮工作完成、Founder 已拍板或需要防止失忆时，用于以 append-only 方式回写决策和状态快照。
disable-model-invocation: false
allowed-tools: Read, Glob, Grep, Bash
---

执行记忆回写。

步骤：

1. 阅读 [../../../docs/memory/memory-architecture.md](../../../docs/memory/memory-architecture.md)。
2. 找出本轮新增的结论、风险、未决问题。
3. 新增：
   - `workspace/decisions/log/` 下的一条 entry
   - `workspace/status/snapshots/` 下的一条 snapshot
4. 如果存在旧结论被推翻，明确写出变更原因。
