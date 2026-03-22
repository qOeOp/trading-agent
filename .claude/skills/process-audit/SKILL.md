---
name: process-audit
description: 当需要审阅各部门日报、retro、checkpoint 并提出流程优化建议时使用。
disable-model-invocation: false
allowed-tools: Read, Glob, Grep, Bash
---

执行 process audit。

步骤：

1. 阅读 [../../../docs/templates/process-audit.md](../../../docs/templates/process-audit.md)。
2. 汇总各部门报告、checkpoint 和 retro。
3. 只关注重复摩擦、handoff 失败、流程热点和制度缺口。
4. 输出写入 `departments/learning-evolution/workspace/outputs/` 或公司级决策提案。
