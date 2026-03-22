---
name: os-audit
description: 当需要审计公司治理表面，防止文档膨胀并提升流程约束强度时使用。
disable-model-invocation: false
allowed-tools: Read, Glob, Grep, Bash
---

执行 governance surface audit。

步骤：

1. 阅读 [../../../docs/workflows/governance-surface-audit.md](../../../docs/workflows/governance-surface-audit.md)。
2. 阅读 [../../../docs/templates/governance-surface-audit.md](../../../docs/templates/governance-surface-audit.md)。
3. 审查 docs、skills、commands、agents、hooks、rules、scripts。
4. 输出 keep / compress / merge / archive / delete / promote 建议。
5. 特别标记 freshness failures 和应该升级成硬约束的流程。
